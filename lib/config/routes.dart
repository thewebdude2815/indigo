import 'package:get/get.dart';
import 'package:indigo/screens/POS/cart.dart';
import 'package:indigo/screens/POS/cashPayment.dart';
import 'package:indigo/screens/POS/nonCashPayment.dart';
import 'package:indigo/screens/POS/payment.dart';
import 'package:indigo/screens/POS/receiptPaid.dart';
import 'package:indigo/screens/POS/savedBill.dart';
import 'package:indigo/screens/POS/transactionSuccess.dart';
import 'package:indigo/screens/authentication/createNewPassword.dart';
import 'package:indigo/screens/authentication/resetPassword.dart';
import 'package:indigo/screens/authentication/signup.dart';
import 'package:indigo/screens/authentication/singupInfo.dart';
import 'package:indigo/screens/bottomNavBar.dart';
import 'package:indigo/screens/items/addProduct.dart';
import 'package:indigo/screens/items/items.dart';
import 'package:indigo/screens/myBiz/accountInfo.dart';
import 'package:indigo/screens/myBiz/addSalesTax.dart';
import 'package:indigo/screens/myBiz/businessInfo.dart';
import 'package:indigo/screens/myBiz/salesReport.dart';
import 'package:indigo/screens/myBiz/salesTax.dart';
import 'package:indigo/screens/startup/splashScreen.dart';
import 'package:indigo/screens/startup/welcome.dart';
import 'package:indigo/screens/authentication/login.dart';
import 'package:indigo/screens/transaction/detailTransaction.dart';
import 'package:indigo/screens/transaction/detailTransactionVoid.dart';
import 'package:indigo/screens/transaction/filterTransaction.dart';

class Routes {
  static String splashRoute = '/';
  static String routeWelcome = '/welcome';
  static String routeLogin = '/login';
  static String routeSignup = '/signup';
  static String routeReset = '/reset-password';
  static String routeCreateNewPassword = '/create-new-password';
  static String routeSignupInfo = '/signup-info';
  static String routeBNB = '/bottom-nav-bar';
  static String routeCart = '/cart';
  static String routePayment = '/payment';
  static String routeTransSuccess = '/trans-success';
  static String routeCashPayment = '/cash-payment';
  static String routeNonCashPayment = '/non-cash-payment';
  static String routeSavedBill = '/saved-bill';
  static String routeReceiptPaid = '/receipt-paid';
  static String routeItems = '/items';
  static String routeAddProduct = '/add-product';
  static String routeDetailTransation = '/detail-transaction';
  static String routeDetailTransationVoid = '/detail-transaction-void';
  static String routeTransationFilter = '/transaction-filter';
  static String routeSalesReport = '/sales-report';
  static String routeSalesTax = '/sales-tax';
  static String routeAccountsInfo = '/accounts-info';
  static String routeBusinessInfo = '/business-info';
  static String routeAddSalesTax = '/add-sales-tax';

  static List<GetPage> getPages = [
    GetPage(
      name: splashRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: routeWelcome,
      page: () => const Welcome(),
    ),
    GetPage(
      name: routeLogin,
      page: () => const Login(),
    ),
    GetPage(
      name: routeSignup,
      page: () => const Signup(),
    ),
    GetPage(
      name: routeReset,
      page: () => const ResetPassword(),
    ),
    GetPage(
      name: routeCreateNewPassword,
      page: () => const CreateNewPassword(),
    ),
    GetPage(
      name: routeSignupInfo,
      page: () => const SignupInfo(),
    ),
    GetPage(
      name: routeBNB,
      page: () => const MainBottomNavBarScreen(),
    ),
    GetPage(
      name: routeCart,
      page: () => const Cart(),
    ),
    GetPage(
      name: routePayment,
      page: () => const Payment(),
    ),
    GetPage(
      name: routeTransSuccess,
      page: () => const TransactionSuccess(),
    ),
    GetPage(
      name: routeCashPayment,
      page: () => const CashPayment(),
    ),
    GetPage(
      name: routeNonCashPayment,
      page: () => const NonCashPayment(),
    ),
    GetPage(
      name: routeSavedBill,
      page: () => const SavedBill(),
    ),
    GetPage(
      name: routeReceiptPaid,
      page: () => const ReceiptPaid(),
    ),
    GetPage(
      name: routeItems,
      page: () => const Items(),
    ),
    GetPage(
      name: routeAddProduct,
      page: () => const AddProduct(),
    ),
    GetPage(
      name: routeDetailTransation,
      page: () => const DetailTransaction(),
    ),
    GetPage(
      name: routeDetailTransationVoid,
      page: () => const DetailTransactionVoid(),
    ),
    GetPage(
      name: routeTransationFilter,
      page: () => const FilterTransaction(),
    ),
    GetPage(
      name: routeSalesReport,
      page: () => const SalesReport(),
    ),
    GetPage(
      name: routeSalesTax,
      page: () => const SalesTax(),
    ),
    GetPage(
      name: routeAccountsInfo,
      page: () => const AccountInfo(),
    ),
    GetPage(
      name: routeBusinessInfo,
      page: () => const BusinessInfo(),
    ),
    GetPage(
      name: routeAddSalesTax,
      page: () => const AddSalesTax(),
    ),
  ];
}
