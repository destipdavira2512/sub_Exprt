// Mocks generated by Mockito 5.1.0 from annotations
// in cinta_film/test/presentation/provider/popular_movies_notifier_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:cinta_film/common/failure.dart' as _i6;
import 'package:cinta_film/domain/entities/film.dart' as _i7;
import 'package:cinta_film/domain/repositories/movie_repository.dart' as _i2;
import 'package:cinta_film/domain/usecases/ambil_data_film_terpopuler.dart'
    as _i4;
import 'package:dartz/dartz.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeRepositoryFilm_0 extends _i1.Fake implements _i2.RepositoryFilm {}

class _FakeEither_1<L, R> extends _i1.Fake implements _i3.Either<L, R> {}

/// A class which mocks [ClassFilmTerPopuler].
///
/// See the documentation for Mockito's code generation for more information.
class MockClassFilmTerPopuler extends _i1.Mock
    implements _i4.ClassFilmTerPopuler {
  MockClassFilmTerPopuler() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.RepositoryFilm get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeRepositoryFilm_0()) as _i2.RepositoryFilm);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i7.Film>>> execute() =>
      (super.noSuchMethod(Invocation.method(#execute, []),
          returnValue: Future<_i3.Either<_i6.Failure, List<_i7.Film>>>.value(
              _FakeEither_1<_i6.Failure, List<_i7.Film>>())) as _i5
          .Future<_i3.Either<_i6.Failure, List<_i7.Film>>>);
}