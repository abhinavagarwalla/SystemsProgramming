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
    else if(strcmp(t,"AX")==0)return 1;
    else if(strcmp(t,"CX")==0)return 2;
    else if(strcmp(t,"DX")==0)return 3;
    else if(strcmp(t,"BX")==0)return 4;
    else return 200;
}

int main(){
    char t[10], u[10], v[10], sy[200];
    int i=0;

    FILE *fp;
    fp = fopen("tmp.txt","w");

    do{
	scanf("%s",t);
	if(t[1]==':'){sy[t[0]] = i;}
	if(strcmp(t,"int")==0){
	    scanf("%s",u);i+=2;
	    fprintf(fp,"205 %s ",u);
	}
	if(strcmp(t,"jc")==0){
            scanf("%s",u);i+=2;
            fprintf(fp,"114 %d ",sy[u[0]]-i);
        }
	if(strcmp(t,"add")==0){
            scanf("%s%s",u,v);i+=3;
            if(v[0]<='9'&&v[0]>='0')fprintf(fp,"128 %d %s ",192+f(u),v);
	    else fprintf(fp,"128 %d %d ",192+f(u),192+f(v));
        }
	if(strcmp(t,"cmp")==0){
            scanf("%s%s",u,v);i+=2;
            if(f(v)>200){
		i++;
		if(u[1]!='X')fprintf(fp,"128 %d %s ",248+f(u),v);
	    }
	    else{
		if(u[1]!='X')fprintf(fp,"58 %d ",192+8*f(u)+f(v));
	    }
        }
	if(strcmp(t,"mov")==0){
            scanf("%s%s",u,v);i+=2;
            if(f(v)<200){
		if(u[1]!='X')fprintf(fp,"138 %d ",192+8*f(u)+f(v));
		else fprintf(fp,"139 %d ",192+8*f(u)+f(v));
	    }
	    else{
		if(u[1]!='X')fprintf(fp,"%d %s ",176+f(u),v);
		else{
		    i++;
		    int tov = atoi(v);
		    fprintf(fp,"%d %d %d ",184+f(u),atoi(v)%256, atoi(v)/256);
		}
	    }
	}
	if(strcmp(t,"sub")==0){
	    scanf("%s%s",u,v);i+=2;
	    if(f(v)<200)fprintf(fp,"42 %d ",192+8*f(u)+f(v));
	    else {fprintf(fp,"128 %d %s ", 232+f(u),v);i+=1;}
	}
	if(strcmp(t,"adc")==0){
	    scanf("%s%s",u,v);i+=3;
	    fprintf(fp,"128 %d %s ", 208+f(u),v);
	}
    
    }while(strcmp(t,"end")!=0);
    fclose(fp);
    return 0;
}
