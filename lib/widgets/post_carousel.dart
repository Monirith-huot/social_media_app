import 'package:flutter/material.dart';

import '../models/post_model.dart';

class PostCarousel extends StatelessWidget {
  final PageController pageController;
  final String title;
  final List<Post> posts;
  const PostCarousel(
      {Key? key,
      required this.pageController,
      required this.title,
      required this.posts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Text(
            "Post",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ),
        Container(
          height: 400,
          child: PageView.builder(
            controller: pageController,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return _buildPost(context, index);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPost(context, index) {
    Post post = posts[index];
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, widget) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = (pageController.page! - index);
          value = (1 - (value.abs() * 0.25)).clamp((0.0), 1);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 400,
            child: widget,
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(
              10,
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                  blurRadius: 6,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                height: 400,
                width: 400,
                image: AssetImage(
                  post.imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            right: 10,
            child: Container(
              padding: EdgeInsets.all(
                12,
              ),
              height: 110,
              decoration: const BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    post.location,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            post.likes.toString(),
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.comment,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            post.likes.toString(),
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
