import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:capital_car_app/core/theme/colors.dart';
import 'package:capital_car_app/core/constants/strings.dart';
import 'package:capital_car_app/presentation/widgets/bottom_nav_bar.dart';

class UnderDevelopmentScreen extends StatefulWidget {
  const UnderDevelopmentScreen({super.key});

  @override
  State<UnderDevelopmentScreen> createState() => _UnderDevelopmentScreenState();
}

class _UnderDevelopmentScreenState extends State<UnderDevelopmentScreen> {
  int _selectedIndex = 4; // Attendance tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.attendance),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Construction Icon
              Icon(
                Icons.construction,
                size: 100,
                color: AppColors.warning,
              ),
              
              SizedBox(height: 32),
              
              // Title
              Text(
                Strings.underDevelopment,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              
              SizedBox(height: 16),
              
              // Description
              Text(
                Strings.comingSoon,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              
              SizedBox(height: 48),
              
              // Emoji
              Text(
                '🚧',
                style: TextStyle(fontSize: 64),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: PassengerBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() => _selectedIndex = index);
          switch (index) {
            case 0:
              context.go('/passenger/dashboard');
              break;
            case 1:
              context.go('/passenger/fund');
              break;
            case 2:
              context.go('/passenger/previous-weeks');
              break;
            case 3:
              context.go('/passenger/profile');
              break;
            case 4:
              // Already on attendance
              break;
          }
        },
      ),
    );
  }
}
