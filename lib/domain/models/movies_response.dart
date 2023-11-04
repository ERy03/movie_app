import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:movie_app/domain/models/movie.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class MoviesResponse {
  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  MoviesResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  MoviesResponse copyWith({
    int? page,
    List<Movie>? results,
    int? totalPages,
    int? totalResults,
  }) {
    return MoviesResponse(
      page: page ?? this.page,
      results: results ?? this.results,
      totalPages: totalPages ?? this.totalPages,
      totalResults: totalResults ?? this.totalResults,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'page': page,
      'results': results.map((x) => x.toMap()).toList(),
      'total_pages': totalPages,
      'total_results': totalResults,
    };
  }

  factory MoviesResponse.fromMap(Map<String, dynamic> map) {
    return MoviesResponse(
      page: map['page'] as int,
      results: List<Movie>.from(
        (map['results'] as List<int>).map<Movie>(
          (x) => Movie.fromMap(x as Map<String, dynamic>),
        ),
      ),
      totalPages: map['total_pages'] as int,
      totalResults: map['total_results'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory MoviesResponse.fromJson(String source) =>
      MoviesResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MoviesResponse(page: $page, results: $results, total_pages: $totalPages, total_results: $totalResults)';
  }

  @override
  bool operator ==(covariant MoviesResponse other) {
    if (identical(this, other)) return true;

    return other.page == page &&
        listEquals(other.results, results) &&
        other.totalPages == totalPages &&
        other.totalResults == totalResults;
  }

  @override
  int get hashCode {
    return page.hashCode ^
        results.hashCode ^
        totalPages.hashCode ^
        totalResults.hashCode;
  }
}
