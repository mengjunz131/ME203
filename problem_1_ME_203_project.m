%%Tic-Tac-Toe

board=zeros(3,3);

%player 1 is represented by ones on the board
%player 2 is represented by two's on the board

%mod(turns,2) divides turns by two and reports if there is any remainder so
%if mod=0 then turn is an even number
turns=0;

mod(turns,2)
for N=1:5000
while turns<9
   
    if mod(turns,2)==0
        %player 1 goes
        board
        r=randi([1,3],1,2)
        input1=r(1)
        input2=r(2)
        if board(input1,input2)==0
            board(input1,input2)=1;
             
        else
            disp('Square has already been selected. Enter new position.')
            turns=turns-1;
        end
    else
        board
        r=randi([1,3],1,2)
        input1=r(1)
        input2=r(2)
        if board(input1,input2)==0
            board(input1,input2)=2;
            
        else
            disp('Square has already been selected. Enter new position.')
            turns=turns-1;
        end
    end
    turns=turns+1;
end
A=(N)
board
end




