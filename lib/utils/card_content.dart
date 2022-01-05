class CardContent {
  String title;
  String description;
  String iconUri;
  int exercisesCount;
  String repoUrl;
  String pageUri;
  List<String> routes;

  CardContent({
    required this.title,
    required this.description,
    required this.iconUri,
    required this.exercisesCount,
    required this.repoUrl,
    required this.pageUri,
    required this.routes,
  });
}
