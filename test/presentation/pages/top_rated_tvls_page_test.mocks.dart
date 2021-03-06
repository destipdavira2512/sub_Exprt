// Mocks generated by Mockito 5.1.0 from annotations
// in cinta_film/test/presentation/pages/top_rated_tvls_page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;
import 'dart:ui' as _i7;

import 'package:cinta_film/common/state_enum.dart' as _i5;
import 'package:cinta_film/domain/entities/tvls/tvls.dart' as _i4;
import 'package:cinta_film/domain/usecases/tvls/get_top_rated_tvls.dart' as _i2;
import 'package:cinta_film/presentasi/provider/tvls/top_rated_tvls_notifier.dart'
    as _i3;
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

class _FakeGetTopRatedTvls_0 extends _i1.Fake implements _i2.GetTopRatedTvls {}

/// A class which mocks [TopRatedTvlsNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockTopRatedTvlsNotifier extends _i1.Mock
    implements _i3.TopRatedTvlsNotifier {
  MockTopRatedTvlsNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetTopRatedTvls get getTopRatedTv =>
      (super.noSuchMethod(Invocation.getter(#getTopRatedTv),
          returnValue: _FakeGetTopRatedTvls_0()) as _i2.GetTopRatedTvls);
  @override
  List<_i4.Tvls> get tv =>
      (super.noSuchMethod(Invocation.getter(#tv), returnValue: <_i4.Tvls>[])
          as List<_i4.Tvls>);
  @override
  String get message =>
      (super.noSuchMethod(Invocation.getter(#message), returnValue: '')
          as String);
  @override
  _i5.RequestState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: _i5.RequestState.Empty) as _i5.RequestState);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i6.Future<void> fetchTopRatedTv() =>
      (super.noSuchMethod(Invocation.method(#fetchTopRatedTv, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  void addListener(_i7.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i7.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}
