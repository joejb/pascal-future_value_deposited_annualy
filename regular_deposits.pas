program RegualDeposits(input,output);
{uses transcendentals; omit this linne if not Apple Pascal}

var
    NumYears, NumMonths, DepsPerYear: integer;
    value, percent, RatePerDep, TotalTime: real;

{$I RealRaise}
{$I ReadInt}
{$I NotAgain}

begin {main}
    writeln('Regular Deposits');

    repeat
        writeln;
        write('Desired future value: $');
        readln(value);
        write('Nominal interest rate: (%) ');
        readln(percent);

        repeat
            write('Number of Deposits Per Year?');
        until ReadInt (DepsPerYear, 1, maxint);

        repeat
            write('Number of Whole Years: ');
        until ReadInt(NumYears, 1, maxint);

        repeat
            write('Number of Additional Months (0-12): ')
        until ReadInt(NumMonths, 0.12);

        RatePerDep := percent / DepsPerYear / 100; 
        TotalTime := NumYears + NumYears / 12;

        writeln;
        writeln('Regular Deposits = $',
                value * RatePerDep / (RealRaise(RatePerDep + 1,
                DepsPerYear * TotalTime) - 1) :7:2);
        writeln
    until (NotAgain);
end.
