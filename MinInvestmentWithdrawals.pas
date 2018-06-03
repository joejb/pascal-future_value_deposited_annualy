program MinInvestmentWithdrawals(input,output);

var
    WithdrawlPerYear: integer, NumYears: integer, NumMonths: integer;
    amount: real, percent: real, TotalTime: real;

begin {main}
    write ('Minimum Investment for Withdrawals');
    
    repeat
        write('Amount of Withdrawals: $');
        read(amount);
        write('Nominal Interest Rate (%): ');
        read(percent);

        repeat
            write('Number of Withdrawals Per Year: ');    
        until ReadInt(WithdrawlPerYear, 1, maxint);

        repeat
            write('Number of Whole Years: ');
        until ReadInt(NumYears, 1, maxint);
        repeat
            write('Number of additional months (0-12): ');
        until ReadInt(NumMonths, 0 , 12);

        TotalTime := NumYears + NumMonths/12;
        rate := percent / WithdrawlPerYear/100;

        write('Minimum Investment = $',
            amount / rate * (1 - 1/RealRaise (rate + 1, WithdrawlPerYear * TotalTime) ) :6:2);
    until (NotAgain);
end;
