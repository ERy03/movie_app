import 'dart:convert';

import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Movie {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  Movie({
    this.adult,
    this.backdropPath,
    this.genreIds,
    required this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    required this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  Movie copyWith({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) {
    return Movie(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      genreIds: genreIds ?? this.genreIds,
      id: id ?? this.id,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adult': adult,
      'backdrop_path': backdropPath,
      'genre_ids': genreIds,
      'id': id,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      adult: map['adult'] != null ? map['adult'] as bool : null,
      backdropPath:
          map['backdrop_path'] != null ? map['backdrop_path'] as String : null,
      genreIds: map['genre_ids'] != null
          ? List<int>.from((map['genre_ids'] as List<int>))
          : null,
      id: map['id'] as int,
      originalLanguage: map['original_language'] != null
          ? map['original_language'] as String
          : null,
      originalTitle: map['original_title'] != null
          ? map['original_title'] as String
          : null,
      overview: map['overview'] != null ? map['overview'] as String : null,
      popularity:
          map['popularity'] != null ? map['popularity'] as double : null,
      posterPath:
          map['poster_path'] != null ? map['poster_path'] as String : null,
      releaseDate:
          map['release_date'] != null ? map['release_date'] as String : null,
      title: map['title'] as String,
      video: map['video'] != null ? map['video'] as bool : null,
      voteAverage:
          map['vote_average'] != null ? map['vote_average'] as double : null,
      voteCount: map['vote_count'] != null ? map['vote_count'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie.fromJson(String source) =>
      Movie.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Movie(adult: $adult, backdrop_path: $backdropPath, genre_ids: $genreIds, id: $id, original_language: $originalLanguage, original_title: $originalTitle, overview: $overview, popularity: $popularity, poster_path: $posterPath, release_date: $releaseDate, title: $title, video: $video, vote_average: $voteAverage, vote_count: $voteCount)';
  }

  @override
  bool operator ==(covariant Movie other) {
    if (identical(this, other)) return true;

    return other.adult == adult &&
        other.backdropPath == backdropPath &&
        listEquals(other.genreIds, genreIds) &&
        other.id == id &&
        other.originalLanguage == originalLanguage &&
        other.originalTitle == originalTitle &&
        other.overview == overview &&
        other.popularity == popularity &&
        other.posterPath == posterPath &&
        other.releaseDate == releaseDate &&
        other.title == title &&
        other.video == video &&
        other.voteAverage == voteAverage &&
        other.voteCount == voteCount;
  }

  @override
  int get hashCode {
    return adult.hashCode ^
        backdropPath.hashCode ^
        genreIds.hashCode ^
        id.hashCode ^
        originalLanguage.hashCode ^
        originalTitle.hashCode ^
        overview.hashCode ^
        popularity.hashCode ^
        posterPath.hashCode ^
        releaseDate.hashCode ^
        title.hashCode ^
        video.hashCode ^
        voteAverage.hashCode ^
        voteCount.hashCode;
  }
}
