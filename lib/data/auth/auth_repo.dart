import 'package:chat_app/constant/constant.dart';
import 'package:supabase/supabase.dart';

class AuthRepo {
  Future<void> login({required String email, required String password}) async {
    try {
      AuthResponse reuslt =
          await Constants.supabaseClient.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (reuslt.user != null) {
        print('login success');
        print(reuslt.user?.email ?? "");
      }
    } on AuthException catch (e) {
      if (e.message == 'Email not confirmed') {
        resendVerificationEmail(email);
      }
      print('Error logging in: ${e.message}');
    } catch (e) {
      print('Error logging in: $e');
    }
  }

  Future<void> logout() async {
    await Constants.supabaseClient.auth.signOut();
  }

  Future<void> register(
      {required String email, required String password}) async {
    try {
      AuthResponse result = await Constants.supabaseClient.auth
          .signUp(email: email, password: password);
      if (result.user != null) {
        print('register success');
        print(result.user?.email ?? "");
      }
    } catch (e) {
      print('Error registering user: $e');
    }
  }

  Future<void> resendVerificationEmail(String email) async {
    try {
      // Send the email with a magic link for verification
      await Constants.supabaseClient.auth.signInWithOtp(email: email);

      print('Verification email resent to $email.');
    } catch (e) {
      print('Error resending verification email: $e');
    }
  }

  bool isEmailVerified() {
    final user = Constants.supabaseClient.auth.currentUser;
    return user?.emailConfirmedAt != null;
  }

  Future signWithPhone(String phoneNumber) async {
    try {
      await Constants.supabaseClient.auth.signInWithOtp(
        phone: phoneNumber,
        
      );
      print('register success');
    } catch (e) {
      print('Error registering user: $e');
    }
  }
}
