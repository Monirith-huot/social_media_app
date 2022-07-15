// Posts
import '../models/post_model.dart';
import '../models/user_model.dart';

final _post0 = Post(
  imageUrl: 'assets/images/post0.jpg',
  author: User(
      backgroundImageUrl: '',
      favorites: [],
      followers: 0,
      following: 0,
      name: '',
      posts: [],
      profileImageUrl: ''),
  title: 'Post 0',
  location: 'Location 0',
  likes: 102,
  comments: 37,
);
final _post1 = Post(
  imageUrl: 'assets/images/post1.jpg',
  author: User(
      backgroundImageUrl: '',
      favorites: [],
      followers: 0,
      following: 0,
      name: '',
      posts: [],
      profileImageUrl: ''),
  title: 'Post 1',
  location: 'Location 1',
  likes: 532,
  comments: 129,
);
final _post2 = Post(
  imageUrl: 'assets/images/post2.jpg',
  author: User(
      backgroundImageUrl: '',
      favorites: [],
      followers: 0,
      following: 0,
      name: '',
      posts: [],
      profileImageUrl: ''),
  title: 'Post 2',
  location: 'Location 2',
  likes: 985,
  comments: 213,
);
final _post3 = Post(
  imageUrl: 'assets/images/post3.jpg',
  author: User(
      backgroundImageUrl: '',
      favorites: [],
      followers: 0,
      following: 0,
      name: '',
      posts: [],
      profileImageUrl: ''),
  title: 'Post 3',
  location: 'Location 3',
  likes: 402,
  comments: 25,
);
final _post4 = Post(
  imageUrl: 'assets/images/post4.jpg',
  author: User(
      backgroundImageUrl: '',
      favorites: [],
      followers: 0,
      following: 0,
      name: '',
      posts: [],
      profileImageUrl: ''),
  title: 'Post 4',
  location: 'Location 4',
  likes: 628,
  comments: 74,
);
final _post5 = Post(
  imageUrl: 'assets/images/post5.jpg',
  author: User(
      backgroundImageUrl: '',
      favorites: [],
      followers: 0,
      following: 0,
      name: '',
      posts: [],
      profileImageUrl: ''),
  title: 'Post 5',
  location: 'Location 5',
  likes: 299,
  comments: 28,
);

final posts = [_post0, _post1, _post2, _post3, _post4, _post5];
final users = [
  User(
      profileImageUrl: 'assets/images/user0.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 0,
      following: 0,
      name: '',
      posts: []),
  User(
      profileImageUrl: 'assets/images/user1.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 0,
      following: 0,
      name: '',
      posts: []),
  User(
      profileImageUrl: 'assets/images/user2.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 0,
      following: 0,
      name: '',
      posts: []),
  User(
      profileImageUrl: 'assets/images/user3.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 0,
      following: 0,
      name: '',
      posts: []),
  User(
      profileImageUrl: 'assets/images/user4.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 0,
      following: 0,
      name: '',
      posts: []),
  User(
      profileImageUrl: 'assets/images/user5.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 0,
      following: 0,
      name: '',
      posts: []),
  User(
      profileImageUrl: 'assets/images/user6.jpg',
      backgroundImageUrl: '',
      favorites: [],
      followers: 0,
      following: 0,
      name: '',
      posts: []),
];
final _yourPosts = [_post1, _post3, _post5];
final _yourFavorites = [_post0, _post2, _post4];

// Current User
final User currentUser = User(
  profileImageUrl: 'assets/images/user.jpg',
  backgroundImageUrl: 'assets/images/user_background.jpg',
  name: 'Rebecca',
  following: 453,
  followers: 937,
  posts: _yourPosts,
  favorites: _yourFavorites,
);
