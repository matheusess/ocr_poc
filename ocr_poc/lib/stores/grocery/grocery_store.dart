import 'package:mobx/mobx.dart';
part 'grocery_store.g.dart';

class GroceryStore = _GroceryStoreBase with _$GroceryStore;

abstract class _GroceryStoreBase with Store {}
