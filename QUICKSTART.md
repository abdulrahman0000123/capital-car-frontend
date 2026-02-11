# 🚀 دليل التشغيل السريع - Frontend

## خطوات البدء السريع

### 1. تثبيت Flutter (إذا لم يكن مثبتاً)
```bash
# تحقق من التثبيت الحالي
flutter doctor

# إذا ظهرت مشاكل، اتبع التعليمات لحلها
```

### 2. الانتقال لمجلد المشروع
```bash
cd "d:\Mashwar App\Docs\V4\frontend"
```

### 3. تثبيت الحزم
```bash
flutter pub get
```

### 4. توليد الملفات (مهم جداً!)
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```
هذا الأمر سيولد ملفات:
- `.freezed.dart` (للـ Models)
- `.g.dart` (للـ JSON Serialization)

### 5. إضافة الخطوط (خطوة واحدة فقط)

قم بتحميل خط Cairo من Google Fonts وضعه في:
```
frontend/
  assets/
    fonts/
      Cairo-Regular.ttf
      Cairo-Bold.ttf
      Cairo-SemiBold.ttf
      Cairo-Medium.ttf
```

رابط التحميل المباشر: https://fonts.google.com/specimen/Cairo

أو استخدم الأمر التالي (إذا كان wget متوفراً):
```bash
mkdir -p assets/fonts
# ثم حمّل الخطوط يدوياً من الموقع
```

### 6. إنشاء مجلدات الأصول
```bash
mkdir assets\images assets\icons assets\lottie
```

### 7. تشغيل التطبيق
```bash
# للتشغيل على محاكي/جهاز متصل
flutter run

# أو اختر جهاز محدد
flutter devices
flutter run -d <device-id>
```

---

## 🎮 للتجربة السريعة

### بيانات تسجيل الدخول
- اسم المستخدم: **أي شيء** (مثال: admin)
- كلمة المرور: **أي شيء** (مثال: 123456)

> 💡 حالياً التطبيق يعمل بـ Mock Data بدون Backend

### الشاشات المتاحة
- ✅ Splash Screen → Login Screen
- ✅ Passenger Dashboard (الراكب)
- ✅ Admin Dashboard (الأدمن)
- ✅ جميع الشاشات الفرعية

---

## 🔧 حل المشاكل الشائعة

### مشكلة: Build_runner لا يعمل
```bash
# حذف الملفات المولدة القديمة
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

### مشكلة: الخطوط لا تظهر
- تأكد من تحميل خطوط Cairo ووضعها في `assets/fonts/`
- تأكد من تشغيل `flutter pub get` بعد إضافة الخطوط

### مشكلة: Firebase errors
- Firebase غير مطلوب للتشغيل الحالي
- يمكنك تجاهل الأخطاء المتعلقة بـ Firebase حالياً

### مشكلة: GoRouter errors
- تأكد من تشغيل `build_runner`
- تأكد من عدم وجود أخطاء في ملفات الـ Providers

---

## 📱 اختبار المزايا

### للراكب (Passenger)
1. سجل الدخول بأي بيانات
2. ستظهر لك Dashboard الراكب
3. جرب التنقل بين التبويبات:
   - 🏠 الرئيسية
   - 📦 الصندوق
   - 📅 الأسابيع
   - 👤 حسابي
   - ✋ الحضور (تحت التطوير)

### للأدمن (Admin)
> حالياً لا يوجد تمييز بين الراكب والأدمن في Mock Data

للوصول لشاشات الأدمن يدوياً:
- عدّل `initial_location` في Router مؤقتاً
- أو استخدم Drawer للتنقل (إذا تم تطبيقه)

---

## 📝 ملاحظات مهمة

1. **Mock Data**: جميع البيانات حالياً مزيفة للتطوير
2. **Backend**: لا يوجد اتصال بـ Backend بعد
3. **Real-time**: التحديثات اللحظية غير مفعّلة
4. **Firebase**: الإشعارات Push غير مفعّلة

---

## 🎯 الخطوة التالية

بعد التأكد من عمل التطبيق:
1. راجع ملف `TODO.md` للمهام المتبقية
2. ابدأ بـ **Backend Integration**
3. راجع ملف `SETUP.md` للتفاصيل الكاملة

---

## 📞 للدعم

راجع:
- `README.md` - نظرة عامة على المشروع
- `SETUP.md` - دليل الإعداد الكامل
- `TODO.md` - قائمة المهام المتبقية

---

✨ **مبروك! مشروعك جاهز للتطوير** ✨
