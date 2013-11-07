
	process(CLK,RST)
	begin
		if (RST = '0' ) then
			curState <= Init;
		elsif CLK'event and CLK = '1' then
			if EN = '1' then

			end if;
		end if;
	end process;
