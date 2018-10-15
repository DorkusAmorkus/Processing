
//just testing with lines
for (int a = 100; a > 10; a = a-10) { //8 lines
  for (int b = 5; b < 80; b = b+15) { //5 lines
    for (int c = 30; c < 50; c = c+10) { //2 lines
      for (int d = 30; d > 10; d = d-10) {//2 lines
    line(50,a,60,a);
    line(30,b,40,b);
    line(c,70,c,80);
    line(d,50,d,60);
  }
}
}
}
