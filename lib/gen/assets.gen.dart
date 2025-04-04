/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/images/Avatar.png');

  /// File path: assets/images/TopWoman.png
  AssetGenImage get topWoman =>
      const AssetGenImage('assets/images/TopWoman.png');

  /// File path: assets/images/TripToGreece.png
  AssetGenImage get tripToGreece =>
      const AssetGenImage('assets/images/TripToGreece.png');

  /// Directory path: assets/images/brands
  $AssetsImagesBrandsGen get brands => const $AssetsImagesBrandsGen();

  /// Directory path: assets/images/destinations
  $AssetsImagesDestinationsGen get destinations =>
      const $AssetsImagesDestinationsGen();

  /// Directory path: assets/images/svg
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();

  /// List of all assets
  List<AssetGenImage> get values => [avatar, topWoman, tripToGreece];
}

class $AssetsImagesBrandsGen {
  const $AssetsImagesBrandsGen();

  /// File path: assets/images/brands/Alitalia.png
  AssetGenImage get alitalia =>
      const AssetGenImage('assets/images/brands/Alitalia.png');

  /// File path: assets/images/brands/Axon.png
  AssetGenImage get axon =>
      const AssetGenImage('assets/images/brands/Axon.png');

  /// File path: assets/images/brands/Expedia.png
  AssetGenImage get expedia =>
      const AssetGenImage('assets/images/brands/Expedia.png');

  /// File path: assets/images/brands/JetStar.png
  AssetGenImage get jetStar =>
      const AssetGenImage('assets/images/brands/JetStar.png');

  /// File path: assets/images/brands/Qantas.png
  AssetGenImage get qantas =>
      const AssetGenImage('assets/images/brands/Qantas.png');

  /// List of all assets
  List<AssetGenImage> get values => [alitalia, axon, expedia, jetStar, qantas];
}

class $AssetsImagesDestinationsGen {
  const $AssetsImagesDestinationsGen();

  /// File path: assets/images/destinations/FullEurope.png
  AssetGenImage get fullEurope =>
      const AssetGenImage('assets/images/destinations/FullEurope.png');

  /// File path: assets/images/destinations/LondonUk.jpeg
  AssetGenImage get londonUk =>
      const AssetGenImage('assets/images/destinations/LondonUk.jpeg');

  /// File path: assets/images/destinations/RomeItaly.png
  AssetGenImage get romeItaly =>
      const AssetGenImage('assets/images/destinations/RomeItaly.png');

  /// List of all assets
  List<AssetGenImage> get values => [fullEurope, londonUk, romeItaly];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/BestFlights.svg
  SvgGenImage get bestFlights =>
      const SvgGenImage('assets/images/svg/BestFlights.svg');

  /// File path: assets/images/svg/CalculatedWeather.svg
  SvgGenImage get calculatedWeather =>
      const SvgGenImage('assets/images/svg/CalculatedWeather.svg');

  /// File path: assets/images/svg/ChooseDestination.svg
  SvgGenImage get chooseDestination =>
      const SvgGenImage('assets/images/svg/ChooseDestination.svg');

  /// File path: assets/images/svg/Customization.svg
  SvgGenImage get customization =>
      const SvgGenImage('assets/images/svg/Customization.svg');

  /// File path: assets/images/svg/Decore.svg
  SvgGenImage get decore => const SvgGenImage('assets/images/svg/Decore.svg');

  /// File path: assets/images/svg/LocalEvents.svg
  SvgGenImage get localEvents =>
      const SvgGenImage('assets/images/svg/LocalEvents.svg');

  /// File path: assets/images/svg/Logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/images/svg/Logo.svg');

  /// File path: assets/images/svg/MakePayment.svg
  SvgGenImage get makePayment =>
      const SvgGenImage('assets/images/svg/MakePayment.svg');

  /// File path: assets/images/svg/ReachAirport.svg
  SvgGenImage get reachAirport =>
      const SvgGenImage('assets/images/svg/ReachAirport.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    bestFlights,
    calculatedWeather,
    chooseDestination,
    customization,
    decore,
    localEvents,
    logo,
    makePayment,
    reachAirport,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
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
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
