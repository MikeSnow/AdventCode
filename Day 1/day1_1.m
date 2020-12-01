
M=readmatrix('C:\Users\mkgar\Downloads\input.txt');
M=sort(M);
M=M.';
for aux = M
    bum2=divideVenceras(M,aux);
    if(bum2~=-1)
        result2=aux*bum2;
        break
    end
end
disp(result2)

function result=divideVenceras(M,numero)
    if (numel(M))==1
        i=numel(M);
        isresult=numero+M(1);
        if (isresult==2020)
            result=M(1);
        else
            result=-1;
        end
    else
        divisor=fix(numel(M)/2);
        size_m=numel(M);
        Maux=M(1:divisor);
        Maux2=M((divisor+1):size_m);
        if(Maux2(1)<=(2020-numero))
            result=divideVenceras(Maux2,numero);
        else
            result=divideVenceras(Maux,numero);
        end
    end
end