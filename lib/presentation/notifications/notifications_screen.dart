import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:capital_car_app/core/theme/colors.dart';
import 'package:capital_car_app/core/constants/strings.dart';

class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.notifications),
        actions: [
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('تم تحديد الجميع كمقروء'),
                  backgroundColor: AppColors.success,
                ),
              );
            },
            child: const Text(Strings.markAllRead),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
        },
        child: _buildNotificationsList(),
      ),
    );
  }

  Widget _buildNotificationsList() {
    // Mock data
    final notifications = [
      {
        'id': '1',
        'type': 'fine_recorded',
        'title': '⚠️ غرامة جديدة',
        'message': 'تم تسجيل غرامة: أحمد - تأخير - 50 ج',
        'time': DateTime.now(),
        'isRead': false,
      },
      {
        'id': '2',
        'type': 'guest_added',
        'title': '🎫 استضافة جديدة',
        'message': 'تم إضافة ضيف: محمد أحمد - 100 ج',
        'time': DateTime.now().subtract(const Duration(minutes: 5)),
        'isRead': false,
      },
      {
        'id': '3',
        'type': 'fund_deposit',
        'title': '📦 إيداع في الصندوق',
        'message': 'تم إيداع مبلغ 100 ج في صندوق العربية',
        'time': DateTime.now().subtract(const Duration(hours: 1)),
        'isRead': true,
      },
      {
        'id': '4',
        'type': 'payment_confirmed',
        'title': '✅ تأكيد دفع',
        'message': 'تم تأكيد دفع اشتراك الأسبوع 5',
        'time': DateTime.now().subtract(const Duration(days: 1)),
        'isRead': true,
      },
    ];

    if (notifications.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.notifications_none,
              size: 64,
              color: AppColors.textTertiary,
            ),
            SizedBox(height: 16),
            Text(
              Strings.noNotifications,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];
        final isRead = notification['isRead'] as bool;
        
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          color: isRead ? null : AppColors.primary.withValues(alpha: 0.05),
          child: ListTile(
            contentPadding: const EdgeInsets.all(16),
            leading: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(isRead ? 0.1 : 0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                _getNotificationIcon(notification['type'] as String),
                color: AppColors.primary,
                size: 24,
              ),
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    notification['title'] as String,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: isRead ? FontWeight.normal : FontWeight.bold,
                    ),
                  ),
                ),
                if (!isRead)
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 6),
                Text(
                  notification['message'] as String,
                  style: const TextStyle(fontSize: 13),
                ),
                const SizedBox(height: 6),
                Text(
                  timeago.format(
                    notification['time'] as DateTime,
                    locale: 'ar',
                  ),
                  style: const TextStyle(
                    fontSize: 11,
                    color: AppColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  IconData _getNotificationIcon(String type) {
    switch (type) {
      case 'fund_deposit':
      case 'fund_withdrawal':
        return Icons.inventory_2;
      case 'guest_added':
        return Icons.person_add_alt;
      case 'fine_recorded':
        return Icons.warning;
      case 'weekly_amount':
        return Icons.account_balance_wallet;
      case 'payment_confirmed':
        return Icons.check_circle;
      case 'payment_reminder':
        return Icons.notifications_active;
      default:
        return Icons.notifications;
    }
  }
}
