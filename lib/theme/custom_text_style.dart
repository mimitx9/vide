import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLarge16_1 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLarge16_2 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLarge16_3 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargeOnPrimaryContainer16 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
      );
  static get bodyLargeOrange400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.orange400,
      );
  static get bodyLargeOrange40016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.orange400,
        fontSize: 16.fSize,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 16.fSize,
      );
  static get bodyLargePrimaryContainer_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyLarge_2 => theme.textTheme.bodyLarge!;
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumOnPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumOnPrimaryContainer_2 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.5),
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodyMedium_2 => theme.textTheme.bodyMedium!;
  static get bodyMedium_3 => theme.textTheme.bodyMedium!;
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallOnPrimaryContainer_1 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallOrange400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange400,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.44),
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.5),
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  static get bodySmall_2 => theme.textTheme.bodySmall!;
  // Label text style
  static get labelLargeGray100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w800,
      );
  // Title text style
  static get titleSmallOrange400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.orange400,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
