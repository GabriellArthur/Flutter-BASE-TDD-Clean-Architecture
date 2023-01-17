import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/features/reminder/domain/entities/reminder.dart';
import 'package:tdd/features/reminder/domain/repositories/reminder_repository.dart';
import 'package:tdd/features/reminder/domain/usecases/get_reminder.dart';

class MockReminderRepository extends Mock implements ReminderRepository {}

void main() {
  late GetReminder usecase;
  late MockReminderRepository repository;

  setUp(() {
    repository = MockReminderRepository();
    usecase = GetReminder(repository);
  });

  const tReminder = Reminder(
    id: 1,
    title: 'title',
    description: 'description',
  );

  test(
    'should return an entity reminder',
    () async {
      //arrange
      when(repository.getReminder(any)).thenAnswer((_) async => tReminder);

      //act
      final result = await usecase.call(1);

      //assert
      expect(result, tReminder);
    },
  );
}
