
import 'package:colb_progect/blocs/bloc_exports.dart';
import 'package:equatable/equatable.dart';

part 'change_card_on_top_menu_event.dart';
part 'change_card_on_top_menu_state.dart';

class ChangeCardOnTopMenuBloc extends HydratedBloc<ChangeCardOnTopMenuEvent, ChangeCardOnTopMenuState> {
  ChangeCardOnTopMenuBloc() : super(ChangeCardOnTopMenuInitial(listData: [{'title':'Статистика', 'IconSvg': 'images/icon_statistics.svg', 'CardSvg': 'images/statistics.svg'},
    {'title':'Расписание', 'IconSvg': 'images/schedule-introduction.svg', 'CardSvg': 'images/schedule-introduction-card.svg'},
    {'title':'Встречи', 'IconSvg': 'images/meetings-introduction.svg', 'CardSvg': 'images/meetings-introduction-card.svg'},
    {'title':'Планы', 'IconSvg': 'images/plans-icon.svg', 'CardSvg': 'images/plans.svg'},
    {'title':'Фин. учет', 'IconSvg': 'images/financial-accounting-icon.svg', 'CardSvg': 'images/financial-accounting.svg'},] )) {
    on<ChangeCardOnTopMenuRightEvent>((event, emit){
      final state = this.state;
      emit(
          ChangeCardOnTopMenuState(listData: List.from(state.listData)..add(state.listData.first)..removeAt(0))
      );
    });
    on<ChangeCardOnTopMenuLeftEvent>((event, emit){
      final state = this.state;
      emit(
          ChangeCardOnTopMenuState(listData: List.from(state.listData)..insert(0, state.listData.last)..removeAt(5))
      );
    });

  }

  @override
  ChangeCardOnTopMenuState? fromJson(Map<String, dynamic> json) {
    return ChangeCardOnTopMenuState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(ChangeCardOnTopMenuState state) {
    return state.toMap();
  }
}