import './extensions/index.dart';

// /// Application environment variables
abstract class Env {
  // static const baseUrl = 'BASE_URL';

  final Map<String, dynamic> env;
  Env(this.env);

  String get baseUrl; // => env.getKey('BASE_URL');

  factory Env.fromMap(Map<String, dynamic> value) {
    switch (value.getKey<String>('env')?.toLowerCase()) {
      case 'production':
        return Production(value);
      case 'development':
        return Development(value);
      case 'test':
        return Test(value);

      default:
    }
    return Production(value);
  }
}

class Production extends Env {
  Production(Map<String, dynamic> env) : super(env);

  @override
  String toString() => 'Production';

  @override
  String get baseUrl => 'https://api.dev.porplepages.com';
}

class Development extends Env {
  Development(Map<String, dynamic> env) : super(env);

  @override
  String toString() => 'Development';
  @override
  String get baseUrl => 'https://api.dev.porplepages.com';
}

class Test extends Env {
  Test(Map<String, dynamic> env) : super(env);

  @override
  String toString() => 'Test';
  @override
  String get baseUrl => 'https://api.dev.porplepages.com';
}
