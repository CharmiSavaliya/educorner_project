class EducationModel {
  final String image;
  final String title;
  final String discription;
  final int categoryId;

  EducationModel({
    required this.image,
    required this.title,
    required this.discription,
    required this.categoryId,
  });
}

List<EducationModel> educationAll = [
  EducationModel(
    image: 'assets/Screen1.png',
    title: 'Explore Limitless \n       Learning',
    discription:
        '     Lorem ipsum dolor sit amet a \nConsectetur. Ut proin accumsan be \n           tincidunt ultricies leo.',
    categoryId: 0,
  ),
  EducationModel(
      image: 'assets/Screen2.png',
      title: 'Set The Stage For \n        Success',
      discription:
          '     Lorem ipsum dolor sit amet a \nConsectetur. Ut proin accumsan be \n           tincidunt ultricies leo.',
      categoryId: 1),
  EducationModel(
      image: 'assets/Screen3.png',
      title: 'Dive Into Educational \n         Experience',
      discription:
          '     Lorem ipsum dolor sit amet a \nConsectetur. Ut proin accumsan be \n           tincidunt ultricies leo.',
      categoryId: 2),
  EducationModel(
      image: 'assets/Screen4.png',
      title: 'Start Your Academic \n          Journey',
      discription:
          '     Lorem ipsum dolor sit amet a \nConsectetur. Ut proin accumsan be \n           tincidunt ultricies leo.',
      categoryId: 3),
  EducationModel(
      image: 'assets/Screen5.png',
      title: 'Engage Deeply With \n        Edu Corner ',
      discription:
          '     Lorem ipsum dolor sit amet a \nConsectetur. Ut proin accumsan be \n           tincidunt ultricies leo.',
      categoryId: 4),
];

class Course {
  final String title;
  final String image;
  final String instructor;
  final String instructorImage;
  final String timeRemaining;
  final double progressPercentage;

  Course({
    required this.title,
    required this.image,
    required this.instructor,
    required this.instructorImage,
    required this.timeRemaining,
    required this.progressPercentage,
  });
}

Course pythonCourse = Course(
  title: 'Python',
  image: 'assets/python.png',
  instructor: 'Angela White',
  instructorImage: 'assets/angela.png',
  timeRemaining: '1 Hour remaining',
  progressPercentage: 75,
);

Course flutterCourse = Course(
  title: 'Flutter',
  image: 'assets/flutter.png',
  instructor: 'Harry Wilson',
  instructorImage: 'assets/harry.png',
  timeRemaining: '2 Hours remaining',
  progressPercentage: 60,
);

class CourseInfo {
  final String title;

  final String level;
  final String videoCount;
  final double rating;
  final String price;
  final String imagePath;

  CourseInfo({
    required this.title,
    required this.level,
    required this.videoCount,
    required this.rating,
    required this.price,
    required this.imagePath,
  });
}

List<CourseInfo> courses = [
  CourseInfo(
    title: 'UI UX Designing',
    level: 'Beginners Level',
    videoCount: '25 videos',
    rating: 4.9,
    price: '\$200',
    imagePath: 'assets/rectangle.png',
  ),
  CourseInfo(
    title: 'Digital Markete',
    level: 'Beginners Level',
    videoCount: '25 videos',
    rating: 5.0,
    price: 'Free',
    imagePath: 'assets/rectangle1.png',
  ),
  CourseInfo(
    title: ' DevOps',
    level: 'Intermediate  Level',
    videoCount: '20  Videos',
    rating: 4.8,
    price: 'Free',
    imagePath: 'assets/devops.png',
  ),
  CourseInfo(
    title: 'UI UX Designing',
    level: 'Beginners Level',
    videoCount: '25 videos',
    rating: 4.9,
    price: '\$200',
    imagePath: 'assets/rectangle.png',
  ),
  CourseInfo(
    title: 'Digital Markete',
    level: 'Beginners Level',
    videoCount: '25 videos',
    rating: 5.0,
    price: 'Free',
    imagePath: 'assets/rectangle1.png',
  ),
];
List<CourseInfo> books = [
  CourseInfo(
    title: ' DevOps',
    level: 'Intermediate  Level',
    videoCount: '20  Videos',
    rating: 4.8,
    price: 'Free',
    imagePath: 'assets/devops.png',
  ),
  CourseInfo(
    title: 'Advanced SEO',
    level: 'Advanced Level',
    videoCount: '20 videos',
    rating: 4.8,
    price: '\$350',
    imagePath: 'assets/advance.png',
  ),
  CourseInfo(
    title: 'UI UX Designing',
    level: 'Beginners Level',
    videoCount: '25 videos',
    rating: 4.9,
    price: '\$200',
    imagePath: 'assets/rectangle.png',
  ),
];
// class coursedetails {
//   final String title;

//   final String level;
//   final String videoCount;
//   final double rating;
//   final String price;
//   final String imagePath;
//   bool isBookmarked;

//   coursedetails({
//     required this.title,
//     required this.level,
//     required this.videoCount,
//     required this.rating,
//     required this.price,
//     required this.imagePath,
//     this.isBookmarked = false,
//   });
// }

// List<coursedetails> books = [
//   coursedetails(
//     title: ' DevOps',
//     level: 'Intermediate  Level',
//     videoCount: '20  Videos',
//     rating: 4.8,
//     price: 'Free',
//     imagePath: 'assets/devops.png',
//   ),
//   coursedetails(
//     title: 'Advanced SEO',
//     level: 'Advanced Level',
//     videoCount: '20 videos',
//     rating: 4.8,
//     price: '\$350',
//     imagePath: 'assets/advance.png',
//   ),
//   coursedetails(
//     title: 'UI UX Designing',
//     level: 'Beginners Level',
//     videoCount: '25 videos',
//     rating: 4.9,
//     price: '\$200',
//     imagePath: 'assets/rectangle.png',
//   ),
// ];
