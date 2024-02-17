import 'package:fhe_template/module/01_form/b_form%20origin/view/form%20origin_view.dart';
import 'package:fhe_template/module/01_form/c_login/view/login_view.dart';
import 'package:fhe_template/module/01_form/d_sign%20up/view/sign%20up_view.dart';
import 'package:fhe_template/module/01_form/e_reset%20password/view/reset%20password_view.dart';
import 'package:fhe_template/module/01_form/f_edit%20profile/view/edit%20profile_view.dart';
import 'package:fhe_template/module/01_form/g_product%20form/view/product%20form_view.dart';
import 'package:fhe_template/module/01_form/h_review%20form/view/review%20form_view.dart';
import 'package:fhe_template/module/01_form/i_checkout%20form/view/checkout%20form_view.dart';
import 'package:fhe_template/module/01_form/j_filter%20dialog%20form/view/filter%20dialog%20form_view.dart';
import 'package:fhe_template/module/01_form/k_filter%20bottom%20sheet/view/filter%20bottom%20sheet_view.dart';
import 'package:fhe_template/module/01_form/l_sliding%20form/view/sliding%20form_view.dart';
import 'package:get/get.dart';
import '../a_form reuseable/view/form reuseable_view.dart';
import '../view/form_view.dart';

class FormController extends GetxController {
  FormView? view;

  List formList = [
    {
      "label": "Form Reausible Widget",
      "view": const FormReuseableView(),
    },
    {
      "label": "Form Original",
      "view": const FormOriginView(),
    },
    {
      "label": "Form Login",
      "view": const LoginView(),
    },
    {
      "label": "Form Sign up",
      "view": const SignUpView(),
    },
    {
      "label": "Reset Password",
      "view": const ResetPasswordView(),
    },
    {
      "label": "Edit Profile",
      "view": const EditProfileView(),
    },
    {
      "label": "Product Form",
      "view": const ProductFormView(),
    },
    {
      "label": "review form",
      "view": const ReviewFormView(),
    },
    {
      "label": "Check Out Form",
      "view": const CheckoutFormView(),
    },
    {
      "label": "Filter Dialog",
      "view": const FilterDialogFormView(),
    },
    {
      "label": "Filter Bottom sheet",
      "view": const FilterBottomSheetView(),
    },
    {
      "label": "Sliding Form",
      "view": const SlidingFormView(),
    },
  ];
}
