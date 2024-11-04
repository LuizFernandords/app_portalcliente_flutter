import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier{
 
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();

  String? errorTextCpf;
  String? errorTextSenha;

  final FocusNode cpfFocus = FocusNode();
  final FocusNode senhaFocus = FocusNode();

  login(BuildContext context){
    String? cpf = cpfController.text;
    String? senha = senhaController.text;

    if(cpf.isEmpty){
      errorTextCpf = 'Preencha o CPF!';
      errorTextSenha = null;
      cpfController.clear();
      FocusScope.of(context).requestFocus(cpfFocus);
      notifyListeners();

    }else if(cpf != '116.782.479-28'){
      errorTextCpf = 'CPF Inexistente!';
      errorTextSenha = null;
      cpfController.clear();
      FocusScope.of(context).requestFocus(cpfFocus);
      notifyListeners();

    }else if(senha.isEmpty){
      errorTextCpf = null;
      errorTextSenha = 'Informe a Senha!';
      senhaController.clear();
      FocusScope.of(context).requestFocus(senhaFocus);
      notifyListeners();

    }else if(senha != '123'){
      errorTextCpf = null;
      errorTextSenha = 'Senha incorreta!';
      senhaController.clear();
      FocusScope.of(context).requestFocus(senhaFocus);
      notifyListeners();
    }else{
      errorTextCpf = null;
      errorTextSenha = null;
      notifyListeners();
      Navigator.of(context).pushReplacementNamed('/home');
    }
  }

  register(BuildContext context){
    Navigator.pushNamed(context, '/register');
  }

  reset(BuildContext context){
     Navigator.pushNamed(context, '/reset');
  }

}
