import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';

class UserBloc implements Bloc {
  final _auth_repository = AuthRepository();

  Stream<FirebaseUser> streamFirebase =
      FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus =>
      streamFirebase; //retorna el estado de la sesión

  //Casos de uso
  //1. SignIn a la aplicación con Google
  Future<FirebaseUser> signIn() {
    return _auth_repository.signinFirebase();
  }

  @override
  void dispose() {}
}
