import 'package:equatable/equatable.dart';

class SearchInfo extends Equatable {
  const SearchInfo({this.textSnippet});

  factory SearchInfo.fromJson(Map<String, dynamic> json) =>
      SearchInfo(textSnippet: json['textSnippet'] as String?);
  final String? textSnippet;

  Map<String, dynamic> toJson() => {'textSnippet': textSnippet};

  @override
  List<Object?> get props => [textSnippet];
}
