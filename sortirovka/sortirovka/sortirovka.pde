int n = 225;
int[] array = new int[n];

void setup() {
    size(800, 800);
    array = rnd_array(n, width / 3);
}

int[] rnd_array(int n, int supremum) {
    int[] x = new int[n];
    for (int i = 0; i < n; i++) {
        x[i] = int(random(supremum));
    }
    return x;
}

void draw() {
    stroke(255, 255, 0);
    background(192,168,1);
    for (int i = 0; i < n - 1; i++) {
        int infimum = i;
        for (int j = i + 1; j < n; j++) {
            if (array[j] < array[infimum]) {
                infimum = j;
            }
        }
        int t = array[i];
        array[i] = array[infimum];
        array[infimum] = t;
    }
    arr(array, n);
}

void arr(int[] x, int s) {
    stroke(0, 0, 255);
    for (int i = 0; i < s; i++) {
        rect(0, height / s * i, x[i], height / s);
    }
}

void mouseClicked() {
    array = rnd_array(n, width / 3);
}