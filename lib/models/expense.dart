import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category {
  food,
  entertainment,
  transportation,
  utilities,
  other,
}

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  // This is a getter, not a function.
  // It's called like this: expense.totalAmount
  double get totalAmount {
    return amount;
  }

  // This is a getter, not a function.
  // It's called like this: expense.totalAmount
  String get formattedDate {
    return '${date.month}/${date.day}/${date.year}';
  }

  // This is a getter, not a function.
  // It's called like this: expense.totalAmount
  String get formattedAmount {
    return '\$${amount.toStringAsFixed(2)}';
  }
}
