part of 'content_day_bloc.dart';

abstract class ContentDayEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AddPlans extends ContentDayEvent {
  final String title;
  final String dateControl;

  AddPlans({required this.title, required this.dateControl});

  @override
  List<Object> get props => [title, dateControl];
}

class FinishPlans extends ContentDayEvent {
  final String title;
  final String dateControl;

  FinishPlans({required this.title, required this.dateControl});

  @override
  List<Object> get props => [title, dateControl];
}

class DeletePlans extends ContentDayEvent {
  final String title;
  final String dateControl;

  DeletePlans({required this.title, required this.dateControl});

  @override
  List<Object> get props => [title, dateControl];
}

class AddLesson extends ContentDayEvent{
  final bool weekIsGreen;
  final String theDayOfWeek;
  final String name;
  final String teacher;
  final String typeLesson;
  final String timeStart;
  final String timeFinish;
  final String classNumber;

  AddLesson({
    required this.weekIsGreen,
    required this.theDayOfWeek,
    required this.name,
    required this.teacher,
    required this.typeLesson,
    required this.timeStart,
    required this.timeFinish,
    required this.classNumber,
  });
}

class DeleteLesson extends ContentDayEvent{
  final String theDayOfWeek;
  final String name;
  final String teacher;
  final String typeLesson;
  final String timeStart;
  final String timeFinish;
  final String classNumber;

  DeleteLesson({
    required this.theDayOfWeek,
    required this.name,
    required this.teacher,
    required this.typeLesson,
    required this.timeStart,
    required this.timeFinish,
    required this.classNumber,
  });
}