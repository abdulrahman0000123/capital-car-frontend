import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:capital_car_app/core/theme/colors.dart';
import 'package:capital_car_app/core/constants/strings.dart';

class AddPassengerScreen extends StatefulWidget {
  const AddPassengerScreen({super.key});

  @override
  State<AddPassengerScreen> createState() => _AddPassengerScreenState();
}

class _AddPassengerScreenState extends State<AddPassengerScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _workplaceController = TextEditingController();
  bool _isPrimary = true;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _workplaceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.addPassenger),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: Strings.fullName,
                prefixIcon: Icon(Icons.person_outline),
              ),
              validator: (value) => value?.isEmpty ?? true ? Strings.requiredField : null,
            ),
            
            const SizedBox(height: 16),
            
            TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: Strings.phone,
                prefixIcon: Icon(Icons.phone_outlined),
              ),
              keyboardType: TextInputType.phone,
              validator: (value) => value?.isEmpty ?? true ? Strings.requiredField : null,
            ),
            
            const SizedBox(height: 16),
            
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: Strings.username,
                prefixIcon: Icon(Icons.alternate_email),
              ),
              validator: (value) => value?.isEmpty ?? true ? Strings.requiredField : null,
            ),
            
            const SizedBox(height: 16),
            
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: Strings.password,
                prefixIcon: Icon(Icons.lock_outline),
              ),
              obscureText: true,
              validator: (value) => value?.isEmpty ?? true ? Strings.requiredField : null,
            ),
            
            const SizedBox(height: 16),
            
            TextFormField(
              controller: _workplaceController,
              decoration: const InputDecoration(
                labelText: Strings.workplace,
                prefixIcon: Icon(Icons.work_outline),
              ),
            ),
            
            const SizedBox(height: 16),
            
            SwitchListTile(
              title: const Text('راكب أساسي'),
              subtitle: const Text('الركاب الأساسيون يدفعون الاشتراك الأسبوعي'),
              value: _isPrimary,
              onChanged: (value) => setState(() => _isPrimary = value),
            ),
            
            const SizedBox(height: 32),
            
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: _submitForm,
                child: const Text(Strings.save),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      context.pop();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('تم إضافة الراكب بنجاح'),
          backgroundColor: AppColors.success,
        ),
      );
    }
  }
}
