class PhotoList{
  String name;
  String tema;
  String imageAsset;

  PhotoList({
    required this.name,
    required this.tema,
    required this.imageAsset,
  });
}

var photophotoList = [
  PhotoList(name: "Turn Around", tema: "Evasion", imageAsset: "assets/images/el.JPG"),
  PhotoList(name: "The Outcast", tema: "Lonely in the Crowd", imageAsset: "assets/images/mbak.JPG"),
  PhotoList(name: "Turn the Ordinary into Extraordinary", tema: "Immortalize", imageAsset: "assets/images/bareng.JPG"),
  PhotoList(name: "A Small Thing", tema: "Us", imageAsset: "assets/images/mas.jpg"),
];