import 'package:dio/dio.dart';
import 'package:my_netflix_design/data/models/movie_model.dart';
import 'package:my_netflix_design/data/response/movie_response.dart';

const String BASE_API = "https://api.themoviedb.org/3";
const String BASE_IMAGE = "https://image.tmdb.org/t/p/w500";
const String GET_POPULAR = "/movie/popular";

const String API_KEY = "?api_key=c95dbc5539526a49a7a86b0565ef53dc";

class MovieRepository {
  Dio _dio = Dio();

  Future<List<MovieModel>> fetchPopularMovies() async {
    List<MovieModel> movies = [];
    try {
      var path = "$BASE_API$GET_POPULAR$API_KEY";
      var response = await _dio.get(path);
      var jsonResponse = (response.data as Map<String, dynamic>);

      var movieResponse = MovieResponse.fromJson(jsonResponse);
      movies = movieResponse.results;
      print(movies.length);
    } catch (e) {
      print(e.toString());
    }

    return movies;
  }

  Future<List<String>> getPopularImageUrl() async {
    MovieRepository movieRepository = MovieRepository();
    List<MovieModel> listMovies = await movieRepository.fetchPopularMovies();
    //String imageUrl = "$BASE_IMAGE" + listMovies[16].posterPath;
    List<String> imageUrl = [];
    for (MovieModel mov in listMovies)
      imageUrl.add("$BASE_IMAGE" + mov.posterPath);
    return imageUrl;
  }
}
