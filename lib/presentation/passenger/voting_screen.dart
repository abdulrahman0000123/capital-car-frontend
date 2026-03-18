import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

// Note: Requires backend implementation for fetching/submitting votes
class VotingScreen extends ConsumerStatefulWidget {
  const VotingScreen({super.key});

  @override
  ConsumerState<VotingScreen> createState() => _VotingScreenState();
}

class _VotingScreenState extends ConsumerState<VotingScreen> {
  // Mock data representing days the passenger has voted NOT GOING
  final List<DateTime> _absentDays = [
    DateTime.now().add(const Duration(days: 1)),
  ];

  void _toggleVote(DateTime date) {
    setState(() {
      // Normalization to start of day
      final normalizedDate = DateTime(date.year, date.month, date.day);
      if (_absentDays.any((d) => d.year == normalizedDate.year && d.month == normalizedDate.month && d.day == normalizedDate.day)) {
        _absentDays.removeWhere((d) => d.year == normalizedDate.year && d.month == normalizedDate.month && d.day == normalizedDate.day);
      } else {
        _absentDays.add(normalizedDate);
      }
    });
    // TODO: Send vote (isGoing: true/false) to API
  }

  bool _isAbsent(DateTime date) {
    return _absentDays.any((d) => d.year == date.year && d.month == date.month && d.day == date.day);
  }

  @override
  Widget build(BuildContext context) {
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
                      _toggleVote(date);
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
