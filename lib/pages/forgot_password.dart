import 'package:flutter/material.dart';
import 'package:zarply/pages/restore_wallet.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Your Password?'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
                'For you to reset you password we recommend to click on the restore button below.'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RestoreWalletScreen()),
                  );
                },
                child: const Text('Restore Wallet'))
          ],
        ),
      ),
    );
  }
}
