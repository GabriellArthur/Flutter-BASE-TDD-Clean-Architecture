import 'package:tdd/features/reminder/domain/entities/reminder.dart';
import 'package:tdd/features/reminder/domain/repositories/reminder_repository.dart';

class GetReminder {
  final ReminderRepository repository;

  GetReminder(this.repository);

  Future<Reminder>? call(int id) {
    return repository.getReminder(id);
  }
}
