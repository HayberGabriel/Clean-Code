import 'package:ForDev/domain/helpers/domain_error.dart';
import 'package:ForDev/domain/usecases/authentication.dart';
import 'package:ForDev/domain/usecases/save_current_account.dart';
import 'package:ForDev/presentation/protocols/validation.dart';
import 'package:ForDev/ui/helpers/errors/ui_error.dart';
import 'package:ForDev/ui/pages/login/login_presenter.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class GetxLoginPresenter extends GetxController implements LoginPresenter {
  final Validation validation;
  final Authentication authentication;
  final SaveCurrentAccount saveCurrentAccount;

  final _emailError = Rx<UIError>(null);
  final _passwordError = Rx<UIError>(null);
  final _mainError = Rx<UIError>(null);
  final _navigateTo = RxString(null);
  final _isFormValid = false.obs;
  final _isLoading = false.obs;

  String _email;
  String _password;

  Stream<UIError> get emailErrorStream => _emailError.stream;

  Stream<UIError> get passwordErrorStream => _passwordError.stream;

  Stream<UIError> get mainErrorStream => _mainError.stream;

  Stream<String> get navigateToStream => _navigateTo.stream;

  Stream<bool> get isFormValidStream => _isFormValid.stream;

  Stream<bool> get isLoadingStream => _isLoading.stream;

  GetxLoginPresenter(
      {@required this.validation,
      @required this.authentication,
      @required this.saveCurrentAccount});

  void validateEmail(String email) {
    _email = email;
    _emailError.value = _validateField('email');
    _validateForm();
  }

  void validatePassword(String password) {
    _password = password;
    _passwordError.value = _validateField('password');
    _validateForm();
  }

  UIError _validateField(String field) {
    final formData = {
      'email': _email,
      'password': _password,
    };
    final error = validation.validate(field: field, input: formData);
    switch (error) {
      case ValidationError.invalidField:
        return UIError.invalidField;
      case ValidationError.requiredField:
        return UIError.requiredField;
      default:
        return null;
    }
  }

  void _validateForm() {
    _isFormValid.value = _emailError.value == null &&
        _passwordError.value == null &&
        _email != null &&
        _password != null;
  }

  Future<void> auth() async {
    try {
      _isLoading.value = true;
      final account = await authentication
          .auth(AuthenticationParams(email: _email, secret: _password));
      await saveCurrentAccount.save(account);
      _navigateTo.value = '/surveys';
    } on DomainError catch (error) {
      switch (error) {
        case DomainError.invalidCredentials:
          _mainError.value = UIError.invalidCredentials;
          break;
        default:
          _mainError.value = UIError.unexpected;
          break;
      }
      _isLoading.value = false;
    }
  }

  void goToSignUp() {
    _navigateTo.value = '/signup';
  }
}
