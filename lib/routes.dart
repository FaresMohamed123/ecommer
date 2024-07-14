import '/core/middleware/mymiddleware.dart';
import '/view/screen/auth/forgetpassword/forgetpassword.dart';
import '/view/screen/auth/forgetpassword/resetpassword.dart';
import '/view/screen/auth/forgetpassword/success_resetpassword.dart';
import '/view/screen/auth/forgetpassword/verifycode.dart';
import '/view/screen/auth/success_signup.dart';
import '/view/screen/auth/verifycodesignup.dart';
import '/view/screen/home.dart';
import '/view/screen/splash_view.dart';
import 'package:get/get.dart';

import 'core/constant/routes.dart';
import 'test_view.dart';
import 'view/screen/auth/login.dart';
import 'view/screen/auth/signup.dart';
import 'view/screen/language.dart';
import 'view/screen/onboarding.dart';

List<GetPage<dynamic>>? getPagess = [
  GetPage(name: AppRoute.splashView, page: () => const SplashView()),
  GetPage(name: AppRoute.onBoarding, page: () => const Onboarding()),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.language, page: () => const Language(),middlewares: [MyMiddleWare(),]),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const Forgetpassword()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.successResetpassword,page: () => const SuccessResetpassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignup()),
  GetPage(name: AppRoute.verfiyCodeSignUp, page: () => const VerifyCodeSignUp()),
  GetPage(name: AppRoute.homepage, page: () => const HomePage()),
  GetPage(name: AppRoute.testView, page: () => const TestView())

];