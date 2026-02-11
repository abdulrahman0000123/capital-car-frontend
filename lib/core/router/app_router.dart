import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:capital_car_app/presentation/auth/splash_screen.dart';
import 'package:capital_car_app/presentation/auth/login_screen.dart';
import 'package:capital_car_app/presentation/passenger/dashboard_screen.dart';
import 'package:capital_car_app/presentation/passenger/fund_screen.dart';
import 'package:capital_car_app/presentation/passenger/previous_weeks_screen.dart';
import 'package:capital_car_app/presentation/passenger/week_detail_screen.dart';
import 'package:capital_car_app/presentation/passenger/profile_screen.dart';
import 'package:capital_car_app/presentation/passenger/why_i_pay_screen.dart';
import 'package:capital_car_app/presentation/passenger/under_development_screen.dart';
import 'package:capital_car_app/presentation/admin/admin_dashboard_screen.dart';
import 'package:capital_car_app/presentation/admin/passenger_management_screen.dart';
import 'package:capital_car_app/presentation/admin/passenger_details_screen.dart';
import 'package:capital_car_app/presentation/admin/add_passenger_screen.dart';
import 'package:capital_car_app/presentation/admin/fund_control_screen.dart';
import 'package:capital_car_app/presentation/admin/admin_previous_weeks_screen.dart';
import 'package:capital_car_app/presentation/notifications/notifications_screen.dart';
import 'package:capital_car_app/providers/auth_provider.dart';

// Router Provider
final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);
  
  return GoRouter(
    initialLocation: '/splash',
    redirect: (context, state) {
      final authData = authState.asData?.value;
      final isLoggedIn = authData != null;
      final isLoginRoute = state.matchedLocation == '/login';
      final isSplashRoute = state.matchedLocation == '/splash';
      
      // If not logged in and trying to access protected routes
      if (!isLoggedIn && !isLoginRoute && !isSplashRoute) {
        return '/login';
      }
      
      // If logged in and on login/splash route, redirect to dashboard
      if (isLoggedIn && (isLoginRoute || isSplashRoute)) {
        final userRole = authData.role;
        return userRole == 'admin' ? '/admin/dashboard' : '/passenger/dashboard';
      }
      
      return null;
    },
    routes: [
      // Splash Screen
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      
      // Auth Routes
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      
      // Passenger Routes
      GoRoute(
        path: '/passenger/dashboard',
        builder: (context, state) => const PassengerDashboardScreen(),
      ),
      GoRoute(
        path: '/passenger/fund',
        builder: (context, state) => const FundScreen(),
      ),
      GoRoute(
        path: '/passenger/previous-weeks',
        builder: (context, state) => const PreviousWeeksScreen(),
      ),
      GoRoute(
        path: '/passenger/week/:id',
        builder: (context, state) {
          final weekId = state.pathParameters['id']!;
          return WeekDetailScreen(weekId: weekId);
        },
      ),
      GoRoute(
        path: '/passenger/profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: '/passenger/why-i-pay',
        builder: (context, state) => const WhyIPayScreen(),
      ),
      GoRoute(
        path: '/passenger/attendance',
        builder: (context, state) => const UnderDevelopmentScreen(),
      ),
      
      // Admin Routes
      GoRoute(
        path: '/admin/dashboard',
        builder: (context, state) => const AdminDashboardScreen(),
      ),
      GoRoute(
        path: '/admin/passengers',
        builder: (context, state) => const PassengerManagementScreen(),
      ),
      GoRoute(
        path: '/admin/passengers/add',
        builder: (context, state) => const AddPassengerScreen(),
      ),
      GoRoute(
        path: '/admin/passengers/:id',
        builder: (context, state) {
          final passengerId = state.pathParameters['id']!;
          return PassengerDetailsScreen(passengerId: passengerId);
        },
      ),
      GoRoute(
        path: '/admin/fund',
        builder: (context, state) => const FundControlScreen(),
      ),
      GoRoute(
        path: '/admin/previous-weeks',
        builder: (context, state) => const AdminPreviousWeeksScreen(),
      ),
      GoRoute(
        path: '/admin/attendance',
        builder: (context, state) => const UnderDevelopmentScreen(),
      ),
      
      // Notifications (Both Admin & Passenger)
      GoRoute(
        path: '/notifications',
        builder: (context, state) => const NotificationsScreen(),
      ),
    ],
  );
});
