import 'package:flutter/material.dart';
import 'package:zarply/services/secure_storage_service.dart';

class AuthProvider extends ChangeNotifier {
  final SecureStorageService _secureStorageService = SecureStorageService();
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  Future<void> login(String pinCode) async {
    var savedPinCode = await _secureStorageService.getPin();

    if (savedPinCode == pinCode) {
      _isAuthenticated = true;
    } else {
      _isAuthenticated = false;
    }

    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    notifyListeners();
  }
}
