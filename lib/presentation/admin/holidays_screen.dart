import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Note: Requires backend implementation for Fetching/Deleting/Adding holidays to API
class HolidaysScreen extends ConsumerStatefulWidget {
  const HolidaysScreen({super.key});

  @override
  ConsumerState<HolidaysScreen> createState() => _HolidaysScreenState();
}

class _HolidaysScreenState extends ConsumerState<HolidaysScreen> {
  // Mock data for initial UI building
  final List<DateTime> _mockHolidays = [
    DateTime.now().add(const Duration(days: 2)),
    DateTime.now().add(const Duration(days: 5)),
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 30)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (picked != null && !_mockHolidays.contains(picked)) {
      setState(() {
        _mockHolidays.add(picked);
        _mockHolidays.sort();
      });
      // TODO: Call API to save this holiday
    }
  }

  void _removeHoliday(DateTime holiday) {
    setState(() {
      _mockHolidays.remove(holiday);
    });
    // TODO: Call API to delete this holiday
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إدارة الإجازات الرسمية'),
        centerTitle: true,
      ),
      body: _mockHolidays.isEmpty
          ? const Center(
              child: Text(
                'لا توجد إجازات مسجلة',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: _mockHolidays.length,
              itemBuilder: (context, index) {
                final holiday = _mockHolidays[index];
                final formattedDate = '${holiday.year}-${holiday.month.toString().padLeft(2, '0')}-${holiday.day.toString().padLeft(2, '0')}';

                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: const Icon(Icons.event_busy, color: Colors.orange),
                    title: Text(
                      formattedDate,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: const Text('سيتم خصم هذا اليوم من أجر السائق'),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _removeHoliday(holiday),
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _selectDate(context),
        icon: const Icon(Icons.add),
        label: const Text('إضافة إجازة'),
      ),
    );
  }
}
