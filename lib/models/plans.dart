import 'package:equatable/equatable.dart';

class Plans extends Equatable {
  final bool isFinished;
  final String title;
  final int id;

  const Plans({
    required this.isFinished,
    required this.title,
    required this.id,
  });

  @override
  List<Object?> get props => [isFinished, title, id];

  Map<String, dynamic> toMap() {
    return {
      'isFinished': this.isFinished,
      'title': this.title,
      'id': this.id,
    };
  }

  factory Plans.fromMap(Map<String, dynamic> map) {
    return Plans(
      isFinished: map['isFinished'] as bool,
      title: map['title'] as String,
      id: map['id'] as int,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is Plans &&
          runtimeType == other.runtimeType &&
          isFinished == other.isFinished &&
          title == other.title &&
          id == other.id;

  @override
  int get hashCode =>
      super.hashCode ^ isFinished.hashCode ^ title.hashCode ^ id.hashCode;

// Plans copyWith({
  //   bool? isFinished,
  //   String? title,
  //   int? id,
  // }) {
  //   return Plans(
  //     isFinished: isFinished ?? this.isFinished,
  //     title: title ?? this.title,
  //     id: id ?? this.id,
  //   );
  // }
  //
  // Map<String, dynamic> toMap() {
  //   return {
  //     'isFinished': isFinished,
  //     'title': title,
  //     'id': id,
  //   };
  // }
  //
  // static Plans fromMap(Map<String, dynamic> map) {
  //   return Plans(
  //     isFinished: map['isFinished'],
  //     title: map['title'],
  //     id: map['id'],
  //   );
  // }
  //
  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //         other is Plans &&
  //             runtimeType == other.runtimeType &&
  //             isFinished == other.isFinished &&
  //             title == other.title &&
  //             id == other.id;
  //
  // @override
  // int get hashCode => isFinished.hashCode ^ title.hashCode ^ id.hashCode;
}