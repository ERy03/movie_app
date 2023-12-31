import 'package:dio/dio.dart';
import 'package:movie_app/domain/models/movie.dart';
import 'package:movie_app/domain/models/movies_response.dart';
import 'package:movie_app/env/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_repository.g.dart';

class MovieRepository {
  MovieRepository({required this.dio});

  final Dio dio;

  Future<List<Movie>> fetchPopularMovies() async {
    final response = await dio.get(
      'https://api.themoviedb.org/3/movie/popular?api_key=${Env.apiKey}',
    );
    final movies = MoviesResponse.fromMap(response.data);
    print(movies);
    return movies.results;
  }
}

@riverpod
Dio dio(DioRef ref) => Dio();

@riverpod
MovieRepository movieRepository(MovieRepositoryRef ref) => MovieRepository(
      dio: ref.watch(dioProvider),
    );
