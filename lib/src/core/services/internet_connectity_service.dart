class InternetConnectivityService {
  bool status = false;
  Future<bool> hasInternet() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return status;
  }
}
