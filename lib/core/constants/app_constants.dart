class AppConstants {
  // App Info
  static const String appName = 'سيارة العاصمة';
  static const String appNameEn = 'Capital Car';
  static const String appVersion = '3.0.0';
  static const String appSlogan = 'رحلتك محسوبة... وحقك محفوظ';
  
  // Week Configuration
  static const int workDaysPerWeek = 5;
  static const String weekStartDay = 'Sunday';
  static const String weekEndDay = 'Thursday';
  static const int weekClosingHour = 18; // 6:00 PM
  
  // Passenger Configuration
  static const int maxPrimaryPassengers = 14;
  
  // Fund Configuration
  static const double fundMinLimit = 500.0;
  static const double fundMaxLimit = 700.0;
  
  // Fine Types
  static const Map<String, String> fineTypes = {
    'late_minor': 'تأخير (أقل من 10 دقائق)',
    'late_major': 'تأخير (أكثر من 10 دقائق)',
    'absence': 'غياب بدون إخطار مسبق',
    'same_day_cancel': 'إلغاء في نفس اليوم',
    'other': 'أخرى',
  };
  
  static const Map<String, double> fineDefaultAmounts = {
    'late_minor': 25.0,
    'late_major': 50.0,
    'absence': 100.0,
    'same_day_cancel': 75.0,
    'other': 0.0,
  };
  
  static const Map<String, String> fineIcons = {
    'late_minor': '⏰',
    'late_major': '⏰⏰',
    'absence': '❌',
    'same_day_cancel': '🚫',
    'other': '❓',
  };
  
  // Days of Week
  static const List<String> daysOfWeek = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
  ];
  
  static const Map<String, String> daysInArabic = {
    'Sunday': 'الأحد',
    'Monday': 'الاثنين',
    'Tuesday': 'الثلاثاء',
    'Wednesday': 'الأربعاء',
    'Thursday': 'الخميس',
  };
  
  // User Roles
  static const String roleAdmin = 'admin';
  static const String rolePassenger = 'passenger';
  
  // Storage Keys
  static const String keyToken = 'auth_token';
  static const String keyRefreshToken = 'refresh_token';
  static const String keyUserId = 'user_id';
  static const String keyUsername = 'username';
  static const String keyUserRole = 'user_role';
  static const String keyThemeMode = 'theme_mode';
  static const String keyLocale = 'locale';
  
  // Pagination
  static const int defaultPageSize = 20;
  
  // Timeouts
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  
  // Date Formats
  static const String dateFormat = 'yyyy-MM-dd';
  static const String dateTimeFormat = 'yyyy-MM-dd HH:mm:ss';
  static const String displayDateFormat = 'dd MMMM yyyy';
  static const String displayTimeFormat = 'hh:mm a';
}
