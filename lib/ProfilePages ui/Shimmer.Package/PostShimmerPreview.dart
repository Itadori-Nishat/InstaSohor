import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PostShimmerPage extends StatelessWidget {
  const PostShimmerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 10,),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.height*0.17,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
