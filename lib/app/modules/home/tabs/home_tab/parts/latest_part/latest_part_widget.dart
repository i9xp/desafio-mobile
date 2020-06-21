import 'package:desafio_mobile/app/models/banner_model.dart';
import 'package:flutter/material.dart';

class LatestPartWidget extends StatelessWidget {
  final appController;

  const LatestPartWidget({Key key, @required this.appController})
      : assert(appController != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Latest", style: Theme.of(context).textTheme.headline1),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: GridView.builder(
                  itemCount: appController.banners.length + 1,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.6),
                  itemBuilder: (context, index) {
                    if (index < appController.banners.length) {
                      BannerModel banner = BannerModel.fromJson(
                          appController.banners[index].data);
                      return InkWell(
                        onTap: () {},
                        child: Image.network(
                          banner.img,
                        ),
                      );
                    } else if (index > 1) {
                      return InkWell(
                        onTap: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: 65,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(32)),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Theme.of(context).buttonColor,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "See more",
                                  style: Theme.of(context).textTheme.subtitle1,
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    } else {
                      return Container();
                    }
                  }),
            )
          ]),
    );
  }
}
