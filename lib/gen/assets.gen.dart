/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $FontsGen {
  const $FontsGen();

  /// File path: fonts/Roboto-Black.ttf
  String get robotoBlack => 'fonts/Roboto-Black.ttf';

  /// File path: fonts/Roboto-Bold.ttf
  String get robotoBold => 'fonts/Roboto-Bold.ttf';

  /// File path: fonts/Roboto-Light.ttf
  String get robotoLight => 'fonts/Roboto-Light.ttf';

  /// File path: fonts/Roboto-Medium.ttf
  String get robotoMedium => 'fonts/Roboto-Medium.ttf';

  /// File path: fonts/Roboto-Regular.ttf
  String get robotoRegular => 'fonts/Roboto-Regular.ttf';

  /// File path: fonts/Roboto-Thin.ttf
  String get robotoThin => 'fonts/Roboto-Thin.ttf';
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_assign_role.svg
  SvgGenImage get icAssignRole =>
      const SvgGenImage('assets/icons/ic_assign_role.svg');

  /// File path: assets/icons/ic_batch.svg
  SvgGenImage get icBatch => const SvgGenImage('assets/icons/ic_batch.svg');

  /// File path: assets/icons/ic_dashboard.svg
  SvgGenImage get icDashboard =>
      const SvgGenImage('assets/icons/ic_dashboard.svg');

  /// File path: assets/icons/ic_logout.svg
  SvgGenImage get icLogout => const SvgGenImage('assets/icons/ic_logout.svg');

  /// File path: assets/icons/ic_noti.svg
  SvgGenImage get icNoti => const SvgGenImage('assets/icons/ic_noti.svg');

  /// File path: assets/icons/ic_truck.svg
  SvgGenImage get icTruck => const SvgGenImage('assets/icons/ic_truck.svg');

  /// File path: assets/icons/ic_user.svg
  SvgGenImage get icUser => const SvgGenImage('assets/icons/ic_user.svg');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/desktop_login_background.png
  AssetGenImage get desktopLoginBackground =>
      const AssetGenImage('assets/images/desktop_login_background.png');

  /// File path: assets/images/image_truck.png
  AssetGenImage get imageTruck =>
      const AssetGenImage('assets/images/image_truck.png');

  /// File path: assets/images/logo_metamask.png
  AssetGenImage get logoMetamask =>
      const AssetGenImage('assets/images/logo_metamask.png');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $FontsGen fonts = $FontsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
