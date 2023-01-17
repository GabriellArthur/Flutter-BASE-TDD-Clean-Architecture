import 'package:tdd/features/reminder/domain/entities/reminder.dart';

abstract class ReminderRepository {
  Future<Reminder>? getReminder(int? id);
}
