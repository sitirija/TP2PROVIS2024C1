import 'package:flutter/material.dart';
import 'package:siti_s_application1/core/utils/size_utils.dart';
import 'package:siti_s_application1/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeMitrWhiteA700 => theme.textTheme.bodyLarge!.mitr.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get bodyLargeMontagaWhiteA700 =>
      theme.textTheme.bodyLarge!.montaga.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  // Mitr text style
  static get mitrWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 96.fSize,
        fontWeight: FontWeight.w400,
      ).mitr;
  // Title text style
  static get titleLargeMitrWhiteA700 =>
      theme.textTheme.titleLarge!.mitr.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get montaga {
    return copyWith(
      fontFamily: 'Montaga',
    );
  }

  TextStyle get mitr {
    return copyWith(
      fontFamily: 'Mitr',
    );
  }

  TextStyle get mongolianBaiti {
    return copyWith(
      fontFamily: 'Mongolian Baiti',
    );
  }

  TextStyle get monda {
    return copyWith(
      fontFamily: 'Monda',
    );
  }
}
