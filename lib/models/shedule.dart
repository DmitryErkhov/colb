import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'lesson.dart';

class Schedule extends Equatable {
  final Map<String, List<Lesson>> greenWeek;
  final Map<String, List<Lesson>> whiteWeek;
  final String colorCurrentWeek;

  Schedule({
    required this.greenWeek,
    required this.whiteWeek,
    required this.colorCurrentWeek,
  });

  @override
  List<Object?> get props => [
    greenWeek,
    whiteWeek,
    colorCurrentWeek,
  ];

  Schedule copyWith({
    Map<String, List<Lesson>>? greenWeek,
    Map<String, List<Lesson>>? whiteWeek,
    String? colorCurrentWeek,
  }) {
    return Schedule(
      greenWeek: greenWeek ?? this.greenWeek,
      whiteWeek: whiteWeek ?? this.whiteWeek,
      colorCurrentWeek: colorCurrentWeek ?? this.colorCurrentWeek,
    );
  }

  Map<String, dynamic> toMap() {
    List<Map<String, dynamic>> greenWeekList = greenWeek.entries.map((entry) => {
      'day': entry.key,
      'lessons': entry.value.map((lesson) => lesson.toMap()).toList(),
    }).toList();

    List<Map<String, dynamic>> whiteWeekList = whiteWeek.entries.map((entry) => {
      'day': entry.key,
      'lessons': entry.value.map((lesson) => lesson.toMap()).toList(),
    }).toList();

    return {
      'greenWeek': greenWeekList,
      'whiteWeek': whiteWeekList,
      'colorCurrentWeek': colorCurrentWeek,
    };
  }

  static Schedule fromMap(Map<String, dynamic> map) {
    List<Map<String, dynamic>> greenWeekList = List<Map<String, dynamic>>.from(map['greenWeek']);
    Map<String, List<Lesson>> greenWeek = {};
    for (Map<String, dynamic> entry in greenWeekList) {
      List<Lesson> lessons = List<Map<String, dynamic>>.from(entry['lessons']).map((map) => Lesson.fromMap(map)).toList();
      greenWeek[entry['day']] = lessons;
    }

    List<Map<String, dynamic>> whiteWeekList = List<Map<String, dynamic>>.from(map['whiteWeek']);
    Map<String, List<Lesson>> whiteWeek = {};
    for (Map<String, dynamic> entry in whiteWeekList) {
      List<Lesson> lessons = List<Map<String, dynamic>>.from(entry['lessons']).map((map) => Lesson.fromMap(map)).toList();
      whiteWeek[entry['day']] = lessons;
    }

    return Schedule(
      greenWeek: greenWeek,
      whiteWeek: whiteWeek,
      colorCurrentWeek: map['colorCurrentWeek'] as String,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Schedule &&
        mapEquals(other.greenWeek, greenWeek) &&
        mapEquals(other.whiteWeek, whiteWeek) &&
        other.colorCurrentWeek == colorCurrentWeek;
  }
}