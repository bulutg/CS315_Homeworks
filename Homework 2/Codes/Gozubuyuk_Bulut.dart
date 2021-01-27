void main() {
  print('-----------------pretest');
  // pre test
  var i = 0;
  while (i < 5) {
    print(i);
    i++;
  }

  print('-----------------posttest');
  // post test
  i = 0;
  do {
    print(i);
    i++;
  } while (i < 5);

  print('-----------------break');
  // unlabeled break
  i = 0;
  while (i < 5) {
    i++;
    print(i);
    break;
  }

  print('-----------------continue');
  // continue
  i = 0;
  while (i < 5) {
    i++;
    if (i == 2) { continue; }
    print(i);
  }

  print('-----------------labeledbreak');
  // labeled break
  i = 0;
  label:
  while (true) {
    while (true) {
      print(i);
      if (i == 1) break label;
      i++;
    }
  }

  print('-----------------labeledcontinue');
  // labeled continue
  i = 0;
  var j = 0;
  anotherlabel:
  while (i < 2) {
    while (j < 2) {
      print("$i,$j");
      j++;
      if (i == j) continue anotherlabel;
    }
    i++;
    print(i);
  }

}