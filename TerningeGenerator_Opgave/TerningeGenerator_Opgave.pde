//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast


int antalKast = 30;
int[] kast = new int[antalKast];
int kastet = 0;
int textP = 40;
int textXValue = 900;

int boxX = 100;
int boxY = 600;
int boxSize = 0;
int boxWidth = 100;

int Num1 = 0;
int Num2 = 0;
int Num3 = 0;
int Num4 = 0;
int Num5 = 0;
int Num6 = 0;

int kastTilbage = 30;

//Alle disse int's er til brug senere. Ofte er det godt at udnytte variabler, hvis et bestemt tal skal ændres, eller bruges flere steder.


void setup() {
  size(1200, 800);
  clear();
  textSize(30);
  text("TRYK PÅ 'k' FOR AT KASTE", 50, 50);
}

void draw() {
}
//For en gangs skyld skal der ikke være noget i "void draw", da vi fokuserer på funktioner, og det at trykke på taster.

int lavTerningeKast(float min, float max){
  int nyesteKast = (int(random(min, max+1)));
  //Dette er en int, der bliver brugt til at tage et tilfældigt tal mellem 2 værdier. Værdier bliver først givet senere.
  if(nyesteKast == 1){
    Num1++;
  }
  if(nyesteKast == 2){
    Num2++;
  }
  if(nyesteKast == 3){
    Num3++;
  }
  if(nyesteKast == 4){
    Num4++;
  }
  if(nyesteKast == 5){
    Num5++;
  }
  if(nyesteKast == 6){
    Num6++;
  }
  //Efter den har taget et tilfældigt tal, tjekker den for at se hvilket tal det er, og øger det tals tæller med 1.

  kastTilbage--;
  //Rent visuelt. Den fortæller bare hvor mange kast man har tilbage, og da man lige har brugt et kast, har man 1 kast mindre.

  return nyesteKast;
  //Dette returnerer den tilfældige værdi, til at være "nyesteKast", som så kan bruges senere i koden.
}


void fjernSidsteKast(){
  if(kast[kastet-1] == 1){
    Num1--;
  }
  if(kast[kastet-1] == 2){
    Num2--;
  }
  if(kast[kastet-1] == 3){
    Num3--;
  }
  if(kast[kastet-1] == 4){
    Num4--;
  }
  if(kast[kastet-1] == 5){
    Num5--;
  }
  if(kast[kastet-1] == 6){
    Num6--;
  }
  //Når man fjerner det sidste kast, skal man først gå en plads tilbage i arrayen, da vi skal slette det sidste kast, og ikke det nuværende (som ikke engang er blevet lavet endnu), derfor "kastet-1".
  //Derefter tjekker den hvilket tal der var det sidste kast, og trækker en fra på den tilsvarende tæller.

  
  
  kast[kastet-1] = 0;
  kastet--;
  //Så sætter vi værdien til ingenting, og derfra fjerne vi den.
  text("DIT KAST BLEV: SLETTET", 50, 80);

  kastTilbage++;
  //Så nu har man 1 kast mere.
  
  //Det er en funktion, som vi bare kan kalde senere i koden. Smart at bruge, i stedet for at "hårdt kode", hvor man kun kan bruge den det ene sted.
}

void udskrivKast(){
  textSize(20);
  textP = 20;
  for(int VisKast = 0; VisKast < kastet; VisKast++){
    text("Kast nr. ["+VisKast+"] = "+ kast[VisKast], textXValue, textP);
    textP += 20;
  }
  //Dette forloop, tjekker hvor mange kast der er blevet lavet, og skriver dem alle sammen op oppe i højre side.
  
  textSize(30);
  text("DU HAR " + kastTilbage + " KAST TILBAGE", 50, 150);
  
  textSize(15);
  text("1'ere", boxX+30, boxY+20);
  text("2'ere", boxX+130, boxY+20);
  text("3'ere", boxX+230, boxY+20);
  text("4'ere", boxX+330, boxY+20);
  text("5'ere", boxX+430, boxY+20);
  text("6'ere", boxX+530, boxY+20);
  
  text(Num1 + " stk.", boxX+30, boxY - (Num1 * 20 + 10));
  text(Num2 + " stk.", boxX+130, boxY - (Num2 * 20 + 10));
  text(Num3 + " stk.", boxX+230, boxY - (Num3 * 20 + 10));
  text(Num4 + " stk.", boxX+330, boxY - (Num4 * 20 + 10));
  text(Num5 + " stk.", boxX+430, boxY - (Num5 * 20 + 10));
  text(Num6 + " stk.", boxX+530, boxY - (Num6 * 20 + 10));
  
  text("Fordeling af terningekastene", 125, 700);
  
  //Resten er selv forklarende.
   
  //Det er en funktion, som vi bare kan kalde senere i koden. Smart at bruge, i stedet for at "hårdt kode", hvor man kun kan bruge den det ene sted.
  
}


void tegnFordeling(){
  rect(boxX, boxY, boxWidth, boxSize - Num1 * 20);
  rect(boxX+100, boxY, boxWidth, boxSize - Num2 * 20);
  rect(boxX+200, boxY, boxWidth, boxSize - Num3 * 20);
  rect(boxX+300, boxY, boxWidth, boxSize - Num4 * 20);
  rect(boxX+400, boxY, boxWidth, boxSize - Num5 * 20);
  rect(boxX+500, boxY, boxWidth, boxSize - Num6 * 20);
  
  //Dette er alle kasserne, som jo bliver større med hvert kast. Men for at få kasserne til at gå op, skal det tal vi lægger til størrelsen, være negativt.
  //Det er en funktion, som vi bare kan kalde senere i koden. Smart at bruge, i stedet for at "hårdt kode", hvor man kun kan bruge den det ene sted.
  

  
}




void keyPressed() {
  clear();
  textSize(30);
  text("TRYK PÅ 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 50, 50);
  

  if (key=='k') {
    //OPGAVE:  lav manglende funktion der laver 'terningekast'. 
    if(kastet < 30){
      //Hvis der ikke er plads i arrayen, og man prøver at lave et kast mere, sker der en fejl. Derfor tjekker den først om der overhovedet er plads, før den laver selve kastet.

      int nyesteKastValue = lavTerningeKast(1, 6);
      kast[kastet] = nyesteKastValue;
      kastet++;
      //Det er så her hvor vi sætter 1 og 6 ind i lavTerningeKast, hvorefter den vælger en tilfældig og returnerer svaret, som nu hedder "nyesteKastValue".
      text("DIT KAST BLEV: " + nyesteKastValue, 50, 80);
      println(nyesteKastValue);
      println(kast);
    }

  }

  if (key == 's') {
    //OPGAVE:  lav manglende funktion til at et terningekast
    if(kastet > 0){
      fjernSidsteKast();
      //Vi har allerede denne funktion, derfor kan vi bare kalde den, og så bliver den udført.
    }
  }
  
  //OPGAVE: lav manglende funktion til at fordelingen af terningekast. 
  tegnFordeling();
  
  
  
  //OPGAVE: lav manglende funktion der kan udskrive alle terningekast som tekst ...
   udskrivKast();
   
   
   
}
