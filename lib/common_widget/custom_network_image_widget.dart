import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';
import '../networks/endpoints.dart';

class ProfileNetworkImageWidget extends StatelessWidget {
  final String urls;
  const ProfileNetworkImageWidget({super.key, required this.urls});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:"$url/$urls",
      fit: BoxFit.cover,
      placeholder: (context, url) => 
      // customShimmer(),
          Container(
            color: AppColors.cFFFFFF,
            child: 
             SvgPicture.asset(Assets.icons.uploadImage, fit: BoxFit.cover, )),
      errorWidget: (context, string, url) =>  
      // customShimmer()
          // Image.asset(Assets.images.placeholderImage.path),
          Container(
            color: AppColors.cFFFFFF,
            child: SvgPicture.asset(Assets.icons.uploadImage, fit: BoxFit.cover, )
              // child: const Icon(Icons.error),
            ),
    );
  }
}
