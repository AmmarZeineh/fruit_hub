import 'package:fruits_hub/core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String name, activeImage, inActiveImage;

  BottomNavigationBarEntity(
      {required this.name,
      required this.activeImage,
      required this.inActiveImage});
}

List<BottomNavigationBarEntity> get navigationBarItems => [
      BottomNavigationBarEntity(
        name: 'الرئيسية',
        activeImage: Assets.imagesHomeActiveIcon,
        inActiveImage: Assets.imagesHomeInActiveIcon,
      ),
      BottomNavigationBarEntity(
        name: 'المنتجات',
        activeImage: Assets.imagesMyProductsActiveIcon,
        inActiveImage: Assets.imagesMyProductsInActiveIcon,
      ),
      BottomNavigationBarEntity(
        name: 'سلة التسوق',
        activeImage: Assets.imagesShoppingCartActiveIcon,
        inActiveImage: Assets.imagesShoppingCartInActiveIcon,
      ),
      BottomNavigationBarEntity(
        name: 'حسابي',
        activeImage: Assets.imagesMyAccountActiveIcon,
        inActiveImage: Assets.imagesMyAccountInActiveIcon,
      ),
    ];
