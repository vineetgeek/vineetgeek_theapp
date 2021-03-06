import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../model/post_entity.dart';
import '../widgets/helpers.dart';
import '../widgets/post_card.dart';
import 'package:share/share.dart';
import 'package:like_button/like_button.dart';

class PostDetails extends StatelessWidget {
  PostEntity post;

  PostDetails(this.post);

  @override
  Widget build(BuildContext context) {
//    post.isDetailCard = true;
    return Directionality(
      textDirection: textDirection,
      child: Scaffold(
        // resizeToAvoidBottomPadding: false,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            Size size = MediaQuery.of(context).size;
            return <Widget>[
              SliverAppBar(
                iconTheme: IconThemeData(color: Colors.white),
                floating: true,
                expandedHeight: 300.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: <Widget>[
                      Hero(
                        tag: post.image,
                        child: CachedImage(
                          post.image,
                          width: size.width,
                          height: size.height,
                        ),
                      ),
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Colors.black, Colors.transparent],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Author(post: post),
                      ),
                      Positioned(
                        bottom: 35.0,
                        child: Container(
                            width: size.width,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    post.title,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Positioned.directional(
                        textDirection: textDirection,
                        bottom: 0,
                        end: 0,
                        child: CategoryPill(post: post),
                      ),
                    ],
                  ),
                ),
              )
            ];
          },
          body: SingleChildScrollView(
            child: Html(
              data: post.content,
              padding: EdgeInsets.all(8.0),
              linkStyle: const TextStyle(
                color: Colors.blueAccent,
                decorationColor: Colors.blueAccent,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.share,
                  size: 24.0,
                ),
                onPressed: () {
                  Share.share('Check out this news: ' + post.link);
                },
              ),
              Container(
                child: LikeButton(
                  size: 24.0,
                  circleColor: CircleColor(start: Colors.red, end: Colors.red),
                  bubblesColor: BubblesColor(
                    dotPrimaryColor: Colors.red,
                    dotSecondaryColor: Colors.red,
                  ),
                  likeBuilder: (bool isLiked) {
                    return Icon(
                      Icons.favorite,
                      color: isLiked ? Colors.red : Colors.grey,
                      size: 24.0,
                    );
                  },
                  likeCount: 234,
                  countBuilder: (int count, bool isLiked, String text) {
                    var color = isLiked ? Colors.red : Colors.grey;
                    Widget result;
                    if (count == 0) {
                      result = Text(
                        "love",
                        style: TextStyle(color: color),
                      );
                    } else
                      result = Text(
                        text,
                        style: TextStyle(color: color),
                      );
                    return result;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
