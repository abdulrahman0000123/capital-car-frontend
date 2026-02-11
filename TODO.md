# 📝 قائمة المهام المتبقية - Capital Car Frontend

## 🔴 أولوية عالية (High Priority)

### Backend Integration
- [ ] إنشاء `ApiClient` مع Dio + Interceptors
- [ ] تطبيق Auth API (Login, Logout, Refresh Token)
- [ ] تطبيق Passenger API
- [ ] تطبيق Week API
- [ ] تطبيق Payment API
- [ ] تطبيق Fund API
- [ ] تطبيق Notification API
- [ ] إنشاء Repositories لكل Feature

### Real-time Features
- [ ] إعداد SignalR Service
- [ ] الاتصال بـ Notification Hub
- [ ] معالجة Real-time Events
- [ ] تحديث UI عند استقبال Events

### Firebase Setup
- [ ] إنشاء مشروع Firebase
- [ ] إضافة التطبيق (Android + iOS)
- [ ] إعداد Cloud Messaging
- [ ] تطبيق Notification Service
- [ ] معالجة Background Notifications
- [ ] معالجة Foreground Notifications

## 🟡 أولوية متوسطة (Medium Priority)

### State Management
- [ ] إنشاء Week Provider
- [ ] إنشاء Passenger Provider
- [ ] إنشاء Fund Provider
- [ ] إنشاء Payment Provider
- [ ] إنشاء Notification Provider
- [ ] تحديث Auth Provider بـ API حقيقي

### UI Enhancements
- [ ] إضافة Loading Skeletons (Shimmer)
- [ ] إضافة Error States مخصصة
- [ ] إضافة Empty States مخصصة
- [ ] تحسين Animations
- [ ] إضافة Lottie Animations

### Forms & Validation
- [ ] تطبيق Form Validators شامل
- [ ] إضافة Password Strength Indicator
- [ ] تحسين Error Messages
- [ ] إضافة Success Messages

## 🟢 أولوية منخفضة (Low Priority)

### Assets
- [ ] تحميل وإضافة خط Cairo
- [ ] إنشاء App Icon
- [ ] إنشاء Splash Screen Asset
- [ ] إضافة صور مطلوبة
- [ ] إضافة Lottie Files

### Localization
- [ ] إنشاء ARB files (ar, en)
- [ ] تحويل جميع النصوص للملفات
- [ ] اختبار التبديل بين اللغات
- [ ] RTL Testing شامل

### Testing
- [ ] كتابة Unit Tests للـ Providers
- [ ] كتابة Unit Tests للـ Repositories
- [ ] كتابة Widget Tests للشاشات
- [ ] Integration Tests

### Performance
- [ ] Lazy Loading للقوائم الطويلة
- [ ] Image Caching Optimization
- [ ] Memory Leak Testing
- [ ] Performance Profiling

### Build & Deploy
- [ ] إعداد flavors (dev, staging, production)
- [ ] إعداد CI/CD Pipeline
- [ ] Android Release Build
- [ ] iOS Release Build
- [ ] App Store Submission
- [ ] Google Play Submission

## 📋 Features Under Development

### Attendance System (إثبات الحضور)
هذه الميزة مجدولة للإصدار القادم:
- [ ] تصميم UI للحضور
- [ ] تطبيق Backend API
- [ ] نظام الـ QR Code (اختياري)
- [ ] نظام GPS Check-in (اختياري)
- [ ] تاريخ الحضور

## ✅ Done
- [x] إنشاء هيكل المشروع
- [x] إعداد pubspec.yaml
- [x] Core Layer (Constants, Theme, Router)
- [x] Data Models
- [x] Theme System (Light/Dark)
- [x] Locale Provider (AR/EN)
- [x] شاشات المصادقة
- [x] شاشات الراكب (جميعها)
- [x] شاشات الأدمن (جميعها)
- [x] Bottom Navigation
- [x] Notifications Screen
- [x] Widgets مشتركة

---

## 📝 ملاحظات

### للبدء بالتطوير:
1. ابدأ بـ Backend Integration (أولوية عالية)
2. ثم Real-time Features
3. ثم Firebase Setup
4. ثم تحسينات UI وباقي المهام

### للاختبار السريع:
- حالياً التطبيق يعمل بـ Mock Data
- يمكنك اختبار جميع الشاشات والـ Navigation
- تسجيل الدخول يقبل أي username/password

### عند الانتهاء من Backend:
- حدّث Auth Provider
- حدّث جميع الشاشات باستخدام Providers
- أزل Mock Data
- اختبر التطبيق بالكامل

---

تاريخ آخر تحديث: 11 فبراير 2026
