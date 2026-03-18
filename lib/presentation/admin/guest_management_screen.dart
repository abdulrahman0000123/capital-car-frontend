import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Note: Requires backend implementation for fetching true guest capacity based on votes.
class GuestManagementScreen extends ConsumerStatefulWidget {
  const GuestManagementScreen({super.key});

  @override
  ConsumerState<GuestManagementScreen> createState() => _GuestManagementScreenState();
}

class _GuestManagementScreenState extends ConsumerState<GuestManagementScreen> {
  // Mock Data
  final int _maxCapacity = 14;
  final int _votedGoing = 11;
  int get _availableSeats => _maxCapacity - _votedGoing;

  final TextEditingController _guestNameController = TextEditingController();
  final TextEditingController _amountController = TextEditingController(text: '15'); // default 15 EGP

  void _addGuest() {
    if (_availableSeats <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('السيارة ممتلئة ولا توجد مقاعد متاحة اليوم.'), backgroundColor: Colors.red),
      );
      return;
    }

    // TODO: Call API to add guest
    final guestName = _guestNameController.text;
    if (guestName.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('تم إضافة الضيف $guestName بنجاح'), backgroundColor: Colors.green),
      );
      Navigator.pop(context); // Go back or clear form
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إدارة الضيوف والأماكن'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Capacity Info Card
            Card(
              color: _availableSeats > 0 ? Colors.green.shade50 : Colors.red.shade50,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Text(
                      'المقاعد الشاغرة اليوم',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '$_availableSeats',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: _availableSeats > 0 ? Colors.green.shade700 : Colors.red.shade700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'السعة الكلية: $_maxCapacity | الحضور المؤكد: $_votedGoing',
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Form
            if (_availableSeats > 0) ...[
              const Align(
                alignment: Alignment.centerRight,
                child: Text('إضافة ضيف جديد', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: _guestNameController,
                decoration: InputDecoration(
                  labelText: 'اسم الضيف',
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'مبلغ الاستضافة (ج.م)',
                  prefixIcon: const Icon(Icons.money),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _addGuest,
                  icon: const Icon(Icons.add),
                  label: const Text('تسجيل الاستضافة', style: TextStyle(fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
