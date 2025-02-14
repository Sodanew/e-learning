abstract class EnvironmentConfigurable {
  String getBaseUrl();
  String getBrandName();
}

class AppEnvironment extends EnvironmentConfigurable {
  final String apiBaseUrl;
  final String brandName;

  AppEnvironment({
    required this.apiBaseUrl,
    required this.brandName,
  });

  static AppEnvironment dev = AppEnvironment(
    apiBaseUrl: 'facebook.com',
    brandName: 'Facebook',
  );

  static AppEnvironment prod = AppEnvironment(
    apiBaseUrl: 'google.com',
    brandName: 'Google',
  );

  @override
  String getBaseUrl() {
    return apiBaseUrl;
  }

  @override
  String getBrandName() {
    return brandName;
  }
}
