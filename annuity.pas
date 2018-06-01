begin {main}
	writeln ('Future value of an investment');
	
	repeat
		writeln;
		write('Initial Investment: $');
		readln(investment);
		write('Nominal Interest rate (%) ');
		readln(percent);
		write('Number of compounding periods per year: ');
		readln(NumPeriods);
		write('Number of whole year: ');
		readln(NumYears);
		write('Number of periods past last whole years: ');
		readln(XtraPeriods);

		rate:= percent / NumPeriods / 100;
		writeln('Future value = $', 
				investment * IntRaise (1 + rate, NumPeriods * NumYears + XtraPeriods)
				:9:2);
		writeln
	until NotAgain
end.
