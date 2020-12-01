
M=readmatrix('C:\Users\mkgar\Downloads\input.txt');
M=sort(M)
M=M.'
result=-1;
for index = 1:1:numel(M)
    aux=M(index);
    Maux=M(index+1:numel(M))
    for index2 = 1:1:numel(Maux)
        aux2=Maux(index2);
        if((aux+aux2)>=2020)
            break;
        end
        Maux2=Maux(index2+1:numel(Maux))
        for aux3 = Maux2
            if((aux+aux2+aux3)==2020)
                result=aux*aux2*aux3
                break;
            end
        end
        if(result~=-1)
            break;
        end
    end
    if(result~=-1)
       break;
    end
end
result


 