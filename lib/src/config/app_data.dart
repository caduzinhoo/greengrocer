import 'package:greengrocer/src/models/item_model.dart';

ItemModel apple = ItemModel(
  itemName: 'Apple',
  imgUrl: 'assets/fruits/apple.png',
  unit: 'kg',
  price: 5.99,
  description: 'Fresh red apples'
);

ItemModel goiaba = ItemModel(
  itemName: 'Goiaba',
  imgUrl: 'assets/fruits/goiaba.png',
  unit: 'kg',
  price: 6.99,
  description: 'Fresh red goiaba'
);

ItemModel kiwi = ItemModel(
  itemName: 'Kiwi',
  imgUrl: 'assets/fruits/kiwi.png',
  unit: 'kg',
  price: 10.99,
  description: 'Fresh red kiwi'
);

ItemModel mamao = ItemModel(
  itemName: 'Mamão',
  imgUrl: 'assets/fruits/mamão.png',
  unit: 'kg',
  price: 16.99,
  description: 'Fresh red mamão'
);

ItemModel manga = ItemModel(
  itemName: 'Manga',
  imgUrl: 'assets/fruits/manga.png',
  unit: 'kg',
  price: 8.99,
  description: 'Fresh red manga'
);

ItemModel uva = ItemModel(
  itemName: 'Uva',
  imgUrl: 'assets/fruits/uva.png',
  unit: 'kg',
  price: 15.99,
  description: 'Fresh red uva'
);

List<ItemModel> items = [
  apple,
  goiaba, 
  kiwi, 
  mamao, 
  manga, 
  uva
  
];

List<String> categories = [
  'Frutas', 
  'Grãos', 
  'Verduras', 
  'Temperos',
  'Cereais',
  ];
