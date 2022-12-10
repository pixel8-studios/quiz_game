import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class QuestionsEntity {
  String question;
  String answer;
  String correctAnswer;

  QuestionsEntity({
    required this.question,
    required this.answer,
    required this.correctAnswer,
  });

  QuestionsEntity copyWith({
    String? question,
    String? answer,
    String? correctAnswer,
  }) {
    return QuestionsEntity(
      question: question ?? this.question,
      answer: answer ?? this.answer,
      correctAnswer: correctAnswer ?? this.correctAnswer,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'question': question,
      'answer': answer,
      'correctAnswer': correctAnswer,
    };
  }

  factory QuestionsEntity.fromMap(Map<String, dynamic> map) {
    return QuestionsEntity(
      question: map['question'] ?? '',
      answer: map['answer'] ?? '',
      correctAnswer: map['correctAnswer'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionsEntity.fromJson(String source) =>
      QuestionsEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'QuestionsEntity(question: $question, answer: $answer, correctAnswer: $correctAnswer)';

  @override
  bool operator ==(covariant QuestionsEntity other) {
    if (identical(this, other)) return true;

    return other.question == question &&
        other.answer == answer &&
        other.correctAnswer == correctAnswer;
  }

  @override
  int get hashCode =>
      question.hashCode ^ answer.hashCode ^ correctAnswer.hashCode;
}
