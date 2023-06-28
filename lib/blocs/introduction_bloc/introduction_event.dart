part of 'introduction_bloc.dart';

abstract class IntroductionEvent extends Equatable {
  const IntroductionEvent();
}

class FinishIntroduction extends IntroductionEvent{
  @override
  List<Object?> get props => [];
}

class NextStepIntroduction extends IntroductionEvent{
  @override
  List<Object?> get props => [];
}

class PreviousStepIntroduction extends IntroductionEvent{
  @override
  List<Object?> get props => [];
}