import 'package:flutter/material.dart';
import 'package:pizza/companes/widgets/big_text_widget.dart';
import 'package:pizza/companes/widgets/chip_button_widget.dart';
import 'package:pizza/companes/widgets/icon_and_text_widget.dart';
import 'package:pizza/companes/widgets/small_text_widget.dart';
import 'package:pizza/companes/widgets/text_form_field_button.dart';
import 'package:pizza/theme/app_textstyle.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    'Категории',
                    style: AppTextStyle.bigTextStyle,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextFormFieldButton(),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChipButtonWidget(text: 'Маргарита'),
                  ChipButtonWidget(text: 'Пепперони'),
                  ChipButtonWidget(text: 'Азиатская'),
                  ChipButtonWidget(text: 'Четыре сыра'),
                  ChipButtonWidget(text: 'Детская'),
                  ChipButtonWidget(text: 'Четыре сезона'),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              child: ListView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amberAccent,
                                image: const DecorationImage(
                                    fit: BoxFit.cover, image: AssetImage(''))),
                          ),
                          Expanded(
                              child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              color: Colors.white,
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BigText(text: 'Маргарита'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SmallText(text: 'Описание пиццы'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SmallText(text: '450 c'),
                                        SizedBox(width: 15),
                                        IconAndTextWidget(
                                            icon: Icons.star,
                                            text: '4.0(3)',
                                            iconColor: Colors.amberAccent)
                                      ],
                                    )
                                  ],
                                )),
                          ))
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
