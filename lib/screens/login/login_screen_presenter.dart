import 'package:login_app/data/rest_ds.dart';
import 'package:login_app/models/user.dart';

abstract class LoginScreenContract {
  void onLogginSuccess(User user);
  void onLogginError(String errorTxt);
}

class LoginScreenPresenter {
  LoginScreenContract _view;
  RestDataSource api = new RestDataSource();

  LoginScreenPresenter(this._view);
  doLogin(String username, String password) {
    api
    .login(username, password).then((User user){
      _view.onLogginSuccess(user);
    }).catchError((Exception error) => _view.onLogginError(error.toString()));
  }
}