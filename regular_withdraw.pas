program RegularWithdraw(input,output);

var
    WithdrawPerYear, NumYears, NumMonths: integer;
    invest, percent, RatePerWithdraw, TotalTime: real;

{$I ReadInt}
{$I RealRaise}
{$I NotAgain}

begin {main}
    writeln('Regular Withdrawals from an Investment');

    repeat
        writeln;
        write('Initial Investment: $');
        readln(invest);
        write('Nominal Interest Rate: (%) ');
        readln(percent);

        repeat
            write('Number of Withdrawals Per Year')
        until ReadInt(WithdrawPerYear, 1, maxint);

        repeat
            write('Number of Whole Years: ')
        until ReadInt(NumYears, 1, maxint);

        repeat
            write('Number of additioonal months (0-12): ')
        until ReadInt(NumMonths, 0.12);

        RatePerWithdraw := percent / WithdrawPerYear / 100;
        TotalTime := NumYears + NumMonths / 12;

        writeln('Amount of each withdrawal = $',
                invest * (RatePerWithdraw / (RealRaise (RatePerWithdraw + 1, + RatePerWithdraw):6:2);
            writeln;
    until (NotAgain);
end.
