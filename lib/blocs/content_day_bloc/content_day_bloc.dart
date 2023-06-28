import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
import 'package:colb_progect/blocs/bloc_exports.dart';

part 'content_day_event.dart';

part 'content_day_state.dart';

class ContentDayBloc extends Bloc<ContentDayEvent, ContentDayState> {
  ContentDayBloc()
      : super(ContentDayInitial(
          selectedDay: DateFormat('yyyy-MM-dd').format(DateTime.now()),
          listOfPlans: {DateFormat('yyyy-MM-dd').format(DateTime.now()): []},
          whiteWeek: const {
            'Monday': [],
            'Tuesday': [],
            'Wednesday': [],
            'Thursday': [],
            'Friday': [],
            'Saturday': [],
            'Sunday': []
          },
          greenWeek: const {
            'Monday': [],
            'Tuesday': [],
            'Wednesday': [],
            'Thursday': [],
            'Friday': [],
            'Saturday': [],
            'Sunday': []
          },
        )) {

    on<AddPlans>((event, emit) {
      Map<String, List<Plans>> mapValue = Map.from(state.listOfPlans);
      print(state.listOfPlans);
      state.listOfPlans.clear();
      print('я тута');
      print(state.listOfPlans);
      if (mapValue!.containsKey(event.dateControl)) {
        // Ключ содержится в распорядке дня
        mapValue[event.dateControl]!.add(Plans(
            isFinished: false,
            title: event.title,
            id: mapValue[event.dateControl]!.length));
        //state.listOfPlans[event.dateControl]!.add(Plans(isFinished: false, title: event.title, id: state.listOfPlans[event.dateControl]!.length));
      } else {
        //
        mapValue[event.dateControl] = [
          Plans(isFinished: false, title: event.title, id: 0)
        ];
      }
      print(mapValue);
      emit(ContentDayState(
          listOfPlans: Map.from(mapValue),
          selectedDay: state.selectedDay,
          greenWeek: state.greenWeek,
          whiteWeek: state.whiteWeek));
    });

    on<AddLesson>((event, emit) {
      Map<String, List<Lesson>> listLesson = event.weekIsGreen ? Map.from(state.greenWeek) : Map.from(state.whiteWeek);
      state.listOfPlans.clear();

      listLesson[event.theDayOfWeek]!.add(Lesson(name: event.name, teacher: event.teacher, typeLesson: event.typeLesson, timeStart: event.timeStart, timeFinish: event.timeFinish, classNumber: event.classNumber));

      event.weekIsGreen ?
      emit(
          ContentDayState(
              listOfPlans: state.listOfPlans,
              selectedDay: state.selectedDay,
              greenWeek: listLesson,
              whiteWeek: state.whiteWeek
          )
      )
          : emit(
          ContentDayState(
              listOfPlans: state.listOfPlans,
              selectedDay: state.selectedDay,
              greenWeek: state.greenWeek,
              whiteWeek: listLesson
          )
      );
    });

  }
}
