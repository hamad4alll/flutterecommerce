import 'package:ecommpro/core/const/color.dart';
import 'package:ecommpro/data/static/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                    itemCount: onBoardingList.length,
                    itemBuilder: (context, i) => Column(
                          children: [
                            Text(
                              onBoardingList[i].title!,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            const SizedBox(
                              height: 80.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 200,
                              height: 230,
                              child: Image.asset(
                                onBoardingList[i].image!,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              height: 80.0,
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Text(
                                onBoardingList[i].body!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    height: 2,
                                    color: AppColor.grey),
                              ),
                            ),
                          ],
                        )),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                            onBoardingList.length,
                            (index) => AnimatedContainer(
                                  margin: const EdgeInsets.only(right: 5),
                                  duration: const Duration(milliseconds: 900),
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                      color: AppColor.primaryColor,
                                      borderRadius: BorderRadius.circular(10)),
                                ))
                      ],
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.only(bottom: 30),
                      child: MaterialButton(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 0),
                        onPressed: () {},
                        color: AppColor.primaryColor,
                        child: const Text(
                          "contenu",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
