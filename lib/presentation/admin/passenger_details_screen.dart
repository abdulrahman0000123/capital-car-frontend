import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:capital_car_app/core/theme/colors.dart';
import 'package:capital_car_app/core/constants/strings.dart';

class PassengerDetailsScreen extends StatelessWidget {
  final String passengerId;

  const PassengerDetailsScreen({
    super.key,
    required this.passengerId,
  });

  @override
  Widget build(BuildContext context) {
    const isActive = true; // Mock data
    
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.passengerDetails),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: () => _showDeleteDialog(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile Section
            CircleAvatar(
              radius: 60,
              backgroundColor: AppColors.primary.withOpacity(0.1),
              child: const Icon(
                Icons.person,
                size: 60,
                color: AppColors.primary,
              ),
            ),
            
            const SizedBox(height: 16),
            
            Text(
              'راكب $passengerId',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 8),
            
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: (isActive ? AppColors.success : AppColors.error).withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    isActive ? Icons.check_circle : Icons.cancel,
                    size: 18,
                    color: isActive ? AppColors.success : AppColors.error,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    isActive ? 'نشط' : 'موقوف',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: isActive ? AppColors.success : AppColors.error,
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Personal Information
            _buildInfoCard(
              title: 'المعلومات الشخصية',
              children: [
                _buildInfoRow(Icons.person_outline, 'الاسم الكامل', 'راكب $passengerId'),
                const Divider(),
                _buildInfoRow(Icons.phone_outlined, 'رقم الهاتف', '01234567890'),
                const Divider(),
                _buildInfoRow(Icons.alternate_email, 'اسم المستخدم', 'passenger$passengerId'),
                const Divider(),
                _buildInfoRow(Icons.calendar_today_outlined, 'تاريخ الاشتراك', '1 يناير 2026'),
                const Divider(),
                _buildInfoRow(Icons.work_outline, 'مكان العمل', 'شركة ABC'),
                const Divider(),
                _buildInfoRow(Icons.account_balance_wallet_outlined, 'إجمالي المدفوعات', '5,000 ج'),
              ],
            ),
            
            const SizedBox(height: 24),
            
            // Actions
            Column(
              children: [
                if (isActive) ...[
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () => _showSuspendDialog(context),
                      icon: const Icon(Icons.block),
                      label: const Text(Strings.suspendAccount),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.error,
                      ),
                    ),
                  ),
                ] else ...[
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () => _showActivateDialog(context),
                      icon: const Icon(Icons.check_circle),
                      label: const Text(Strings.activateAccount),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.success,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({required String title, required List<Widget> children}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 20, color: AppColors.textSecondary),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(Strings.deletePassenger),
        content: const Text(Strings.deleteWarning),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(Strings.cancel),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.go('/admin/passengers');
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('تم حذف الراكب بنجاح'),
                  backgroundColor: AppColors.success,
                ),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.error),
            child: const Text(Strings.delete),
          ),
        ],
      ),
    );
  }

  void _showSuspendDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(Strings.suspendAccount),
        content: const Text(Strings.areYouSure),
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
                  content: Text('تم إيقاف الحساب بنجاح'),
                  backgroundColor: AppColors.success,
                ),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.error),
            child: const Text(Strings.yes),
          ),
        ],
      ),
    );
  }

  void _showActivateDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(Strings.activateAccount),
        content: const Text(Strings.areYouSure),
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
                  content: Text('تم تنشيط الحساب بنجاح'),
                  backgroundColor: AppColors.success,
                ),
              );
            },
            child: const Text(Strings.yes),
          ),
        ],
      ),
    );
  }
}
