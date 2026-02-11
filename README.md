# 🚗 سيارة العاصمة | Capital Car App

**الإصدار 3.0**

## 📱 Frontend - Flutter Mobile App

تطبيق موبايل متكامل لإدارة حسابات سيارة نقل ركاب تضم 14 راكب أساسي، مع دعم لضيوف مؤقتين وإدارة الغرامات والمدفوعات الأسبوعية.

## 🎯 نظرة عامة

نظام متكامل يدعم دورين:
- **أدمن**: التحكم الكامل في النظام
- **راكب**: متابعة الحسابات والمدفوعات

### الميزات الرئيسية
- ✅ حساب المبلغ الأسبوعي تلقائياً
- ✅ نظام غرامات ذكي مع صندوق العربية
- ✅ نظام إشعارات لحظي (Real-time)
- ✅ شرح تفصيلي "ليه بدفع المبلغ ده؟"
- ✅ سجل الأسابيع السابقة
- ✅ تحديثات لحظية متزامنة

## 🛠️ Technical Stack

| التقنية | الإصدار |
|---------|---------|
| Framework | Flutter 3.x |
| Language | Dart 3.x |
| State Management | Riverpod 2.x |
| Navigation | GoRouter |
| HTTP Client | Dio |
| Real-time | SignalR |
| Local Storage | SharedPreferences + Secure Storage |
| Notifications | Firebase Cloud Messaging |

## 📁 هيكل المشروع

```
frontend/
├── lib/
│   ├── main.dart
│   ├── app.dart
│   │
│   ├── core/
│   │   ├── constants/
│   │   │   ├── api_constants.dart
│   │   │   ├── app_constants.dart
│   │   │   └── strings.dart
│   │   ├── theme/
│   │   │   ├── app_theme.dart
│   │   │   ├── colors.dart
│   │   │   └── text_styles.dart
│   │   ├── utils/
│   │   │   ├── formatters.dart
│   │   │   ├── validators.dart
│   │   │   └── helpers.dart
│   │   ├── widgets/
│   │   │   ├── custom_button.dart
│   │   │   ├── custom_card.dart
│   │   │   └── loading_widget.dart
│   │   └── localization/
│   │       ├── app_localizations.dart
│   │       └── arb/
│   │
│   ├── data/
│   │   ├── models/
│   │   │   ├── user_model.dart
│   │   │   ├── passenger_model.dart
│   │   │   ├── week_model.dart
│   │   │   ├── payment_model.dart
│   │   │   ├── fine_model.dart
│   │   │   ├── guest_model.dart
│   │   │   ├── fund_model.dart
│   │   │   └── notification_model.dart
│   │   ├── api/
│   │   │   ├── api_client.dart
│   │   │   ├── api_interceptor.dart
│   │   │   └── endpoints.dart
│   │   ├── repositories/
│   │   │   ├── auth_repository.dart
│   │   │   ├── passenger_repository.dart
│   │   │   ├── week_repository.dart
│   │   │   ├── payment_repository.dart
│   │   │   ├── fund_repository.dart
│   │   │   └── notification_repository.dart
│   │   └── services/
│   │       ├── storage_service.dart
│   │       ├── signalr_service.dart
│   │       └── notification_service.dart
│   │
│   ├── providers/
│   │   ├── auth_provider.dart
│   │   ├── passenger_provider.dart
│   │   ├── week_provider.dart
│   │   ├── fund_provider.dart
│   │   ├── notification_provider.dart
│   │   └── theme_provider.dart
│   │
│   └── presentation/
│       ├── auth/
│       │   ├── splash_screen.dart
│       │   └── login_screen.dart
│       │
│       ├── passenger/
│       │   ├── dashboard_screen.dart
│       │   ├── fund_screen.dart
│       │   ├── previous_weeks_screen.dart
│       │   ├── week_detail_screen.dart
│       │   ├── profile_screen.dart
│       │   ├── why_i_pay_screen.dart
│       │   └── under_development_screen.dart
│       │
│       ├── admin/
│       │   ├── admin_dashboard_screen.dart
│       │   ├── passenger_management_screen.dart
│       │   ├── passenger_details_screen.dart
│       │   ├── add_passenger_screen.dart
│       │   ├── fund_control_screen.dart
│       │   └── admin_previous_weeks_screen.dart
│       │
│       ├── notifications/
│       │   └── notifications_screen.dart
│       │
│       └── widgets/
│           ├── stat_card.dart
│           ├── passenger_card.dart
│           ├── fund_transaction_item.dart
│           ├── notification_item.dart
│           └── bottom_nav_bar.dart
│
├── pubspec.yaml
├── analysis_options.yaml
└── README.md
```

## 🚀 البدء

### المتطلبات
- Flutter SDK 3.x أو أحدث
- Dart SDK 3.x أو أحدث
- Android Studio / VS Code
- Firebase CLI (للإشعارات)

### التثبيت

1. تثبيت الحزم:

```bash
flutter pub get
```

2. توليد الملفات:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

3. تشغيل التطبيق:

```bash
flutter run
```

## 🔧 الإعدادات المطلوبة

### Firebase Setup

1. إنشاء مشروع Firebase
2. إضافة التطبيق (Android/iOS)
3. تحميل ملف `google-services.json` (Android) و `GoogleService-Info.plist` (iOS)
4. تفعيل Cloud Messaging

### Backend Connection

تعديل عنوان API في `lib/core/constants/api_constants.dart`:

```dart
static const String baseUrl = 'http://localhost:5000/api';
static const String hubUrl = 'http://localhost:5000/hubs';
```

## 📱 الشاشات المنفذة

### للراكب

- ✅ شاشة تسجيل الدخول
- ✅ الصفحة الرئيسية (Dashboard)
- ✅ صندوق العربية (مشاهدة فقط)
- ✅ الأسابيع السابقة
- ✅ تفاصيل الأسبوع
- ✅ الملف الشخصي
- ✅ ليه بدفع المبلغ ده؟
- ✅ الإشعارات
- ✅ تحت التطوير (إثبات الحضور)

### للأدمن

- ✅ لوحة التحكم
- ✅ إدارة الركاب
- ✅ بيانات الراكب
- ✅ إضافة راكب جديد
- ✅ صندوق العربية (تحكم كامل)
- ✅ الأسابيع السابقة

## 🌐 دعم اللغات

- 🇸🇦 العربية (RTL) - اللغة الأساسية
- 🇬🇧 الإنجليزية (LTR)

## 🎨 الثيمات

- ☀️ الوضع الفاتح (Light Mode)
- 🌙 الوضع الداكن (Dark Mode)

## 📡 Real-time Features

التطبيق يدعم التحديثات اللحظية عبر SignalR:

- تحديث الإحصائيات
- الإشعارات الفورية
- تحديث حركات الصندوق
- تحديث حالة الدفع

## 🔐 الأمان


- JWT Token Authentication
- Secure Storage للبيانات الحساسة
- Auto Token Refresh
- API Request Interceptors

## 📝 ملاحظات التطوير

- استخدام Riverpod للـ State Management مع Code Generation
- كل Feature لها Repository خاص
- Error Handling مركزي
- Clean Architecture Pattern
- Material 3 Design System

## 📄 الترخيص

جميع الحقوق محفوظة © 2026 سيارة العاصمة
