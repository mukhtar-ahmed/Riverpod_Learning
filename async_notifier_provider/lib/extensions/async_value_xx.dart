import 'package:riverpod_annotation/riverpod_annotation.dart';

extension AsyncValueXX on AsyncValue {
  String get toStr {
    final content = [
      if (isLoading && this is! AsyncLoading) 'isLoading: $isLoading',
      if (hasValue) 'value: $value',
      if (hasError) ...['error: $error'],
    ].join(', ');

    return '$runtimeType($content)';
  }

  String get props {
    return "isLoading: $isLoading, isRefreshing: $isRefreshing, isReload: $isReloading \n hasValue: $hasValue, hasError: $hasError";
  }
}
