import 'package:freezed_annotation/freezed_annotation.dart';
part 'hotel.freezed.dart';

part 'hotel.g.dart';

@freezed
abstract class Hotel with _$Hotel {
  @JsonSerializable(explicitToJson: true)
  const factory Hotel({
    required name,
    required int classification,
    required String city,
    @JsonKey(name: 'parking_lot_capacity') int? parkingLotCapacity,
    @Default([]) List<Review> reviews,
  }) = _Hotel;

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}

@freezed
abstract class Review with _$Review {
  const factory Review({double? score, String? review}) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
