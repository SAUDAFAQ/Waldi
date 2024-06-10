import 'package:flutter_test/flutter_test.dart';
import 'package:heidi/src/presentation/main/login/signin/cubit/login_cubit.dart';
import 'package:heidi/src/presentation/main/login/signup/cubit/signup_cubit.dart';

void main(){
  final bloc = LoginCubit();
  final signUpCubit = SignUpCubit();

  group('Test', () {
    test('First Test', () {
      const sentence = 'Invalid username';
      const expectedSentence = 'login_invalid_username';

      final translation = bloc.getTranslationKey(sentence);
      expect(translation, expectedSentence);
    });

    test('Validate Password', () {
      const password = 'testing';
      const expectedSentence = 'Password must be at least 8 characters long.';

      final validate = signUpCubit.validatePassword(password);
      expect(validate, expectedSentence);
    });
  });

  test('Validate Username', () {
    const username = 'saud';
    const expectedUsername = 'Username must be at least 6 characters long.';

    final validate = signUpCubit.validateUsername(username);
    expect(validate, expectedUsername);
  });
}
