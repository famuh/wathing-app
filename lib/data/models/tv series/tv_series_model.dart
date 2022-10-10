
import 'package:ditonton/domain/entities/tvSeries.dart';
import 'package:equatable/equatable.dart';


class TvSeriesModel extends Equatable{
  TvSeriesModel({
    this.backdropPath,
    required this.firstAirDate,
    required this.genreIds,
    required this.id,
    required this.title,
    required this.originCountry,
    required this.originalName,
    required this.overview,
    required this.popularity,
    this.posterPath,
    required this.voteAverage,
    required this.voteCount,
  });

  final String? backdropPath;
  final String firstAirDate;
  final List<int> genreIds;
  final int id;
  final String title;
  final List<String> originCountry;
  final String originalName;
  final String overview;
  final double popularity;
  final String? posterPath;
  final double voteAverage;
  final int voteCount;

  factory TvSeriesModel.fromJson(Map<String, dynamic> json) => TvSeriesModel(
        backdropPath: json["backdrop_path"],
        firstAirDate: json["first_air_date"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        title: json["name"],
        originCountry: List<String>.from(json["origin_country"].map((x) => x)),
        originalName: json["original_name"],
        overview: json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
      );

  Map<String, dynamic> toJson() => {
        "backdrop_path": backdropPath,
        "first_air_date":
            "${firstAirDate.padLeft(4, '0')}-${firstAirDate.padLeft(2, '0')}-${firstAirDate.padLeft(2, '0')}",
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "id": id,
        "title": title,
        "origin_country": List<dynamic>.from(originCountry.map((x) => x)),
        "original_name": originalName,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "vote_average": voteAverage,
        "vote_count": voteCount,
      };
  
  TvSeries toEntity(){
    return TvSeries(
      backdropPath: this.backdropPath,
      firstAirDate: this.firstAirDate,
      genreIds: this.genreIds,
      id: this.id,
      originCountry: this.originCountry,
      originalName: this.originalName,
      overview: this.overview,
      popularity: this.popularity,
      posterPath: this.posterPath,
      title: this.title,
      voteAverage: this.voteAverage,
      voteCount: this.voteCount
    );
  }

  @override
  List<Object?> get props => [
    backdropPath,
    firstAirDate,
    genreIds,
    id,
    originCountry,
    originalName,
    overview,
    popularity,
    posterPath,
    title,
    voteAverage,
    voteCount
  ];
}