import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../../modals/valo_modals.dart';

class Apis {
  static Future<ValoModel> getData() async {
    final response = await http.get(
      Uri.parse("https://valorant-api.com/v1/agents"),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return ValoModel.fromJson(data);
    } else {
      throw Exception("Error fetching data: ${response.statusCode}");
    }
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.red,
      body: FutureBuilder(
        future: Apis.getData(),
        builder: (context, AsyncSnapshot<ValoModel> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                "Error: ${snapshot.error}",
                style: const TextStyle(color: Colors.white),
              ),
            );
          } else {
            return Stack(
              children: [
                // Static content
                Positioned.fill(
                  child: PageView.builder(
                    itemCount: snapshot.data!.data!.length,
                    itemBuilder: (context, index) {
                      final List<String> gradientColors = snapshot
                              .data!.data![index].backgroundGradientColors ??
                          [];
                      List<Color> colors = gradientColors.map((color) {
                        color = color.substring(0, color.length - 2);
                        return Color(
                          int.parse(color, radix: 16),
                        ).withOpacity(1.0);
                      }).toList();
                      final gradient = LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: colors,
                      );
                      return Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: gradient,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  snapshot.data!.data![index].displayName
                                      .toString(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    fontSize: 80,
                                  ),
                                ),
                                Center(
                                  child: Image.network(
                                    snapshot.data!.data![index].fullPortraitV2
                                        .toString(),
                                    height: 400,
                                    width: 400,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Align(
                  alignment: const Alignment(0, 1.1),
                  child: Container(
                    height: size.height * 0.17,
                    // width: double.infinity,
                    width: size.width * 2,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(200),
                        topRight: Radius.circular(200),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0, 0.85),
                  child: CircleAvatar(
                    backgroundImage: const NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/5/51/Color_circle_%28hue-sat%29.png",
                    ),
                    radius: size.width * 0.15,
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
