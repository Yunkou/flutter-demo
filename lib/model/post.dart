class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
      title: 'MUF毛 × Sonme商业插画',
      author: '请CALL我毛毛',
      imageUrl: 'https://img.ui.cn/data/file/8/8/5/2533588.png'),
  Post(
      title: '【系列插画】扁平插画小结',
      author: 'Arche阿北',
      imageUrl: 'https://img.ui.cn/data/file/8/3/3/2525338.png'),
  Post(
      title: '《怪兽一族》',
      author: 'whitton',
      imageUrl: 'https://img.ui.cn/data/file/1/7/7/2477771.jpg'),
  Post(
      title: 'HAGO精灵三维形象',
      author: 'kazhafeite',
      imageUrl: 'https://img.ui.cn/data/file/2/2/5/2456522.png'),
  Post(
      title: '自闭症幼儿主题插画',
      author: '承勝品創',
      imageUrl: 'https://img.ui.cn/data/file/9/4/9/2376949.jpg'),
  Post(
      title: 'Yourpet有宠-IP形象设计',
      author: '泰而美动漫设计',
      imageUrl: 'https://img.ui.cn/data/file/2/0/9/2359902.png'),
  Post(
      title: '国潮西游',
      author: '姚叉叉',
      imageUrl: 'https://img.ui.cn/data/file/3/6/5/2316563.jpg'),
];
