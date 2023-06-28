part of 'introduction_bloc.dart';

class IntroductionState extends Equatable {

  final bool introductionFinish;
  final int stepIntroduction;

  const IntroductionState({required this.introductionFinish, required this.stepIntroduction});

  @override
  List<Object> get props => [introductionFinish, stepIntroduction];

  Map<String, dynamic> toMap() {
    return {
      'introductionFinish': introductionFinish,
      'stepIntroduction': stepIntroduction,
    };
  }

  factory IntroductionState.fromMap(Map<String, dynamic> map) {
    return IntroductionState(
      introductionFinish: map['introductionFinish'] as bool,
      stepIntroduction: map['stepIntroduction'] as int,
    );
  }

}

class IntroductionInitial extends IntroductionState{
  const IntroductionInitial({required super.introductionFinish, required super.stepIntroduction});
}
