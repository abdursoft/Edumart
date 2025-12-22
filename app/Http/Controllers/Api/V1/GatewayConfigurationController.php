<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\GatewayConfiguration;
use Illuminate\Http\Request;

class GatewayConfigurationController extends Controller
{
    // List all gateway configurations
    public function index()
    {
        return GatewayConfiguration::orderBy('created_at', 'desc')->get();
    }

    // Store a new gateway configuration
    public function store(Request $request)
    {
        $request->validate([
            'name'   => 'required|string|max:255',
            'type'   => 'required|in:payment,sms',
            'config' => 'required|array',
            'status' => 'nullable|in:active,inactive',
            'notes'  => 'nullable|string',
        ]);

        $gateway = GatewayConfiguration::create($request->all());

        return response()->json($gateway, 201);
    }

    // Show a single gateway configuration
    public function show(GatewayConfiguration $gatewayConfiguration)
    {
        return $gatewayConfiguration;
    }

    // Update a gateway configuration
    public function update(Request $request, GatewayConfiguration $gatewayConfiguration)
    {
        $request->validate([
            'name'   => 'sometimes|required|string|max:255',
            'type'   => 'sometimes|required|in:payment,sms',
            'config' => 'nullable|array',
            'status' => 'nullable|in:active,inactive',
            'notes'  => 'nullable|string',
        ]);

        $gatewayConfiguration->update($request->all());

        return response()->json($gatewayConfiguration);
    }

    // Delete a gateway configuration
    public function destroy(GatewayConfiguration $gatewayConfiguration)
    {
        $gatewayConfiguration->delete();

        return response()->json(null, 204);
    }
}
