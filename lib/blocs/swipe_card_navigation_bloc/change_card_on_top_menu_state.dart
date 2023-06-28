part of 'change_card_on_top_menu_bloc.dart';

class ChangeCardOnTopMenuState extends Equatable {

  final List<Map<String,String>> listData;

  const ChangeCardOnTopMenuState({required this.listData});

  @override
  List<Object> get props => [listData];

  Map<String, dynamic> toMap() {
    return {
      'listData': listData
    };
  }

  factory ChangeCardOnTopMenuState.fromMap(Map<String, dynamic> map) {
    return ChangeCardOnTopMenuState(
        listData: List.from(map['listData']),
    );
  }
}

class ChangeCardOnTopMenuInitial extends ChangeCardOnTopMenuState {
  ChangeCardOnTopMenuInitial({required super.listData});
}
