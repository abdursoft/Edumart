<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\GalleryContent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\Image;
use Intervention\Image\ImageManager;

class MediaController extends Controller
{

    public function chunk(Request $request)
    {
        $uploadId = $request->upload_id;
        $chunk    = (int) $request->chunk;
        $total    = (int) $request->total_chunks;
        $filename = $request->filename;

        $tempPath = "chunks/{$uploadId}";
        $chunkFile = $request->file('file');

        // Store chunk
        Storage::disk('local')->put(
            "{$tempPath}/{$chunk}",
            fopen($chunkFile->getRealPath(), 'rb')
        );

        // Detect mime (from first chunk is enough)
        $extension = strtolower(pathinfo($filename, PATHINFO_EXTENSION));

        $imageExts = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'];
        $videoExts = ['mp4', 'webm', 'ogg', 'mov', 'mkv'];

        $isImage = in_array($extension, $imageExts);
        $isVideo = in_array($extension, $videoExts);

        // When last chunk arrives
        if ($chunk === $total) {

            $directory = 'gallery';
            Storage::disk('public')->makeDirectory($directory);

            $baseName = Str::uuid() . '_' . Str::slug(pathinfo($filename, PATHINFO_FILENAME));

            // -----------------------
            // IMAGE → WEBP
            // -----------------------
            if ($isImage) {

                $finalName = "{$baseName}.webp";
                $finalPath = "{$directory}/{$finalName}";

                $tempDir = storage_path("app/{$tempPath}");

                if (!is_dir($tempDir)) {
                    mkdir($tempDir, 0755, true);
                }

                $tempFile = "{$tempDir}/merged";

                // Merge chunks
                $out = fopen($tempFile, 'ab');
                for ($i = 1; $i <= $total; $i++) {
                    fwrite($out, file_get_contents(
                        Storage::disk('local')->path("{$tempPath}/{$i}")
                    ));
                }
                fclose($out);

                // Convert to WEBP
                $manager = new ImageManager(new Driver());
                $manager->read($tempFile)
                    ->toWebp(85)
                    ->save(Storage::disk('public')->path($finalPath));

                unlink($tempFile);
            }

            // -----------------------
            // VIDEO → KEEP ORIGINAL
            // -----------------------
            elseif ($isVideo) {

                $extension = pathinfo($filename, PATHINFO_EXTENSION);
                $finalName = "{$baseName}.{$extension}";
                $finalPath = "{$directory}/{$finalName}";

                $out = fopen(Storage::disk('public')->path($finalPath), 'ab');
                for ($i = 1; $i <= $total; $i++) {
                    fwrite($out, file_get_contents(
                        Storage::disk('local')->path("{$tempPath}/{$i}")
                    ));
                }
                fclose($out);
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Unsupported file type',
                ], 422);
            }

            // Cleanup chunks
            Storage::disk('local')->deleteDirectory($tempPath);

            $dbMime = $isImage ? 'image/webp' : ($isVideo ? "video/{$extension}" : null);

            // Save to DB
            $content = GalleryContent::create([
                'gallery_id' => $request->gallery_id,
                'name'       => $finalName,
                'path'       => $finalPath,
                'token'      => Str::uuid(),
                'mimes'      => $dbMime,
                'storage'    => 'public',
                'status'     => 'Public',
            ]);

            return response()->json([
                'success' => true,
                'id'      => $content->id,
                'path'    => $finalPath,
                'type'    => $isImage ? 'image' : 'video',
            ]);
        }

        return response()->json(['success' => true]);
    }
}
