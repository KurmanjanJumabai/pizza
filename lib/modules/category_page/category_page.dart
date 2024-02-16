import 'package:flutter/material.dart';
import 'package:pizza/companes/widgets/big_text_widget.dart';
import 'package:pizza/companes/widgets/chip_button_widget.dart';
import 'package:pizza/companes/widgets/icon_and_text_widget.dart';
import 'package:pizza/companes/widgets/small_text_widget.dart';
import 'package:pizza/companes/widgets/text_form_field_button.dart';
import 'package:pizza/modules/register_page/google.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios)),
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
              ListView.builder(

                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    // final news = topnews!.articles[index];
                    return InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GooglePage(
                                  // urlToImage: news.urlToImage ?? 'Empty Image',
                                  // title: news.title,
                                  // description: news.description ?? 'Empty Text',
                                  // publishedAt: news.publishedAt,
                                  // author: news.author ?? 'Empty',
                                  // article: news,
                                  ))),
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 10),
                        child: Row(
                          children: [
                            //image container
                            SizedBox(
                              width: 130,
                              height: 130,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset('name')
                                  // CachedNetworkImage(
                                  //   imageUrl: news.urlToImage ??
                                  //       'https://media.istockphoto.com/id/1311148884/vector/abstract-globe-background.jpg?s=612x612&w=0&k=20&c=9rVQfrUGNtR5Q0ygmuQ9jviVUfrnYHUHcfiwaH5-WFE=',
                                  //   placeholder: (context, url) =>
                                  //       const CircularProgressIndicator(),
                                  //   errorWidget: (context, url, error) =>
                                  //       const Icon(Icons.error),
                                  //   fit: BoxFit.cover,
                                  // ),
                                  ),
                            ),
                            SizedBox(width: 15),
                            // text container
                            Expanded(
                              // ignore: avoid_unnecessary_containers
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        BigText(text: 'Margarita'),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SmallText(text: 'description'),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          '650 c',
                                          style: AppTextStyle.smallTextStyle,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 5),
                                          child: const Text(
                                            '.',
                                            style: AppTextStyle.smallTextStyle,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '4.0(3)',
                                          style: AppTextStyle.smallTextStyle,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),

                            // )
                          ],
                        ),
                      ),
                    );
                  }),
              // ListView.builder(
              //     // physics: const NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemCount: 10,
              //     itemBuilder: (context, index) {
              //       return Container(
              //         margin:
              //             const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              //         child: Row(
              //           children: [
              //             Container(
              //               width: 100,
              //               height: 100,
              //               decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(20),
              //                   color: Colors.amberAccent,
              //                   image: const DecorationImage(
              //                       fit: BoxFit.cover, image: AssetImage(''))),
              //             ),
              //             SizedBox(
              //               width: 15,
              //             ),
              //             Container(
              //               height: 50,
              //               decoration: const BoxDecoration(
              //                 borderRadius: BorderRadius.only(
              //                   topLeft: Radius.circular(20),
              //                   topRight: Radius.circular(20),
              //                 ),
              //                 color: Colors.white,
              //               ),
              //               child: Row(
              //                 children: [
              //                   Container(
              //                     child: Column(
              //                       crossAxisAlignment: CrossAxisAlignment.start,
              //                       children: [
              //                         BigText(text: 'Маргарита'),
              //                         SizedBox(
              //                           height: 10,
              //                         ),
              //                         SmallText(text: 'Описание пиццы'),
              //                         SizedBox(
              //                           height: 10,
              //                         ),
              //                         Row(
              //                           mainAxisAlignment:
              //                               MainAxisAlignment.spaceAround,
              //                           children: [
              //                             SmallText(text: '450 c'),
              //                             SizedBox(width: 15),
              //                             IconAndTextWidget(
              //                                 icon: Icons.star,
              //                                 text: '4.0(3)',
              //                                 iconColor: Colors.amberAccent)
              //                           ],
              //                         )
              //                       ],
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             )
              //           ],
              //         ),
              //       );
              //     })
            ],
          ),
        ),
      ),
    );
  }
}
