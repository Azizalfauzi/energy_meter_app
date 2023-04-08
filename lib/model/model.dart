class ListRoom {
  final int id;
  final String img;
  final String vol;
  final String curr;
  final String pow;
  final String room;
  final String energy;
  final int statvol;
  final int statpcurr;
  final int statpow;

  ListRoom(
    this.id,
    this.img,
    this.vol,
    this.curr,
    this.pow,
    this.room,
    this.energy,
    this.statvol,
    this.statpcurr,
    this.statpow,
  );
}

List<ListRoom> mockRoom = [
  ListRoom(1, 'assets/image_rs_1.png', '18', '56,14', '450,14',
      'Operation Room 01', '1.500.000', 0, 1, 0),
  ListRoom(2, 'assets/image_rs_2.png', '24', '40,90', '1000,14',
      'Operation Room 02', '1.200.000', 2, 0, 0),
  ListRoom(3, 'assets/image_rs_3.png', '19', '60,10', '650,10',
      'Operation Room 03', '1.800.000', 1, 1, 0),
  ListRoom(4, 'assets/image_rs_4.png', '15', '51,60', '700,00',
      'Operation Room 04', '1.000.000', 0, 0, 2),
];
