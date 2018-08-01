//
//  main.c
//  chuccnnyc
//
//  Created by Trần Tiến Anh on 7/25/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

#include <stdio.h>
#include <string.h>
void matma(char a[]) {
    for (int i=0; i<50; i++) {
        a[i]+=1;
    }
}

int main(int argc, const char * argv[]) {
    char mess[50]="chuc em sinh nhat vui ve ";
    matma(mess);
    for(int i=0;i<sizeof(mess);i++) {
    
    }
    
}
