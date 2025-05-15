import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stream_provider/ticker/pages/ticker_provider.dart';

class TickerScreen extends ConsumerWidget {
  const TickerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tick = ref.watch(tickerProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Ticker")),
      body: Center(
        child: tick.when(
          data: (text) {
            return Text(text.toString());
          },
          error: (e, str) {
            return Text(e.toString());
          },
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}
