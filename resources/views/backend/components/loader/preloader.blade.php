<!-- Loader -->
<div
  id="loader"
  class="fixed left-0 top-0 z-[999999] flex h-screen w-screen items-center justify-center bg-white dark:bg-black"
>
  <div
    class="h-16 w-16 animate-spin rounded-full border-4 border-solid border-blue-500 border-t-transparent"
  ></div>
</div>

<style>
  #loader {
    transition: opacity 0.3s ease;
  }
  #loader.hidden {
    opacity: 0;
    pointer-events: none;
  }
</style>


<script>
  document.addEventListener("DOMContentLoaded", () => {
    const loader = document.getElementById("loader");
    const content = document.getElementById("content");

    // simulate a short delay (like loading assets)
    setTimeout(() => {
      loader.classList.add("hidden");
      content?.classList.remove("hidden");
    }, 500); // same 500ms as your Alpine version
  });
</script>
