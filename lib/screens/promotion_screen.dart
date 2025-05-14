import 'package:flutter/material.dart';
import '../widgets/promotion_card.dart';
import '../models/promotion_model.dart';

class PromotionScreen extends StatelessWidget {
  PromotionScreen({super.key});

  final List<PromotionModel> promotions = [
    PromotionModel(
      title: 'ONLY',
      subtitle: 'THIS SUMMER',
      buttonText: 'Use it now',
      imagePath: 'assets/coffee.png',
      tag: 'SPECIAL MENU',
      textColor: const Color(0xFF48261D),
    ),
    PromotionModel(
      title: '100% OFF',
      subtitle: 'FREE DELIVERY',
      buttonText: 'Use it now',
      imagePath: 'assets/delivery1.png',
      tag: 'UP TO',
      textColor: const Color(0xFF48261D),
    ),
    PromotionModel(
      title: '100% OFF',
      subtitle: 'FREE DELIVERY',
      buttonText: 'Use it now',
      imagePath: 'assets/delivery2.png',
      tag: 'UP TO',
      textColor: const Color(0xFF48261D),
    ),
    PromotionModel(
      title: 'FREE COOKIES',
      subtitle: '',
      buttonText: 'Use it now',
      imagePath: 'assets/cookie.png',
      tag: 'BUY HOT CHOCOLATE',
      textColor: const Color(0xFF48261D),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            text: 'PROMOTION ',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color(0xFF48261D),
            ),
            children: <TextSpan>[
              TextSpan(
                text: '&\n',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF48261D),
                ),
              ),
              TextSpan(
                text: 'OFFERS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF48261D),
                ),
              ),
            ],
          ),
        ),
        leading: const BackButton(),
        backgroundColor: Colors.white, // Optional: ให้พื้นหลังหัวขาว
        elevation: 0, // Optional: ไม่มีเงา
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 3),
        itemCount: promotions.length,
        itemBuilder: (context, index) {
          final promo = promotions[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 1.0),
            child: PromotionCard(
              title: promo.title,
              subtitle: promo.subtitle,
              buttonText: promo.buttonText,
              tag: promo.tag,
              icon: Container(
                width: 100,
                height: 100,
                child: Image.asset(
                  promo.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              textColor: promo.textColor, // ✅ เพิ่มการส่งสีข้อความ
            ),
          );
        },
      ),
    );
  }
}
