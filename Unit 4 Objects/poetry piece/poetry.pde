PFont f;
//array of strings to store the lines of a love poem
String[] Lovepoem = {
  "Our love still young, our marriage new,",
  "Robert and I felt blackness as",
  "a second vow, a spiritual seal",
  "between two souls who spent long years",
  "before we met wondering if",
  "we would ever find each other.",
  "Now we were one and would soon bring",
  "a life into  being. A new",
  "beautiful life, a black life,",
  "we would love and bring into the",
  "Fells family. Irene’s sibling,",
  "a new Negro beginning.",
  "Robert left on assignment",
  "to write about Liberia,",
  "a foothold in the motherland.",
  "He died at sea. Pneumonia.",
  "The last letter he wrote to me",
  "said Africa doesn’t want us.",
  "Garvey was in prison for fraud",
  "(faked charges). I was carrying",
  "the child I wanted to share with Robert.",
  "Roberta came early. Grief was",
  "our midwife. God must hate Negroes.",
  "Why does God make our luck so bad?",
  "She lived ten days. Is this the worst?",
  "Is worse coming? What is the point",
  "of making art? Flowers on graves?",
  "Dancing in masks to placate death?",
  "I don’t want it. I don’t want art.",
  "Take the gift back. With everything else."
};
void setup() {
  size(1000, 1000);
  background(255);
  textAlign(LEFT); //keeps text to the left of the screen
  f = createFont("Arial", 20, true); //creates the font used in processing
  fill(#030302); // fills the color of the text
    for (int i = 0; i < Lovepoem.length; i++) { // loops each line so the display of the poem on the screen
    text(Lovepoem[i], 20, (i + 2) * 18);
  }
}

void mouseClicked() {
  save("output.png");
  println(frameCount + ": saved as output.png");
}
