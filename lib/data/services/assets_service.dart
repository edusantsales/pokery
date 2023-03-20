// ignore_for_file: prefer_constructors_over_static_methods

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';

import '../../domain/interfaces/services/assets_service_interface.dart';

/// A class to obtain the path of the all files in directory [lib/assets/]
class AssetsService implements IAssetsService {
  AssetsService();

  /// Variable what contains the paths of all image files in directory [lib/assets/images/]
  var _imagePaths = <String, String>{};

  /// Variable what contains the paths of all svg files in directory [lib/assets/images/svgs/]
  var _svgPaths = <String, String>{};

  /// Read the paths of the all images files in directory [lib/assets/]
  ///
  /// Use the parameter [showPathLogs] equals true to show the log with the files paths in the directory [lib/assets/images/] or [lib/assets/images/svgs/]
  @override
  Future<void> readPaths({bool showPathLogs = false}) async {
    // Get a String of the AssetManifest.json file what containing all files paths inside assets folder
    final manifestContent = await rootBundle.loadString('AssetManifest.json');

    // Decode the String manifestContent into a Map
    // Remove files that do not contain .png at the end of the name
    final manifestMapImages = jsonDecode(manifestContent)
        as Map<String, dynamic>
      ..removeWhere((key, value) => !key.endsWith('.png'));

    // Decode the String manifestContent into a Map
    // Remove files that do not contain .svg at the end of the name
    final manifestMapSvgs = jsonDecode(manifestContent) as Map<String, dynamic>
      ..removeWhere((key, value) => !key.endsWith('.svg'));

    // Convert to Map<String, String> and assigns the manifestMap variable value in the variable _imagePaths
    _imagePaths = manifestMapImages.map(
      (key, value) {
        final k = key.split('/')[3].split('.')[0];
        final v = value.toString().split('[')[1].split(']')[0];
        return MapEntry(k, v);
      },
    );

    // Convert to Map<String, String> and assigns the manifestMap variable value in the variable _svgPaths
    _svgPaths = manifestMapSvgs.map(
      (key, value) {
        final k = key.split('/')[4].split('.')[0];
        final v = value.toString().split('[')[1].split(']')[0];
        return MapEntry(k, v);
      },
    );

    // Shown when you want to log into the console all files and their position on the map
    if (showPathLogs) {
      log('>>>>> PATH OF THE IMAGES FILES <<<<< \n');
      _imagePaths.forEach((key, value) => log('$key: $value \n'));
      log('>>>>> PATH OF THE SVG FILES <<<<< \n');
      _svgPaths.forEach((key, value) => log('$key: $value \n'));
    }
  }

  /// Verify if the parameter [assetName] is the same name as a file inside directory [lib/assets/]
  @override
  bool containsPath(String assetName) =>
      _imagePaths.containsKey(assetName) || _svgPaths.containsKey(assetName);

  /// Return the path of the file with the same name as parameter [assetName] inside directory [lib/assets/images/]
  @override
  String getImagePath(String assetName) => _imagePaths[assetName]!;

  /// Return the path of the file with the same name as parameter [assetName] inside directory [lib/assets/images/svgs/]
  @override
  String getSvgPath(String assetName) => _svgPaths[assetName]!;
}
