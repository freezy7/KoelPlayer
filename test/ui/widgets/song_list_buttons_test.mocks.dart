// Mocks generated by Mockito 5.0.12 from annotations
// in app/test/ui/widgets/song_list_buttons_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;
import 'dart:ui' as _i7;

import 'package:app/models/song.dart' as _i5;
import 'package:app/providers/audio_provider.dart' as _i4;
import 'package:assets_audio_player/assets_audio_player.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:rxdart/rxdart.dart' as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeAssetsAudioPlayer extends _i1.Fake implements _i2.AssetsAudioPlayer {
}

class _FakeValueStream<T> extends _i1.Fake implements _i3.ValueStream<T> {}

/// A class which mocks [AudioProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockAudioProvider extends _i1.Mock implements _i4.AudioProvider {
  MockAudioProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.AssetsAudioPlayer get player =>
      (super.noSuchMethod(Invocation.getter(#player),
          returnValue: _FakeAssetsAudioPlayer()) as _i2.AssetsAudioPlayer);
  @override
  List<_i5.Song> get queuedSongs =>
      (super.noSuchMethod(Invocation.getter(#queuedSongs),
          returnValue: <_i5.Song>[]) as List<_i5.Song>);
  @override
  _i3.ValueStream<_i2.PlayerState> get playerState =>
      (super.noSuchMethod(Invocation.getter(#playerState),
              returnValue: _FakeValueStream<_i2.PlayerState>())
          as _i3.ValueStream<_i2.PlayerState>);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i6.Future<void> init() => (super.noSuchMethod(Invocation.method(#init, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  _i6.Future<bool> queued(_i5.Song? song) =>
      (super.noSuchMethod(Invocation.method(#queued, [song]),
          returnValue: Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  _i6.Future<int> indexInQueue(_i5.Song? song) =>
      (super.noSuchMethod(Invocation.method(#indexInQueue, [song]),
          returnValue: Future<int>.value(0)) as _i6.Future<int>);
  @override
  _i6.Future<void> play({_i5.Song? song}) =>
      (super.noSuchMethod(Invocation.method(#play, [], {#song: song}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> stop() => (super.noSuchMethod(Invocation.method(#stop, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  _i6.Future<int> queueToTop({_i5.Song? song}) =>
      (super.noSuchMethod(Invocation.method(#queueToTop, [], {#song: song}),
          returnValue: Future<int>.value(0)) as _i6.Future<int>);
  @override
  _i6.Future<int> queueToBottom({_i5.Song? song}) =>
      (super.noSuchMethod(Invocation.method(#queueToBottom, [], {#song: song}),
          returnValue: Future<int>.value(0)) as _i6.Future<int>);
  @override
  _i6.Future<int> queueAfterCurrent({_i5.Song? song}) => (super.noSuchMethod(
      Invocation.method(#queueAfterCurrent, [], {#song: song}),
      returnValue: Future<int>.value(0)) as _i6.Future<int>);
  @override
  _i6.Future<bool> playNext() =>
      (super.noSuchMethod(Invocation.method(#playNext, []),
          returnValue: Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  _i6.Future<void> playOrPause() =>
      (super.noSuchMethod(Invocation.method(#playOrPause, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> replaceQueue(List<_i5.Song>? songs,
          {dynamic shuffle = false}) =>
      (super.noSuchMethod(
          Invocation.method(#replaceQueue, [songs], {#shuffle: shuffle}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  void clearQueue() => super.noSuchMethod(Invocation.method(#clearQueue, []),
      returnValueForMissingStub: null);
  @override
  _i6.Future<void> removeFromQueue({_i5.Song? song}) => (super.noSuchMethod(
      Invocation.method(#removeFromQueue, [], {#song: song}),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  void reorderQueue(int? oldIndex, int? newIndex) =>
      super.noSuchMethod(Invocation.method(#reorderQueue, [oldIndex, newIndex]),
          returnValueForMissingStub: null);
  @override
  _i6.Future<void> cleanUpUponLogout() =>
      (super.noSuchMethod(Invocation.method(#cleanUpUponLogout, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  void unsubscribeAll() =>
      super.noSuchMethod(Invocation.method(#unsubscribeAll, []),
          returnValueForMissingStub: null);
  @override
  void subscribe(_i6.StreamSubscription<dynamic>? sub) =>
      super.noSuchMethod(Invocation.method(#subscribe, [sub]),
          returnValueForMissingStub: null);
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
