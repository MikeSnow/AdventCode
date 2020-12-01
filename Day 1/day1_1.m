
M=readmatrix('C:\Users\mkgar\Downloads\input.txt');
M=sort(M)
M=M.'
for aux = M
    bum2=divideVenceras(M,aux,1);
    if(bum2~=-1)
        bum2
        aux
        tercerNumero=2020-aux-bum2
        result2=aux*bum2*tercerNumero;
        break
    end
end
result2

function result=divideVenceras(M,numero,i)
    if (numel(M))==1
        i=numel(M);
        isresult=numero+M(1);
        if (i==2)
            if (isresult==2020)
                result=M(1);
            else
                result=-1;
            end;
        else
            if(isresult<2020)
                result=M(1);
            else
                result=-1
            end
        end
    else
        divisor=fix(numel(M)/2);
        size_m=numel(M);
        Maux=M(1:divisor);
        Maux2=M((divisor+1):size_m);
        if(i==2)
            if(Maux2(1)<=(2020-numero))
                result=divideVenceras(Maux2,numero,2);
            else
                result=divideVenceras(Maux,numero,2);
            end
        else
            if(Maux2(1)<(2020-numero))
                result=divideVenceras(Maux2,numero,1);
                if(result~=-1)
                    resultaux=result+numero;
                    if(resultaux>=2020)
                        result=-1
                    else
                        result=divideVenceras(Maux2,resultaux,2);
                        if(result==-1)
                            result=divideVenceras(Maux,resultaux,2);
                        end
                    end
                end
            else
                result=divideVenceras(Maux,numero,1);
                if(result~=-1)
                    resultaux=result+numero;
                    if(resultaux>=2020)
                        result=-1
                    else
                        result=divideVenceras(Maux2,resultaux,2);
                        if(result==-1)
                            result=divideVenceras(Maux,resultaux,2);
                        end
                    end
                end
            end
        end
    end
end