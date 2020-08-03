import 'package:flutter/cupertino.dart';

class AccountsModel with ChangeNotifier {
  String name;
  String address;
}

class AccountsData with ChangeNotifier {
  List<AccountsModel> _items = [];

  List<AccountsModel> get items {
    return [..._items];
  }
}
