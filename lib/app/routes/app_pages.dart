import 'package:get/get.dart';

import '../modules/add_product/bindings/add_product_binding.dart';
import '../modules/add_product/views/add_product_view.dart';
import '../modules/add_promosi/bindings/add_promosi_binding.dart';
import '../modules/add_promosi/views/add_promosi_view.dart';
import '../modules/adminbotnav/bindings/adminbotnav_binding.dart';
import '../modules/adminbotnav/views/adminbotnav_view.dart';
import '../modules/bottomnavbar/bindings/bottomnavbar_binding.dart';
import '../modules/bottomnavbar/views/bottomnavbar_view.dart';
import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/edit_product/bindings/edit_product_binding.dart';
import '../modules/edit_product/views/edit_product_view.dart';
import '../modules/edit_promosi/bindings/edit_promosi_binding.dart';
import '../modules/edit_promosi/views/edit_promosi_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/homeadmin/bindings/homeadmin_binding.dart';
import '../modules/homeadmin/views/homeadmin_view.dart';
import '../modules/kritik_saran/bindings/kritik_saran_binding.dart';
import '../modules/kritik_saran/views/kritik_saran_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/order/bindings/order_binding.dart';
import '../modules/order/views/order_view.dart';
import '../modules/order_admin/bindings/order_admin_binding.dart';
import '../modules/order_admin/views/order_admin_view.dart';
import '../modules/payment/bindings/payment_binding.dart';
import '../modules/payment/views/payment_view.dart';
import '../modules/payment_success/bindings/payment_success_binding.dart';
import '../modules/payment_success/views/payment_success_view.dart';
import '../modules/profil/bindings/profil_binding.dart';
import '../modules/profil/views/profil_view.dart';
import '../modules/promosiadmin/bindings/promosiadmin_binding.dart';
import '../modules/promosiadmin/views/promosiadmin_view.dart';
import '../modules/reset_password/bindings/reset_password_binding.dart';
import '../modules/reset_password/views/reset_password_view.dart';
import '../modules/saran_admin/bindings/saran_admin_binding.dart';
import '../modules/saran_admin/views/saran_admin_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/user/bindings/user_binding.dart';
import '../modules/user/views/user_view.dart';
import '../modules/voucher/bindings/voucher_binding.dart';
import '../modules/voucher/views/voucher_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMNAVBAR,
      page: () => BottomnavbarView(),
      binding: BottomnavbarBinding(),
    ),
    GetPage(
      name: _Paths.VOUCHER,
      page: () => VoucherView(),
      binding: VoucherBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.ORDER,
      page: () => OrderView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => UserView(),
      binding: UserBinding(),
    ),
    GetPage(
      name: _Paths.HOMEADMIN,
      page: () => HomeadminView(),
      binding: HomeadminBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PRODUCT,
      page: () => EditProductView(),
      binding: EditProductBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PRODUCT,
      page: () => AddProductView(),
      binding: AddProductBinding(),
    ),
    GetPage(
      name: _Paths.ADMINBOTNAV,
      page: () => AdminbotnavView(),
      binding: AdminbotnavBinding(),
    ),
    GetPage(
      name: _Paths.PROMOSIADMIN,
      page: () => PromosiadminView(),
      binding: PromosiadminBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROMOSI,
      page: () => EditPromosiView(),
      binding: EditPromosiBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PROMOSI,
      page: () => AddPromosiView(),
      binding: AddPromosiBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_SUCCESS,
      page: () => PaymentSuccessView(),
      binding: PaymentSuccessBinding(),
    ),
    GetPage(
      name: _Paths.KRITIK_SARAN,
      page: () => KritikSaranView(),
      binding: KritikSaranBinding(),
    ),
    GetPage(
      name: _Paths.SARAN_ADMIN,
      page: () => SaranAdminView(),
      binding: SaranAdminBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_ADMIN,
      page: () => OrderAdminView(),
      binding: OrderAdminBinding(),
    ),
  ];
}
