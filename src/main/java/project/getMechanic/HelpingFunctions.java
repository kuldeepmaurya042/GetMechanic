package project.getMechanic;

import java.time.LocalDate;
import java.util.Date;

public class HelpingFunctions {
	
	public Date convertToDateUsingDate(LocalDate date) {
        return java.sql.Date.valueOf(date);
    }

}
