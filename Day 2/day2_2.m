M=readtable('input.txt');
claveValidas=0;
class(M)
Maux=table2cell(M)
for i=1:height(M)
    row=Maux(i,:);
    repeat=split(row(1,1),'-');
    min=str2num(cell2mat(repeat(1)));
    max=str2num(cell2mat(repeat(2)));
    letter=string(row(1,2));
    letter=erase(letter,':');
    clave=convertStringsToChars(string(row(1,3)));
    numberRepeat=count(clave,letter)
    clave(1,1)
    if xor(strcmp(clave(min),letter),(strcmp(clave(max),letter)))
        claveValidas=claveValidas+1;
    end
end 
claveValidas