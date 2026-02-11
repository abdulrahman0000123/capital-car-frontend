import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:capital_car_app/core/theme/colors.dart';
import 'package:capital_car_app/core/constants/strings.dart';
import 'package:capital_car_app/presentation/widgets/stat_card.dart';

class AdminDashboardScreen extends ConsumerStatefulWidget {
  const AdminDashboardScreen({super.key});

  @override
  ConsumerState<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends ConsumerState<AdminDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.adminDashboard),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () => context.push('/notifications'),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Week Info Card
              Card(
                color: AppColors.primary.withValues(alpha: 0.1),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'الأسبوع الحالي',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'الأسبوع 5 | 1 فبراير - 5 فبراير 2026',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: AppColors.success.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  '🟢 مفتوح',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.success,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            flex: 2,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.lock, size: 18),
                              label: const Text('إغلاق الأسبوع'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Statistics
              const Text(
                'إحصائيات الأسبوع',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: 16),
              
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.5,
                children: const [
                  StatCard(
                    title: 'الاشتراك لكل راكب',
                    value: '117.86 ج',
                    icon: Icons.account_balance_wallet,
                    color: AppColors.primary,
                  ),
                  StatCard(
                    title: Strings.fundBalance,
                    value: '600 ج',
                    subtitle: 'طبيعي',
                    icon: Icons.inventory_2_outlined,
                    color: AppColors.fundNormal,
                  ),
                  StatCard(
                    title: Strings.driverSalary,
                    value: '2000 ج',
                    icon: Icons.attach_money,
                    color: AppColors.info,
                  ),
                  StatCard(
                    title: Strings.guests,
                    value: '300 ج',
                    subtitle: '(3 ضيوف)',
                    icon: Icons.person_add_alt_outlined,
                    color: AppColors.success,
                  ),
                  StatCard(
                    title: Strings.fines,
                    value: '150 ج',
                    subtitle: '(3 غرامات)',
                    icon: Icons.warning_outlined,
                    color: AppColors.warning,
                  ),
                  StatCard(
                    title: Strings.activePassengers,
                    value: '14',
                    icon: Icons.people_outlined,
                    color: AppColors.secondary,
                  ),
                ],
              ),
              
              const SizedBox(height: 24),
              
              // Quick Actions
              const Text(
                'إجراءات سريعة',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: 12),
              
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => context.push('/admin/passengers'),
                      icon: const Icon(Icons.people),
                      label: const Text('إدارة الركاب'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondary,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => context.push('/admin/fund'),
                      icon: const Icon(Icons.inventory_2),
                      label: const Text('صندوق العربية'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.fundNormal,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 24),
              
              // Payment Status
              const Text(
                'حالة الدفع للركاب',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: 12),
              
              _buildPaymentStatusSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              // Already on dashboard
              break;
            case 1:
              context.go('/admin/fund');
              break;
            case 2:
              context.go('/admin/previous-weeks');
              break;
            case 3:
              context.go('/passenger/profile');
              break;
            case 4:
              context.go('/admin/attendance');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            activeIcon: Icon(Icons.dashboard),
            label: 'لوحة التحكم',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2_outlined),
            activeIcon: Icon(Icons.inventory_2),
            label: Strings.fund,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            activeIcon: Icon(Icons.calendar_today),
            label: Strings.previousWeeks,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: Strings.profile,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.offline_pin_outlined),
            activeIcon: Icon(Icons.offline_pin),
            label: Strings.attendance,
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentStatusSection() {
    // Mock data
    final unpaidPassengers = [
      {'id': '1', 'name': 'أحمد محمد', 'amount': 117.86},
      {'id': '2', 'name': 'محمد علي', 'amount': 117.86},
    ];
    
    final paidPassengers = [
      {'id': '3', 'name': 'علي حسن', 'amount': 117.86},
      {'id': '4', 'name': 'حسن أحمد', 'amount': 117.86},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Unpaid Section
        if (unpaidPassengers.isNotEmpty) ...[
          Text(
            'لم يدفعوا (${unpaidPassengers.length})',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.error,
            ),
          ),
          const SizedBox(height: 8),
          ...unpaidPassengers.map((passenger) => Card(
            margin: const EdgeInsets.only(bottom: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.error.withValues(alpha: 0.1),
                child: const Icon(Icons.person, color: AppColors.error),
              ),
              title: Text(passenger['name'] as String),
              subtitle: Text('${passenger['amount']} ج'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.check, color: AppColors.success),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('تم تأكيد دفع ${passenger['name']}'),
                          backgroundColor: AppColors.success,
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications, color: AppColors.warning),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('تم إرسال تذكير لـ ${passenger['name']}'),
                          backgroundColor: AppColors.warning,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          )),
          const SizedBox(height: 16),
        ],
        
        // Paid Section
        if (paidPassengers.isNotEmpty) ...[
          Text(
            'تم الدفع (${paidPassengers.length})',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.success,
            ),
          ),
          const SizedBox(height: 8),
          ...paidPassengers.map((passenger) => Card(
            margin: const EdgeInsets.only(bottom: 8),
            color: AppColors.success.withValues(alpha: 0.05),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.success.withValues(alpha: 0.1),
                child: const Icon(Icons.check_circle, color: AppColors.success),
              ),
              title: Text(passenger['name'] as String),
              subtitle: Text('${passenger['amount']} ج'),
            ),
          )),
        ],
      ],
    );
  }
}
