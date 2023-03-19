abstract class IAssetsService {
  Future<void> readPaths({bool showPathLogs = false});
  bool containsPath(String assetName);
  String getImagePath(String assetName);
  String getSvgPath(String assetName);
}
