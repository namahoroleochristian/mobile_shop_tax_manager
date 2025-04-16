class itemRegistrationData {
  final String names;
  final String barcode;
  final String quantity;
  final String unit;
  final String owner;
  final bool sold;
  final String category;
  final dynamic buyingprice;
  final dynamic sellingPrice;

  itemRegistrationData(
      {required this.names,
      required this.quantity,
      required this.barcode,
      required this.buyingprice,
      required this.category,
      required this.owner,
      required this.sellingPrice,
      required this.sold,
      required this.unit
      });

    Map<String, dynamic> toJson()=>{
      'name':names,
  'barcode':barcode ,
  "quantity":quantity,
  "unit":unit,
  "sold":sold,
  "category":category,
  'buyingPrice': buyingprice,
  "sellingPrice":sellingPrice
    };
}
