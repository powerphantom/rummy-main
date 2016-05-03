#include "setup.h"

int main(){
	int i=0;
  vector<setup> hand;
  vector<setup> cards;
  stack<setup> deck;
  vector<setup> stock;
  vector<setup> discard;
  vector<setup> com_hand;

  vect_intail(cards);
  shuffle_deck(cards, deck);
  /*Deal(deck, com_hand);
  Com_Draw(deck, com_hand);
  Com_Sequence(stock, com_hand);
  Com_Discard(discard, com_hand);*/
  Deal(deck, hand);
	for(i; i<hand.size(); i++){
		cout << hand[i].suit << hand[i].val << endl;
	}

  Draw_Card (deck,hand, discard);
  Ask_squence(hand, stock);
  Discard(hand, discard);
	cout<<"Hand: "<<endl;
	for(i=0; i<hand.size(); i++){
		cout << hand[i].suit << hand[i].val << endl;
	}
	cout<<"Stock: "<<endl;
	for(i=0; i<stock.size(); i++){
		cout << stock[i].suit << stock[i].val << endl;
	}
	cout<<"Discard: "<<endl;
	for(i=0; i<discard.size(); i++){
		cout << discard[i].suit << discard[i].val << endl;
	}

  return 0;
}
