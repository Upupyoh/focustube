@echo off
echo ===================================================
echo       FocusTube - 1-Click Release APK Builder
echo ===================================================
echo.

where flutter >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Flutter SDK পাওয়া যায়নি!
    echo দয়া করে আপনার কম্পিউটারে Flutter ইনস্টল করুন অথবা
    echo GitHub Actions এর মাধ্যমে অটোমেটিক ক্লাউড থেকে APK বিল্ড করে নিন।
    echo.
    pause
    exit /b
)

echo [1/3] ডিপেন্ডেন্সি ডাউনলোড করা হচ্ছে (flutter pub get)...
call flutter pub get

echo.
echo [2/3] FocusTube রিলিজ APK কম্পাইল করা হচ্ছে...
call flutter build apk --release

echo.
echo [3/3] সম্পন্ন!
echo আপনার ফোনে ইনস্টল করার জন্য APK ফাইলটি এখানে তৈরি হয়েছে:
echo build\app\outputs\flutter-apk\app-release.apk
echo ===================================================
pause
