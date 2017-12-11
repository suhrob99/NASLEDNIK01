class Kvadrat {
    float x, y, s;
    Kvadrat(float _x, float _y, float _s) {
        this.x = _x;
        this.y = _y;
        this.s = _s;
    }
    void down(float _s) {
        this.y += _s;
    }
}
class Naslednik extends Kvadrat {
    color c1;
    Naslednik(float _x, float _y, float _s, color _c1) {
        super(_x, _y, _s);
        this.c1 = _c1;
    }
    void draw() {
        rect(this.x, this.y, this.s, this.s);
        fill(this.c1);
    }
}
Naslednik[] k_array;
void setup() {
    size(600, 500);
    k_array = new Naslednik[18];
    for (int i = 0; i < 18; i++) {
        k_array[i] = new Naslednik(random(width), random(height), 100.0, int(random(#000000,#ff0000)));
    }

}
void draw() {
    background(220, 180, 40);
    for (int i = 0; i < 18; i++) {
        k_array[i].draw();
        k_array[i].down(random(4));
    }
}