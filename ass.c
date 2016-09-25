#include <stdio.h>
#include <string.h>

int f(char t[]){
    if(strcmp(t,"AL")==0)return 0;
    else if(strcmp(t,"CL")==0)return 1;
    else if(strcmp(t,"DL")==0)return 2;
    else if(strcmp(t,"BL")==0)return 3;
    else if(strcmp(t,"AH")==0)return 4;
    else if(strcmp(t,"CH")==0)return 5;
    else if(strcmp(t,"DH")==0)return 6;
    else if(strcmp(t,"BH")==0)return 7;
    else return 200;
}

int main(){
    char t[10], u[10], v[10], sy[200];
    int i=0;

    do{
	scanf("%s",t);
	if(t[1]==':')sy[t[0]] = i;
	if(strcmp(t,"int")==0){
	    scanf("%s",u);i+=2;
	    printf("205 %s ",u);
	}
	if(strcmp(t,"jc")==0){
            scanf("%s",u);i+=2;
            printf("114 %d ",sy[u[0]-i]);
        }
	if(strcmp(t,"add")==0){
            scanf("%s%s",u,v);i+=3;
            printf("128 %d %s ",192+f(u),v);
        }
	if(strcmp(t,"cmp")==0){
            scanf("%s%s",u,v);i+=3;
            printf("128 %d %s ",248+f(u),v);
        }
	if(strcmp(t,"mov")==0){
            scanf("%s%s",u,v);i+=2;
            if(f(v)<200)printf("138 %d ",192+8*f(u)+f(v));
	    else printf("%d %s ",176+f(u),v);
	}
	if(strcmp(t,"sub")==0){
	    scanf("%s%s",u,v);i+=2;
	    if(f(v)<200)printf("42 %d ",192+8*f(u)+f(v));
	    else {printf("128 %d %s ", 232+f(u),v);i+=1;}
	}
	if(strcmp(t,"adc")==0){
	    scanf("%s%s",u,v);i+=3;
	    printf("128 %d %s ", 208+f(u),v);
	}
    
    }while(strcmp(t,"end")!=0);
    
    return 0;
}
