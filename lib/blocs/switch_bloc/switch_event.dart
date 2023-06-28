part of 'switch_bloc.dart';

abstract class SwitchEvent extends Equatable {
  const SwitchEvent();
}

class SwitchOnEvent extends SwitchEvent{
  @override
  List<Object> get props => [];
}
class SwitchOffEvent extends SwitchEvent{
  @override
  List<Object> get props => [];
}