<div class="w-full max-w-md">

    <div class="rounded-3xl border border-slate-200 bg-white p-8 shadow-2xl">

        <!-- Header -->
        <div class="text-center">

            <div class="mx-auto mb-5 flex h-16 w-16 items-center justify-center rounded-2xl bg-blue-100">

                <svg xmlns="http://www.w3.org/2000/svg"
                     class="h-8 w-8 text-blue-700"
                     fill="none"
                     viewBox="0 0 24 24"
                     stroke="currentColor">

                    <path stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="2"
                          d="M5.121 17.804A9 9 0 1118.364 4.56"/>

                </svg>

            </div>

            <h2 class="text-3xl font-bold text-slate-800">
                Welcome Back
            </h2>

            <p class="mt-2 text-slate-500">
                Sign in to continue to your account.
            </p>

        </div>

        <!-- Form -->
        <form
            action="{{ route('login.action') }}"
            method="POST"
            class="mt-8 space-y-6">

            @csrf

            {{-- Email --}}
            <x-auth.input
                label="Email Address"
                name="email"
                type="email"
                icon="mdi:email-outline"
                :value="old('email')"
                required
            />

            {{-- Password --}}
            <x-auth.password-input
                label="Password"
                name="password"
                required
            />

            {{-- Captcha --}}
            <x-auth.captcha />

            <div class="flex items-center justify-between">

                <label class="flex items-center gap-2">

                    <input
                        type="checkbox"
                        name="remember_me"
                        class="rounded border-slate-300 text-blue-600">

                    <span class="text-sm text-slate-600">
                        Remember Me
                    </span>

                </label>

                <a
                    href="{{ route('password.request') }}"
                    class="text-sm font-medium text-blue-600 hover:text-blue-700">

                    Forgot Password?

                </a>

            </div>

            <button
                class="w-full rounded-xl bg-gradient-to-r from-blue-600 to-indigo-700 py-3 font-semibold text-white shadow-lg transition hover:-translate-y-0.5 hover:shadow-xl">

                Sign In

            </button>

        </form>

        <!-- Footer -->

        <div class="mt-8 border-t pt-6 text-center">

            <p class="text-sm text-slate-500">

                🔒 Your connection is encrypted and secure.

            </p>

        </div>

    </div>

</div>