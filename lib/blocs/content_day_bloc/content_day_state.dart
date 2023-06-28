part of 'content_day_bloc.dart';

class ContentDayState extends Equatable {
  final String selectedDay;
  final Map<String, List<Plans>> listOfPlans;
  final Map<String, List<Lesson>> greenWeek;
  final Map<String, List<Lesson>> whiteWeek;

  const ContentDayState({required this.listOfPlans, required this.selectedDay, required this.greenWeek, required this.whiteWeek});
  @override
  List<Object> get props => [listOfPlans, selectedDay,];
}

class ContentDayInitial extends ContentDayState {
  const ContentDayInitial({required super.listOfPlans, required super.selectedDay, required super.whiteWeek, required super.greenWeek});
}
