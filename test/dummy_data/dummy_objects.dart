import 'package:ditonton/data/models/movie/movie_table.dart';
import 'package:ditonton/data/models/tv%20series/tv_series_table.dart';
import 'package:ditonton/domain/entities/genre.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/movie_detail.dart';
import 'package:ditonton/domain/entities/tvSeries.dart';
import 'package:ditonton/domain/entities/tv_series_detail.dart';

// MOVIE
final testMovie = Movie(
  adult: false,
  backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
  genreIds: [14, 28],
  id: 557,
  originalTitle: 'Spider-Man',
  overview:
      'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
  popularity: 60.441,
  posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
  releaseDate: '2002-05-01',
  title: 'Spider-Man',
  video: false,
  voteAverage: 7.2,
  voteCount: 13507,
);

final testMovieList = [testMovie];

final testMovieDetail = MovieDetail(
  adult: false,
  backdropPath: 'backdropPath',
  genres: [Genre(id: 1, name: 'Action')],
  id: 1,
  originalTitle: 'originalTitle',
  overview: 'overview',
  posterPath: 'posterPath',
  releaseDate: 'releaseDate',
  runtime: 120,
  title: 'title',
  voteAverage: 1,
  voteCount: 1,
);

final testWatchlistMovie = Movie.watchlist(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testMovieTable = MovieTable(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testMovieMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'title': 'title',
};

// TV SERIES
final testTvSeries = TvSeries(
    backdropPath: "/rkB4LyZHo1NHXFEDHl9vSD9r1lI.jpg",
    firstAirDate: '2021-11-06',
    genreIds: [16, 10765, 10759, 18],
    id: 94605,
    name: 'Arcane',
    originCountry: ["US"],
    originalLanguage: "en",
    originalName: 'Arcane',
    overview:
        'Amid the stark discord of twin cities Piltover and Zaun, two sisters fight on rival sides of a war between magic technologies and clashing convictions.',
    popularity: 134.783,
    posterPath: "/xQ6GijOFnxTyUzqiwGpVxgfcgqI.jpg",
    voteAverage: 8.7,
    voteCount: 2593);

final testTvSeriesList = [testTvSeries];

final testTvSeriesDetail = TvSeriesDetail(
    adult: false,
    backdropPath: 'backdropPath',
    episodeRunTime: [120],
    firstAirDate: "firstAirDate",
    genres: [Genre(id: 1, name: 'Action')],
    homepage: "https://google.com",
    id: 1,
    inProduction: false,
    languages: ["en"],
    lastAirDate: "lastAirDate",
    name: 'Title',
    numberOfEpisodes: 1,
    numberOfSeasons: 1,
    originCountry: ["US"],
    originalLanguage: "en",
    originalName: 'originalName',
    overview: 'Overview',
    popularity: 1.0,
    posterPath: 'posterPath',
    status: "status",
    tagline: "tagline",
    type: "type",
    voteAverage: 1.0,
    voteCount: 1);

final testWatchlistTvSeries = TvSeries.watchlist(
    id: 1, overview: 'Overview', posterPath: 'posterPath', name: 'Title');

final testTvSeriesTable = TvSeriesTable(
    id: 1, title: 'Title', posterPath: 'posterPath', overview: 'Overview');

final testTvSeriesMap = {
  'id': 1,
  'title': 'Title',
  'posterPath': 'posterPath',
  'overview': 'Overview'
};
