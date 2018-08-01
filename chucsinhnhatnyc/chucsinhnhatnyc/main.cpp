//
//  main.cpp
//  chucsinhnhatnyc
//
//  Created by Trần Tiến Anh on 7/25/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

#include <iostream>
using namespace std;
void matma(char a[]) {
    for (int i=0; i<40; i++) {
        a[i]+=1;
        printf("%c",a[i]);
    }
    printf("\n");
}
void dichngc(char a[]) {
    

    for (int i=0; i<40; i++) {
        a[i]-=1;
        printf("%c",a[i]);
    }
}
int main(int argc, const char * argv[]) {
    char a[]= "Happy Birthday, happy to have loved you";
    char b[]= "Ibqqz!Cjsuiebz-!ibqqz!up!ibwf!mpwfe!zpv";
    matma(a);
    dichngc(b);
}
