import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:capital_car_app/providers/auth_provider.dart';
import 'package:capital_car_app/providers/voting_provider.dart';

// Note: Requires backend implementation for fetching/submitting votes
class VotingScreen extends ConsumerStatefulWidget {
  const VotingScreen({super.key});

  @override
  ConsumerState<VotingScreen> createState() => _VotingScreenState();
}

class _VotingScreenState extends ConsumerState<VotingScreen> {
  final List<DateTime> _absentDays = [];

  @override
  void initState() {
    super.initState();
    // In a complete app, we would load existing votes here
    // using another provider or async method fetching from API.
  }

  void _toggleVote(DateTime date, String passengerId, bool isGoing) {
    setState(() {
      final normalizedDate = DateTime(date.year, date.month, date.day);
      if (isGoing) {
        // Going -> Remove from absent list
        _absentDays.removeWhere((d) => d.year == normalizedDate.year && d.month == normalizedDate.month && d.day == normalizedDate.day);
      } else {
        // Not Going -> Add to absent list
        if (!_absentDays.any((d) => d.year == normalizedDate.year && d.month == normalizedDate.month && d.day == normalizedDate.day)) {
          _absentDays.add(normalizedDate);
        }
      }
    });

    // Send vote to backend API
    ref.read(votingStateProvider.notifier).submitVote(passengerId, date, isGoing);
  }

  bool _isAbsent(DateTime date) {
    return _absentDays.any((d) => d.year == date.year && d.month == date.month && d.day == date.day);
  }

  @override
  Widget build(BuildContext context) {
    // Get Passenger ID
    final authState = ref.watch(authStateProvider);
    final passengerId = authState.value?.id ?? '22222222-2222-2222-2222-222222222222'; // fallback mock

    // Generate next 14 days
    final nextDays = List.generate(14, (i) => DateTime.now().add(Duration(days: i)));

    return Scaffold(
      appBar: AppBar(
        title: const Text('تسجيل الحضور (Voting)'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'اختر الأيام التي لن تتواجد فيها بالسيارة. (يتم التحديث تلقائياً)',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: nextDays.length,
              itemBuilder: (context, index) {
                final date = nextDays[index];
                // Skip Fridays and Saturdays as they are not working days generally
                if (date.weekday == DateTime.friday || date.weekday == DateTime.saturday) {
                  return const SizedBox.shrink();
                }

                final absent = _isAbsent(date);
                final formattedDate = DateFormat('EEEE, d MMMM', 'ar').format(date);

                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  color: absent ? Colors.red.shade50 : Colors.green.shade50,
                  child: SwitchListTile(
                    title: Text(
                      formattedDate,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: absent ? Colors.red.shade900 : Colors.green.shade900,
                      ),
                    ),
                    subtitle: Text(
                      absent ? 'لن أتواجد (اعتذار)' : 'سوف أتواجد (تأكيد)',
                      style: TextStyle(color: absent ? Colors.red : Colors.green),
                    ),
                    value: !absent, // Switch denotes "Going"
                    onChanged: (bool value) {
                      _toggleVote(date, passengerId, value);
                    },
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.red,
                    inactiveTrackColor: Colors.red.shade200,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
