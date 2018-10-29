//just testing with lines


  size(200,200);





for (int a = height; a > 10; a = a-10) { //8 lines
  for (int b = 5; b < width; b = b+15) { //5 lines
    for (int c = 30; c < height; c = c+10) { //2 lines
      for (int d = width; d > 10; d = d-10) {//2 lines
    line(50,a-10,60,a);
    line(30,b,40,b+10);
    line(c,70,c-10,80);
    line(d+2,50,d,60);

  
      }
    }
  }
} 
