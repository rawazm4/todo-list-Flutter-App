import '../../../core/constants/app_constants.dart';
import '../../models/todo_model.dart';

/// Categories are a fixed local list — there's no category-management UI in
/// the design, so nothing about them needs to live in Firestore. This also
/// carries the sample tasks used to seed Firestore's `tasks` collection on
/// first run (see `TodoRemoteDataSource.seedIfEmpty`), mirroring the design
/// prototype's mock state (`Todo App.dc.html`, `Component.state`).
class TodoLocalDataSource {
  final List<CategoryModel> _categories = [
    const CategoryModel(
      id: 'work',
      name: 'Work',
      color: CategoryColor.accent500,
    ),
    const CategoryModel(
      id: 'personal',
      name: 'Personal',
      color: CategoryColor.accent300,
    ),
    const CategoryModel(
      id: 'home',
      name: 'Home',
      color: CategoryColor.neutral400,
    ),
    const CategoryModel(
      id: 'health',
      name: 'Health',
      color: CategoryColor.accent700,
    ),
  ];

  final List<TaskModel> _seedTasks = [
    const TaskModel(
      id: 't1',
      title: 'Finalize Q3 roadmap deck',
      categoryId: 'work',
      group: TaskGroup.today,
      dueLabel: 'Today · 10:00 AM',
      reminder: true,
      notes: 'Pull numbers from the July report before the review.',
    ),
    const TaskModel(
      id: 't2',
      title: 'Call dentist to reschedule',
      categoryId: 'health',
      group: TaskGroup.today,
      dueLabel: 'Today · 3:30 PM',
      reminder: true,
      notes: 'Ask about the Thursday morning slot.',
    ),
    const TaskModel(
      id: 't3',
      title: 'Pick up dry cleaning',
      categoryId: 'home',
      group: TaskGroup.today,
      dueLabel: 'Today · 6:00 PM',
    ),
    const TaskModel(
      id: 't4',
      title: 'Review pull request #482',
      categoryId: 'work',
      group: TaskGroup.today,
      dueLabel: 'Today · 11:30 AM',
      notes: 'Focus on the migration script.',
    ),
    const TaskModel(
      id: 't5',
      title: 'Morning run',
      categoryId: 'health',
      group: TaskGroup.tomorrow,
      dueLabel: 'Tomorrow · 7:00 AM',
      reminder: true,
      notes: '5K loop around the park.',
    ),
    const TaskModel(
      id: 't6',
      title: 'Grocery shopping',
      categoryId: 'home',
      group: TaskGroup.tomorrow,
      dueLabel: 'Tomorrow · 5:00 PM',
      notes: 'Milk, eggs, coffee.',
    ),
    const TaskModel(
      id: 't7',
      title: 'Plan weekend trip',
      categoryId: 'personal',
      group: TaskGroup.upcoming,
      dueLabel: 'Tue, Jul 21',
      notes: 'Look at cabins near the lake.',
    ),
    const TaskModel(
      id: 't8',
      title: 'Read Deep Work, chapter 4',
      categoryId: 'personal',
      group: TaskGroup.upcoming,
      dueLabel: 'Thu, Jul 23',
    ),
    const TaskModel(
      id: 't9',
      title: 'Pay electricity bill',
      categoryId: 'home',
      group: TaskGroup.today,
      dueLabel: 'Jul 16',
      done: true,
      completedLabel: '2 days ago',
    ),
    const TaskModel(
      id: 't10',
      title: 'Renew gym membership',
      categoryId: 'health',
      group: TaskGroup.today,
      dueLabel: 'Jul 15',
      done: true,
      completedLabel: '3 days ago',
    ),
  ];

  List<CategoryModel> getCategories() => List.unmodifiable(_categories);

  List<TaskModel> getSeedTasks() => List.unmodifiable(_seedTasks);
}
