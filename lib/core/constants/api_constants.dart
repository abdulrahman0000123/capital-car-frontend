class ApiConstants {
  // Base URLs
  static const String baseUrl = 'http://localhost:5000/api';
  static const String hubUrl = 'http://localhost:5000/hubs';
  
  // SignalR Hub
  static const String notificationHub = '$hubUrl/notificationHub';
  
  // Auth Endpoints
  static const String login = '/auth/login';
  static const String logout = '/auth/logout';
  static const String refreshToken = '/auth/refresh';
  static const String changePassword = '/auth/change-password';
  
  // Passenger Endpoints
  static const String passengers = '/passengers';
  static const String passengerById = '/passengers/:id';
  static const String addPassenger = '/passengers';
  static const String updatePassenger = '/passengers/:id';
  static const String deletePassenger = '/passengers/:id';
  static const String suspendPassenger = '/passengers/:id/suspend';
  static const String activatePassenger = '/passengers/:id/activate';
  
  // Week Endpoints
  static const String weeks = '/weeks';
  static const String currentWeek = '/weeks/current';
  static const String weekById = '/weeks/:id';
  static const String closeWeek = '/weeks/:id/close';
  static const String weekDetails = '/weeks/:id/details';
  
  // Payment Endpoints
  static const String payments = '/payments';
  static const String confirmPayment = '/payments/:id/confirm';
  static const String sendPaymentReminder = '/payments/:id/reminder';
  static const String passengerPayments = '/payments/passenger/:passengerId';
  
  // Fine Endpoints
  static const String fines = '/fines';
  static const String addFine = '/fines';
  static const String weekFines = '/fines/week/:weekId';
  
  // Guest Endpoints
  static const String guests = '/guests';
  static const String addGuest = '/guests';
  static const String weekGuests = '/guests/week/:weekId';
  
  // Fund Endpoints
  static const String fund = '/fund';
  static const String fundTransactions = '/fund/transactions';
  static const String deposit = '/fund/deposit';
  static const String withdraw = '/fund/withdraw';
  
  // Notification Endpoints
  static const String notifications = '/notifications';
  static const String markAsRead = '/notifications/:id/read';
  static const String markAllAsRead = '/notifications/read-all';
  static const String unreadCount = '/notifications/unread-count';
  
  // User Endpoints
  static const String profile = '/users/profile';
  static const String updateProfile = '/users/profile';
  static const String updateAvatar = '/users/avatar';
  
  // Helper method to replace path parameters
  static String replaceParams(String endpoint, Map<String, dynamic> params) {
    String result = endpoint;
    params.forEach((key, value) {
      result = result.replaceAll(':$key', value.toString());
    });
    return result;
  }
}
