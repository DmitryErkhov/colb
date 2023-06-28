part of 'change_card_on_top_menu_bloc.dart';

abstract class ChangeCardOnTopMenuEvent extends Equatable {
  const ChangeCardOnTopMenuEvent();
}

class ChangeCardOnTopMenuRightEvent extends ChangeCardOnTopMenuEvent{
  @override
  List<Object> get props => [];
}
class ChangeCardOnTopMenuLeftEvent extends ChangeCardOnTopMenuEvent{
  @override
  List<Object> get props => [];
}
