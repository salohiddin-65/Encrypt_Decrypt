import 'package:dio/dio.dart';
import 'package:encrypt_decrypt/service/local/crypto_service.dart';

class AuthService {
  Future<dynamic> login() async {
    Response response =
        await Dio().get("http://192.168.100.79:3000/login", data: {
      "email": CryptoService().encrypt("salohiddink65@gmail.com"),
    });
    print(CryptoService().decrypt(response.data["token"]));
  }
}
