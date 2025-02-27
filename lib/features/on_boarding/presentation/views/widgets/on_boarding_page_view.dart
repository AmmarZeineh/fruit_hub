import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisiable: true,
          image: Assets.imagesOnBoardingImage1,
          background: Assets.imagesOnBoardingBackground1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'مرحبًا بك في',
                style: TextStyles.bold23,
              ),
              Text(
                ' HUB',
                style: TextStyles.bold23.copyWith(color: AppColors.secondaryColor),
              ),
              Text(
                'Fruit',
                style: TextStyles.bold23.copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        ),
        const PageViewItem(
          isVisiable: false,
          image: Assets.imagesOnBoardingImage2,
          background: Assets.imagesOnBoardingBackground2,
          title: Text(
            'ابحث وتسوق',
            style: TextStyles.bold23,
          ),
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        ),
      ],
    );
  }
}
