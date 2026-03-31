import 'package:add_to_cart_animation/add_to_cart_animation.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
// import 'package:greengrocer/src/pages/auth/sign_in_screen.dart';
import 'package:greengrocer/src/pages/home/components/category_tile.dart';
// ignore: library_prefixes
import 'package:greengrocer/src/config/app_data.dart' as appData;
import 'package:greengrocer/src/pages/home/components/item_tile.dart';
import 'package:greengrocer/src/services/utils_services.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String selectedCategory = 'Frutas';

  GlobalKey<CartIconKey> globalKeyCartItems = GlobalKey<CartIconKey>();

  late Function(GlobalKey) runAddToCartAnimation;

 Future<void> itemSelectedCartAnimations(GlobalKey gkImage) async {
    await runAddToCartAnimation(gkImage);

    await globalKeyCartItems.currentState!.runCartAnimation('1');
  }

   final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app Bar
      appBar: AppBar(
        // leading: IconButton(
        //   color: Colors.black,
        //   onPressed: () {
        //     Navigator.of(context).pushReplacement(
        //       MaterialPageRoute(
        //         builder: (c) {
        //           return const SignInScreen();
        //         },
        //       ),
        //     );
        //   },
        //   icon: Icon(Icons.arrow_back),
        // ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            style: TextStyle(fontSize: 30),
            children: [
              TextSpan(
                text: "Green",
                style: TextStyle(color: CustomColors.customSwatchColor),
              ),
              TextSpan(
                text: "Grocer",
                style: TextStyle(color: CustomColors.customContrastColor),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 26, right: 16),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                alignment: Alignment.topRight,
                offset: Offset(-5,-5),// ajusta o posicionamento do circulo, sem este comando o circulo fica afastado do carrinho 
                backgroundColor: CustomColors.customContrastColor,
                label: const Text(
                  '2',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                child: AddToCartIcon(
                  key: globalKeyCartItems,
                  icon: Icon(
                    Icons.shopping_cart,
                    color: CustomColors.customSwatchColor,
                  ),
                 badgeOptions: const BadgeOptions(
                  active: false, //para remover o badge do carrinho, pois ja vem com o circulo.
                 ),
                ),
              ),
            ),
          ),
        ],
      ),

      body: AddToCartAnimation(
         //animação
        cartKey: globalKeyCartItems,
        createAddToCartAnimation: (addToCartAnimationMethod) {
          runAddToCartAnimation = addToCartAnimationMethod;
        },
        child: Column(
          children: [
            // Campo de Pesquisa
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                  hintText: 'Pesquise aqui...',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: CustomColors.customContrastColor,
                    size: 21,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none),
                  ),
                ),
              ),
            ),
 
            // Categorias
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return CategoryTile(
                    onPressed: () {
                      setState(() {
                        selectedCategory = appData.categories[index];
                      });
                    },
                    category: appData.categories[index],
                    isSelected: appData.categories[index] == selectedCategory,
                  );
                },
                separatorBuilder:(
                  context, index) => SizedBox(
                    width: 10,
                    ),
                itemCount: appData.categories.length,
              ),
            ),

            // Grid
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 9 / 11.5,
                ),
                itemCount: appData.items.length,
                itemBuilder: (_, index) {
                  return ItemTile(
                    item: appData.items[index],
                    cartAnimationMethod: itemSelectedCartAnimations,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
