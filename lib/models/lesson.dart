import 'package:equatable/equatable.dart';

class Lesson extends Equatable {
  final String name;
  final String teacher;
  final String typeLesson;
  final String timeStart;
  final String timeFinish;
  final String classNumber;

  Lesson({
    required this.name,
    required this.teacher,
    required this.typeLesson,
    required this.timeStart,
    required this.timeFinish,
    required this.classNumber,
  });

  @override
  List<Object?> get props => [
    name,
    teacher,
    typeLesson,
    timeStart,
    timeFinish,
    classNumber,
  ];

  Lesson copyWith({
    String? name,
    String? teacher,
    String? typeLesson,
    String? timeStart,
    String? timeFinish,
    String? classNumber,
  }) {
    return Lesson(
      name: name ?? this.name,
      teacher: teacher ?? this.teacher,
      typeLesson: typeLesson ?? this.typeLesson,
      timeStart: timeStart ?? this.timeStart,
      timeFinish: timeFinish ?? this.timeFinish,
      classNumber: classNumber ?? this.classNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'teacher': teacher,
      'typeLesson': typeLesson,
      'timeStart': timeStart,
      'timeFinish': timeFinish,
      'classNumber': classNumber,
    };
  }

  static Lesson fromMap(Map<String, dynamic> map) {
    return Lesson(
      name: map['name'] as String,
      teacher: map['teacher'] as String,
      typeLesson: map['typeLesson'] as String,
      timeStart: map['timeStart'] as String,
      timeFinish: map['timeFinish'] as String,
      classNumber: map['classNumber'] as String,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Lesson &&
        other.name == name &&
        other.teacher == teacher &&
        other.typeLesson == typeLesson &&
        other.timeStart == timeStart &&
        other.timeFinish == timeFinish &&
        other.classNumber == classNumber;
  }
}