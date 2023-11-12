import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          "categories": "Categories",
          "home": "Home",
          "orders": "Orders",
          "profile": "Profile",
          "settings": "Settings",
          "logout": "Logout",
          "login": "Login",
          "register": "Register",
          "email": "Email",
          "password": "Password",
          "name": "Name",
          "phone": "Phone",
          "cr": "CR",
          "vat": "VAT",
          "address": "Address",
          "add": "Add",
          "save": "Save",
          "edit": "Edit",
          "delete": "Delete",
          "cancel": "Cancel",
          "add_address": "Add Address",
          "edit_address": "Edit Address",
          "add_new_address": "Add New Address",
          "edit_new_address": "Edit New Address",
          "address_name": "Address Name",
          "address_details": "Address Details",
          "address_type": "Address Type",
          "home_address": "Home Address",
          "work_address": "Work Address",
          "other_address": "Other Address",
          "select_address_type": "Select Address Type",
          "select_address": "Select Address",
          "select_address_first": "Select Address First",
          "best_selling": "Best Selling",
          "new_arrivals": "New Arrivals",
          "wallet": "Wallet",
          "technical_support": "Technical Support",
          "about_us": "About Us",
          "contact_us": "Contact Us",
          "terms_and_conditions": "Terms and Conditions",
          "privacy_policy": "Privacy Policy",
          "search": "Search",
          "search_for_products": "Search for Products",
          "search_for_categories": "Search for Categories",
          "language": "Language",
          "who_we_are": "Who We Are?",
          "our_location": "Our Location",
          "shipping_address": "Shipping Address",
          "payment_method": "Payment Method",
          "orders_history": "Orders History",
          "my_official_documents": "My Official Documents",
          "notifications": "Notifications",
          "select_your_favourite_language": "Select your favourite language",
          "ok": "Ok",
          "offers": "Offers",
          "add category": "Add Category",
          "admins": "Admins",

          "edit category": "Edit Category",
          "category name": "Category Name",
          "category name ar": "Category Name (Arabic)",
          "category name en": "Category Name (English)",
          "add subcategory": "Add Subcategory",
          "edit subcategory": "Edit Subcategory",
          "subcategory name": "Subcategory Name",
          "subcategory name ar": "Subcategory Name (Arabic)",
          "subcategory name en": "Subcategory Name (English)",
          "add product": "Add Product",
          "edit product": "Edit Product",
          "product name": "Product Name",
          "product name ar": "Product Name (Arabic)",
          "product name en": "Product Name (English)",
          "product description": "Product Description",
          "product description ar": "Product Description (Arabic)",
          "product description en": "Product Description (English)",
          "product price": "Product Price",
          "product quantity": "Product Quantity",
          "product image": "Product Image",
          "product category": "Product Category",
          "product subcategory": "Product Subcategory",
          "product brand": "Product Brand",
          //Are you sure?
          "are you sure?": "Are you sure?",
          "no": "No",
          "yes": "Yes",
          "cart": "Cart",
          "my_page": "My Page",
          "done_cart_message": "Done, Added to cart successfully",
          "create new admin": "Create New Admin",
          "admin name": "Admin Name",
          "admin email": "Admin Email",
          "admin password": "Admin Password",
          "admin phone": "Admin Phone",
          "admin photo": "Admin Photo",
          "edit admin": "Edit Admin",
          "edit admin photo": "Edit Admin Photo",
          "edit admin name": "Edit Admin Name",
          "edit admin email": "Edit Admin Email",
          "edit admin phone": "Edit Admin Phone",
          "edit admin password": "Edit Admin Password",
          "orders Management": "Orders Management",
          "No Orders Yet": "No Orders Yet",
          "share app": "Share App",
        },
        'ar': {
          "categories": "الأقسام",
          "home": "الرئيسية",
          "orders": "الطلبات",
          "profile": "الملف الشخصي",
          "settings": "الإعدادات",
          "logout": "تسجيل الخروج",
          "login": "تسجيل الدخول",
          "register": "إنشاء حساب",
          "email": "البريد الإلكتروني",
          "password": "كلمة المرور",
          "name": "الاسم",
          "phone": "رقم الجوال",
          "cr": "السجل التجاري",
          "vat": "الرقم الضريبي",
          "address": "العنوان",
          "add": "إضافة",
          "save": "حفظ",
          "edit": "تعديل",
          "delete": "حذف",
          "cancel": "إلغاء",
          "add_address": "إضافة عنوان",
          "edit_address": "تعديل عنوان",
          "add_new_address": "إضافة عنوان جديد",
          "edit_new_address": "تعديل عنوان جديد",
          "address_name": "اسم العنوان",
          "address_details": "تفاصيل العنوان",
          "address_type": "نوع العنوان",
          "home_address": "المنزل",
          "work_address": "العمل",
          "other_address": "أخرى",
          "select_address_type": "اختر نوع العنوان",
          "select_address": "اختر العنوان",
          "select_address_first": "اختر العنوان أولاً",
          "best_selling": "الأكثر مبيعاً",
          "new_arrivals": "الجديد",
          "wallet": "المحفظة",
          "technical_support": "الدعم الفني",
          "about_us": "من نحن",
          "contact_us": "تواصل معنا",
          "terms_and_conditions": "الشروط والأحكام",
          "privacy_policy": "سياسة الخصوصية",
          "search": "بحث",
          "search_for_products": "بحث عن منتجات",
          "search_for_categories": "بحث عن أقسام",
          "language": "اللغة",
          "who_we_are": "من نحن ؟",
          "our_location": "موقعنا",
          "shipping_address": "عنوان الشحن",
          "payment_method": "طريقة الدفع",
          "orders_history": "سجل الطلبات",
          "my_official_documents": "مستنداتي الرسمية",
          "notifications": "الإشعارات",
          "select_your_favourite_language": "اختر لغتك المفضلة",
          "ok": "موافق",
          "offers": "العروض",
          "add category": "إضافة قسم",
          "edit category": "تعديل قسم",
          "category name": "اسم القسم",
          "category name ar": "اسم القسم (العربية)",
          "category name en": "اسم القسم (الإنجليزية)",
          "add subcategory": "إضافة قسم فرعي",
          "edit subcategory": "تعديل قسم فرعي",
          "subcategory name": "اسم القسم الفرعي",
          "subcategory name ar": "اسم القسم الفرعي (العربية)",
          "subcategory name en": "اسم القسم الفرعي (الإنجليزية)",
          "add product": "إضافة منتج",
          "edit product": "تعديل منتج",
          "product name": "اسم المنتج",
          "product name ar": "اسم المنتج (العربية)",
          "product name en": "اسم المنتج (الإنجليزية)",
          "product description": "وصف المنتج",
          "product description ar": "وصف المنتج (العربية)",
          "product description en": "وصف المنتج (الإنجليزية)",
          "product price": "سعر المنتج",
          "product quantity": "كمية المنتج",
          "product image": "صورة المنتج",
          "product category": "قسم المنتج",
          "product subcategory": "قسم فرعي المنتج",
          "product brand": "ماركة المنتج",
          //Are you sure?
          "are you sure?": "هل أنت متأكد؟",
          "no": "لا",
          "yes": "نعم",
          "cart": "السلة",
          "my_page": "صفحتي",
          "done_cart_message": "تمت الإضافة إلى السلة بنجاح",
          "create new admin": "إنشاء مشرف جديد",
          "admin name": "اسم المشرف",
          "admin email": "بريد المشرف",
          "admin password": "كلمة مرور المشرف",
          "admin phone": "رقم جوال المشرف",
          "admin photo": "صورة المشرف",
          "edit admin": "تعديل المشرف",
          "edit admin photo": "تعديل صورة المشرف",
          "edit admin name": "تعديل اسم المشرف",
          "edit admin email": "تعديل بريد المشرف",
          "edit admin phone": "تعديل رقم جوال المشرف",
          "edit admin password": "تعديل كلمة مرور المشرف",
          "admins": "المشرفينp",
          "orders Management": "إدارة الطلبات",
          "No Orders Yet": "لا يوجد طلبات بعد",
          "share app": "مشاركة التطبيق",
        }
      };
}

class LocalController {
  // get device local
  static String getLocal() {
    return Get.deviceLocale!.languageCode;
  }

  // get device local
  static String getLocalCountry() {
    return Get.deviceLocale!.countryCode!;
  }
}
