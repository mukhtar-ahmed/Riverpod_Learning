import 'package:flutter/material.dart';
import 'package:flutter_freezed/model/hotel.dart';
import 'package:flutter_freezed/repositories/hotel_repository.dart';

class HoteScreen extends StatefulWidget {
  const HoteScreen({super.key});

  @override
  State<HoteScreen> createState() => _HoteScreenState();
}

class _HoteScreenState extends State<HoteScreen> {
  _fetch() async {
    final List<Hotel> hotels = await fetchHotel();
    print(":::::::::::::::::::::::::::");
    print(hotels[0]);
    print(":::::::::::::::::::::::::::");
  }

  @override
  void initState() {
    _fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
