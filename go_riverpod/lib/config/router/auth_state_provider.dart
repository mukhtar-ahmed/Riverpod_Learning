import 'package:go_riverpod/main.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_state_provider.g.dart';

@riverpod
class AuthState extends _$AuthState {
  @override
  bool build() {
    return ref.watch(sharedPreferencesProvider).getBool('auth') ?? false;
  }

  Future<void> setAuthenticate(bool val) async {
    await ref.read(sharedPreferencesProvider).setBool('auth', val);
    state = val;
  }
}
