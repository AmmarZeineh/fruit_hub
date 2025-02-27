import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruits_hub/core/utils/app_font_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/featured_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio: 342 / 158,
      child: SizedBox(
        width: width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  Assets.imagesOnBoardingImage2,
                  width: width * .4,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: svg.Svg(Assets.imagesFeaturedItemShape),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width * .5,
                child: Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        'عروض العيد',
                        style:
                            TextStyles.regular13.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Text(
                        'خصم 50%',
                        style: TextStyles.bold19.copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      FeaturedButton(
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 29,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
