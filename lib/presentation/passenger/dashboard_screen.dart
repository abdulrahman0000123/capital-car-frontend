import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:capital_car_app/core/theme/colors.dart';
import 'package:capital_car_app/core/constants/strings.dart';
import 'package:capital_car_app/presentation/widgets/bottom_nav_bar.dart';
import 'package:capital_car_app/presentation/widgets/stat_card.dart';

class PassengerDashboardScreen extends ConsumerStatefulWidget {
  const PassengerDashboardScreen({super.key});

  @override
  ConsumerState<PassengerDashboardScreen> createState() => _PassengerDashboardScreenState();
}

class _PassengerDashboardScreenState extends ConsumerState<PassengerDashboardScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.appName),
        actions: [
          // Notifications Icon
          IconButton(
            icon: Stack(
              children: [
                const Icon(Icons.notifications_outlined),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: AppColors.error,
                      shape: BoxShape.circle,
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: const Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () => context.push('/notifications'),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // TODO: Refresh data
          await Future.delayed(const Duration(seconds: 1));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Section
              _buildWelcomeSection(),
              
              const SizedBox(height: 24),
              
              // Week Progress Section
              _buildWeekProgressSection(),
              
              const SizedBox(height: 24),
              
              // Statistics Cards
              const Text(
                'إحصائيات الأسبوع الحالي',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: 16),
              
              _buildStatisticsGrid(),
              
              const SizedBox(height: 24),
              
              // Payment Status
              _buildPaymentStatus(),
              
              const SizedBox(height: 16),
              
              // Why I Pay Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () => context.push('/passenger/why-i-pay'),
                  icon: const Icon(Icons.lightbulb_outline),
                  label: const Text(Strings.whyIPay),
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Latest Updates
              _buildLatestUpdates(),
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
              // Already on dashboard
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
              context.go('/passenger/attendance');
              break;
          }
        },
      ),
    );
  }

  Widget _buildWelcomeSection() {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.primary.withValues(alpha: 0.1),
          child: const Icon(
            Icons.person,
            size: 30,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(width: 16),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${Strings.welcome} أحمد',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'الأسبوع 5 | 1 فبراير - 5 فبراير',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildWeekProgressSection() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'باقي على إغلاق الأسبوع',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: CircularProgressIndicator(
                    value: 0.7,
                    strokeWidth: 8,
                    backgroundColor: AppColors.border,
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '70%',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                    Text(
                      'يومين و 4 ساعات',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticsGrid() {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 1.5,
      children: const [
        StatCard(
          title: Strings.subscription,
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
    );
  }

  Widget _buildPaymentStatus() {
    final isPaid = DateTime.now().day % 2 == 0; // TODO: Get from state
    
    return Card(
      color: isPaid ? AppColors.success.withValues(alpha: 0.1) : AppColors.error.withValues(alpha: 0.1),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              isPaid ? Icons.check_circle : Icons.cancel,
              color: isPaid ? AppColors.success : AppColors.error,
              size: 32,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    Strings.paymentStatus,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    isPaid ? 'تم دفع الاشتراك | المبلغ: 117.86 ج' : 'لم يتم الدفع بعد | المطلوب: 117.86 ج',
                    style: TextStyle(
                      fontSize: 12,
                      color: isPaid ? AppColors.success : AppColors.error,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLatestUpdates() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          Strings.latestUpdates,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        _buildUpdateItem('⚠️', 'غرامة جديدة: أحمد - 50 ج', 'الآن'),
        _buildUpdateItem('🎫', 'ضيف جديد: محمد أحمد - 100 ج', '5 دقائق'),
        _buildUpdateItem('📦', 'إيداع في الصندوق: 100 ج', 'ساعة'),
      ],
    );
  }

  Widget _buildUpdateItem(String emoji, String text, String time) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Text(
          emoji,
          style: const TextStyle(fontSize: 24),
        ),
        title: Text(text),
        trailing: Text(
          time,
          style: const TextStyle(
            fontSize: 12,
            color: AppColors.textSecondary,
          ),
        ),
      ),
    );
  }
}
