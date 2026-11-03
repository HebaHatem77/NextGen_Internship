import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../data/cart_data.dart';
import '../widgets/custom_cart_item.dart';
import '../widgets/custom_price_row.dart';
import '../widgets/custom_text_field.dart';
import 'checkout_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff543A20),
      appBar: AppBar(
        backgroundColor: Color(0xff543A20),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/arrow-left.svg',
            colorFilter: ColorFilter.mode(Color(0xffCE9760), BlendMode.srcIn),
          ),
        ),
        title: Center(
          child: Text(
            'Cart',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 22.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/notification.svg',
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Order',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 12.h),

              ValueListenableBuilder<List<CartItem>>(
                valueListenable: cartItems,
                builder: (context, items, child) {
                  if (items.isEmpty) {
                    return SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/empty-cart.svg',
                            width: 60.w,
                            colorFilter: ColorFilter.mode(
                              Color(0xffCE9760),
                              BlendMode.srcIn,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            'Your cart is empty',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      final product = item.product;

                      return Dismissible(
                        key: ValueKey(product.name),
                        direction: DismissDirection.endToStart,
                        onDismissed: (direction) {
                          removeFromCart(item);
                        },
                        background: Container(
                          margin: EdgeInsets.all(8.w),
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(right: 20.w),
                          child: SvgPicture.asset(
                            'assets/icons/delete-bin.svg',
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: CustomCartItem(
                            item: item,
                            onDecrease: () {
                              if (item.quantity > 1) {
                                item.quantity--;
                              } else {
                                removeFromCart(item);
                              }

                              updateCart();
                            },
                            onIncrease: () {
                              item.quantity++;
                              updateCart();
                            },
                          ),
                        ),
                      );
                    },
                  );
                },
              ),

              SizedBox(height: 8.h),

              ValueListenableBuilder<List<CartItem>>(
                valueListenable: cartItems,
                builder: (context, items, child) {
                  return Container(
                    padding: EdgeInsets.all(22.w),
                    decoration: BoxDecoration(
                      color: const Color(0xffCE9760),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              color: const Color(0xff543A20),
                              width: 1.w,
                            ),
                          ),
                          child: CustomTextField(),
                        ),

                        SizedBox(height: 22.h),

                        CustomPriceRow(title: 'Sub-total', price: subTotal),

                        SizedBox(height: 8.h),

                        CustomPriceRow(title: 'Shipping', price: shipping),

                        SizedBox(height: 8.h),

                        CustomPriceRow(title: 'Total', price: totalPrice),
                      ],
                    ),
                  );
                },
              ),

              Center(
                child: TextButton(
                  onPressed: () {
                    final items = cartItems.value
                        .map(
                          (item) => CartItem(
                            product: item.product,
                            quantity: item.quantity,
                          ),
                        )
                        .toList();

                    if (items.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Cart is empty',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff39260B),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          duration: Duration(seconds: 1),
                          backgroundColor: Color(0x80cd9660),
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.all(8.w),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          elevation: 4,
                        ),
                      );
                      return;
                    }

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckoutScreen(items: items),
                      ),
                    );
                  },
                  child: Text(
                    "Finalize Order",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
