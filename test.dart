var arrayy = List<int>.filled(609, 0);

// <-----------------building star pattern---------------------->
void fillarrayy() {
  int i, j, k, n = 1;

  for (j = 13 + 30; j <= 25 + 30; j++) {
    k = j;

    for (i = n; i <= 13; i++) {
      arrayy[(i) * 29 + k] = 7;
      k--;
    }

    n++;
  }

  n = 18;

  for (j = 14; j >= 0; j--) {
    k = j;

    for (i = n; i >= 6; i--) {
      arrayy[(i) * 29 + k] = 7;

      k++;
    }

    n--;
  }
}

void main() {
  int position = 194;

  fillarrayy();

  suggestPosition(position);
}

void suggestPosition(int x) {
  // int i, j;

  if (arrayy[x - 28] == 7) {
    arrayy[x - 28] = 9;
  } else if (arrayy[x - 28] < 7) {
    nonempty(x - 28 - 28);
  }

  if (arrayy[x - 30] == 7) {
    arrayy[x - 30] = 9;
  } else if (arrayy[x - 30] < 7) {
    nonempty(x - 30 - 30);
  }

  if (arrayy[x + 28] == 7) {
    arrayy[x + 28] = 9;
  } else if (arrayy[x + 28] < 7) {
    nonempty(x + 28 + 28);
  }

  if (arrayy[x + 30] == 7) {
    arrayy[x + 30] = 9;
  } else if (arrayy[x + 30] < 7) {
    nonempty(x + 30 + 30);
  }

  if (arrayy[x - 2] == 7) {
    arrayy[x - 2] = 9;
  } else if (arrayy[x - 2] < 7) {
    nonempty(x - 2 - 2);
  }

  if (arrayy[x + 2] == 7) {
    arrayy[x + 2] = 9;
  } else if (arrayy[x + 2] < 7) {
    nonempty(x + 2 + 2);
  }
}

// this is for advance jumping

void nonempty(int x) {
  if (arrayy[x] == 7) {
    arrayy[x] = 9;

    surroundcheck(x);
  }
}

void surroundcheck(int x) {
  // int i;

  if (arrayy[x - 28] < 7) {
    nonempty(x - 28 - 28);
  }

  if (arrayy[x - 30] < 7) {
    nonempty(x - 30 - 30);
  }

  if (arrayy[x + 28] < 7) {
    nonempty(x + 28 + 28);
  }

  if (arrayy[x + 30] < 7) {
    nonempty(x + 30 + 30);
  }

  if (arrayy[x - 2] < 7) {
    nonempty(x - 2 - 2);
  }

  if (arrayy[x + 2] < 7) {
    nonempty(x + 2 + 2);
  }
}
// <---------------- functions ------------------------------>
