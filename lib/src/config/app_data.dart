import 'package:greengrocer/src/models/cart_item_model.dart';
import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/models/order_model.dart';
import 'package:greengrocer/src/models/user_model.dart';

ItemModel apple = ItemModel(
  itemName: 'Apple',
  imgUrl: 'assets/fruits/apple.png',
  unit: 'kg',
  price: 5.99,
  description:
      'A maçã comercializada é uma variedade de maçã que atende a padrões específicos de qualidade e segurança. As maçãs são classificadas em diferentes categorias de acordo com o peso, tamanho e a presença de defeitos. As variedades mais consumidas no Brasil incluem Fuji, Gala, Red, Verde, Melrose e Brasil. Essas maçãs são conhecidas por sua doçura, crocância e longa vida útil após a colheita.',
);

ItemModel goiaba = ItemModel(
  itemName: 'Goiaba',
  imgUrl: 'assets/fruits/goiaba.png',
  unit: 'kg',
  price: 6.99,
  description: 'Fresh red goiaba',
);

ItemModel kiwi = ItemModel(
  itemName: 'Kiwi',
  imgUrl: 'assets/fruits/kiwi.png',
  unit: 'kg',
  price: 10.99,
  description: 'Fresh red kiwi',
);

ItemModel mamao = ItemModel(
  itemName: 'Mamão',
  imgUrl: 'assets/fruits/mamão.png',
  unit: 'kg',
  price: 16.99,
  description: 'Fresh red mamão',
);

ItemModel manga = ItemModel(
  itemName: 'Manga',
  imgUrl: 'assets/fruits/manga.png',
  unit: 'un',
  price: 8.99,
  description: 'Fresh red manga',
);

ItemModel uva = ItemModel(
  itemName: 'Uva',
  imgUrl: 'assets/fruits/uva.png',
  unit: 'kg',
  price: 15.99,
  description: 'Fresh red uva',
);

List<ItemModel> items = [apple, goiaba, kiwi, mamao, manga, uva];

List<String> categories = [
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais',
];

List<CartItemModel> cartItems = [
  CartItemModel(item: apple, quantity: 1),
  CartItemModel(item: manga, quantity: 1),
  CartItemModel(item: uva, quantity: 3),
];

UserModel user = UserModel(
  name: 'John Doe',
  email: 'john.doe@example.com',
  phone: '(11) 99999-9999',
  cpf: '123.456.789-00',
  password: '',
);


List<OrderModel> orders = [
  // Pedido 01
  OrderModel(
    copyAndPaste: 'q1w2e3r4t5y6',
    createdDateTime: DateTime.parse(
      '2026-06-08 10:00:10.458'
      ),
    overdueDateTime: DateTime.parse(
      '2026-06-08 11:00:10.458'
      ),
    id: 'asd6a54da6s2d1',
    status: 'pending_payment',
    total: 11.5,
    items: [
      CartItemModel(
        item: apple, 
        quantity: 2,
        ),
      CartItemModel(
        item: manga, 
        quantity: 2,
      ),
    ],
  ),

  // Pedido 02
  OrderModel(
    copyAndPaste: 'q1w2e3r4t5y6',
    createdDateTime: DateTime.parse(
      '2026-06-08 10:00:10.458'
      ),
    overdueDateTime: DateTime.parse(
      '2026-06-08 11:00:10.458'
      ),
    id: 'a65s4d6a2s1d6a5s',
    status: 'delivered',
    total: 11.5,
    items: [
      CartItemModel(
        item: goiaba, 
        quantity: 1,
        ),
      ],
  ),
];
