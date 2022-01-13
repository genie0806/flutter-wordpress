abstract class SecureDataRepository {
  Future<String> getToken();
  //토큰을 가져올때 시간이 걸릴수있으니 Future로

  void setToken(String token);
  //토큰을 셋팅할 때

  void setAutoLogin(bool isAutoLogin);

  bool isAutoLogin();
}


//ID와 비번도 저장하고싶을때는 여기서 해야한다.
//자동로그인 구현가능