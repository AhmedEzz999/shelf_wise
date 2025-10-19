import 'package:equatable/equatable.dart';

import 'list_price.dart';

class SaleInfo extends Equatable {
  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
    country: json['country'] as String?,
    saleability: json['saleability'] as String?,
    isEbook: json['isEbook'] as bool?,
  );
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final ListPrice? listPrice;

  Map<String, dynamic> toJson() => {
    'country': country,
    'saleability': saleability,
    'isEbook': isEbook,
    'listPrice': isEbook,
  };

  @override
  List<Object?> get props => [country, saleability, isEbook, listPrice];
}
