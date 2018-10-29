size (200,200);

for (int i = 80; i > 20; i = i-5) {
  for (int k = 10; k < 100; k = k+5) {

  ellipse(i,k,10,10);
  rect(k+100,i+100,10,10);
}
}
