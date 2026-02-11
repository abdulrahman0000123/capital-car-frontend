# 🗂️ ملفات و مجلدات يجب إضافتها يدوياً

## 📁 المجلدات المطلوبة

قم بإنشاء هذه المجلدات في مجلد `frontend/`:

```
frontend/
  assets/
    images/     (صور التطبيق)
    icons/      (أيقونات مخصصة)
    lottie/     (ملفات Lottie للـ Animations)
    fonts/      (الخطوط - مهم!)
```

### الأمر السريع (Windows):
```bash
cd "d:\Mashwar App\Docs\V4\frontend"
mkdir assets\images assets\icons assets\lottie assets\fonts
```

---

## 🔤 الخطوط (Fonts) - مهم جداً!

### تحميل خط Cairo

1. **زيارة Google Fonts**:
   https://fonts.google.com/specimen/Cairo

2. **تحميل الخط**:
   - اضغط "Download family"
   - فك ضغط الملف

3. **نسخ الملفات المطلوبة** إلى `assets/fonts/`:
   - `Cairo-Regular.ttf`
   - `Cairo-Bold.ttf`
   - `Cairo-SemiBold.ttf`
   - `Cairo-Medium.ttf`

4. **البنية النهائية**:
```
frontend/
  assets/
    fonts/
      Cairo-Regular.ttf
      Cairo-Bold.ttf
      Cairo-SemiBold.ttf
      Cairo-Medium.ttf
```

---

## 🖼️ App Icon (اختياري حالياً)

### لإنشاء أيقونة التطبيق:

1. **أنشئ صورة 1024x1024 px** (PNG)
2. **ضعها في**: `assets/icon/icon.png`
3. **أضف للـ `pubspec.yaml`**:
```yaml
flutter_icons:
  android: true
  ios: true
  image_path: "assets/icon/icon.png"
```
4. **نفّذ**:
```bash
flutter pub run flutter_launcher_icons:main
```

---

## 🔥 Firebase Configuration (اختياري - للإشعارات)

### Android

1. **إنشاء مشروع Firebase**
2. **تحميل `google-services.json`**
3. **وضعه في**: `android/app/google-services.json`

### iOS

1. **تحميل `GoogleService-Info.plist`**
2. **وضعه في**: `ios/Runner/GoogleService-Info.plist`

---

## 📋 Checklist

قبل تشغيل التطبيق، تأكد من:

- [x] إنشاء مجلدات assets
- [ ] تحميل وإضافة خط Cairo
- [ ] (اختياري) إنشاء App Icon  
- [ ] (اختياري) إضافة Firebase Config

---

## ⚠️ ملاحظة

الخطوات الاختيارية يمكن تأجيلها، لكن:
- **خط Cairo مطلوب** لعرض النصوص العربية بشكل صحيح
- بدون الخط، سيظهر الخط الافتراضي للنظام

---

## 🚀 بعد إضافة الملفات

```bash
# أعد تحميل الحزم
flutter pub get

# نظّف المشروع
flutter clean

# شغّل التطبيق
flutter run
```
