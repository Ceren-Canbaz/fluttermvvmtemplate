abstract class NavigationService {
  Future<void> navigateToPage({required String path, required Object data});
  Future<void> navigateToPageClear(
      {required String path, required Object data});
}
