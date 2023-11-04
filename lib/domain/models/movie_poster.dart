enum PosterSize {
  w500(size: 'w500');

  const PosterSize({required this.size});
  final String size;
}

class MoviePoster {
  static String baseUrl = "https://image.tmdb.org/t/p/";

  static String getPosterUrl(String posterPath) {
    return baseUrl + PosterSize.w500.size + posterPath;
  }
}
