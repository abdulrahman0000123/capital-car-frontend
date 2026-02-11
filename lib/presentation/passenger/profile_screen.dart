import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:capital_car_app/core/theme/colors.dart';
import 'package:capital_car_app/core/constants/strings.dart';
import 'package:capital_car_app/providers/auth_provider.dart';
import 'package:capital_car_app/presentation/widgets/bottom_nav_bar.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  int _selectedIndex = 3; // Profile tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.profile),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/passenger/dashboard'),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile Picture
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: AppColors.primary.withValues(alpha: 0.1),
                  child: const Icon(
                    Icons.person,
                    size: 60,
                    color: AppColors.primary,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: AppColors.primary,
                    radius: 20,
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt, size: 18),
                      onPressed: () {
                        // TODO: Change profile picture
                      },
                      color: Colors.white,
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 24),
            
            // Personal Information Section
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                Strings.personalInfo,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Full Name
            TextFormField(
              initialValue: 'أحمد محمد',
              decoration: const InputDecoration(
                labelText: Strings.fullName,
                prefixIcon: Icon(Icons.person_outline),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Phone
            TextFormField(
              initialValue: '01234567890',
              decoration: const InputDecoration(
                labelText: Strings.phone,
                prefixIcon: Icon(Icons.phone_outlined),
              ),
              keyboardType: TextInputType.phone,
            ),
            
            const SizedBox(height: 16),
            
            // Workplace
            TextFormField(
              initialValue: 'شركة ABC',
              decoration: const InputDecoration(
                labelText: Strings.workplace,
                prefixIcon: Icon(Icons.work_outline),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Join Date (Read Only)
            TextFormField(
              initialValue: '1 يناير 2026',
              decoration: const InputDecoration(
                labelText: Strings.joinDate,
                prefixIcon: Icon(Icons.calendar_today_outlined),
                suffixIcon: Icon(Icons.lock_outline, size: 18),
              ),
              enabled: false,
            ),
            
            const SizedBox(height: 16),
            
            // Total Paid (Read Only)
            TextFormField(
              initialValue: '5,000 ج',
              decoration: const InputDecoration(
                labelText: Strings.totalPaid,
                prefixIcon: Icon(Icons.account_balance_wallet_outlined),
                suffixIcon: Icon(Icons.lock_outline, size: 18),
              ),
              enabled: false,
            ),
            
            const SizedBox(height: 24),
            
            // Update Profile Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(Strings.profileUpdated),
                      backgroundColor: AppColors.success,
                    ),
                  );
                },
                child: const Text(Strings.updateProfile),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Change Password Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton.icon(
                onPressed: () => _showChangePasswordDialog(context),
                icon: const Icon(Icons.lock_outline),
                label: const Text(Strings.changePassword),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Logout Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton.icon(
                onPressed: () async {
                  await ref.read(authNotifierProvider.notifier).logout();
                  if (context.mounted) {
                    context.go('/login');
                  }
                },
                icon: const Icon(Icons.logout, color: AppColors.error),
                label: const Text(
                  Strings.logout,
                  style: TextStyle(color: AppColors.error),
                ),
              ),
            ),
          ],
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
              // Already on profile
              break;
            case 4:
              context.go('/passenger/attendance');
              break;
          }
        },
      ),
    );
  }

  void _showChangePasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(Strings.changePassword),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: Strings.currentPassword,
                prefixIcon: Icon(Icons.lock_outline),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: Strings.newPassword,
                prefixIcon: Icon(Icons.lock_outline),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: Strings.confirmPassword,
                prefixIcon: Icon(Icons.lock_outline),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(Strings.cancel),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('تم تغيير كلمة المرور بنجاح'),
                  backgroundColor: AppColors.success,
                ),
              );
            },
            child: const Text(Strings.save),
          ),
        ],
      ),
    );
  }
}
