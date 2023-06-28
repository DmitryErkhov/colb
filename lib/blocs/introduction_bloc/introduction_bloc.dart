
import 'package:colb_progect/blocs/bloc_exports.dart';
import 'package:equatable/equatable.dart';

part 'introduction_event.dart';
part 'introduction_state.dart';

class IntroductionBloc extends HydratedBloc<IntroductionEvent, IntroductionState> {

  IntroductionBloc() : super(IntroductionInitial(introductionFinish: false, stepIntroduction: 0)) {

    on<FinishIntroduction>(_finishIntroduction);
    on<NextStepIntroduction>(_nextStepIntroduction);
    on<PreviousStepIntroduction>(_previousStepIntroduction);

  }


  void _finishIntroduction(FinishIntroduction event, Emitter<IntroductionState> emitter){
    final state = this.state;
    emit(
        IntroductionState(
          introductionFinish: true,
          stepIntroduction: state.stepIntroduction,
        )
    );
  }

  void _nextStepIntroduction(NextStepIntroduction event, Emitter<IntroductionState> emitter){
    final state = this.state;
    emit(
        IntroductionState(
          introductionFinish: state.introductionFinish,
          stepIntroduction: state.stepIntroduction + 1,
        )
    );
  }

  void _previousStepIntroduction(PreviousStepIntroduction event, Emitter<IntroductionState> emitter){
    final state = this.state;
    emit(
        IntroductionState(
          introductionFinish: state.introductionFinish,
          stepIntroduction: state.stepIntroduction - 1,
        )
    );
  }

  @override
  IntroductionState? fromJson(Map<String, dynamic> json) {
    return IntroductionState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(IntroductionState state) {
    return state.toMap();
  }

}


