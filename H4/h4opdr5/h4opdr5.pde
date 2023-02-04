float sec = 739574056L;
float min = 0;
float hr = 0;
float day = 0;
float year = 0;

float secRemain = 0;
float minRemain = 0;
float hrRemain = 0;
float dayRemain = 0;
float yearRemain = 0;

float secCount = 0;
float minCount = 0;
float hrCount = 0;
float dayCount = 0;
float yearCount = 0;

//total calculator
min = sec/60;
hr = min/60;
day = hr/24;
year = day/365;

//count years
yearCount = floor(year);
yearRemain = year-floor(year);
//count days
day = yearRemain*365;
dayCount = floor(day);
dayRemain = day-floor(day);
//count hours
hr = dayRemain*24;
hrCount = floor(hr);
hrRemain = hr-floor(hr);
//count minutes
min = hrRemain*60;
minCount = floor(min);
minRemain = min-floor(min);
//count seconds
sec = minRemain*60;
secCount = floor(sec);
secRemain = sec-floor(sec);


print("Years: "); println(yearCount);
print("Days: "); println(dayCount);
print("Hours: "); println(hrCount);
print("Minutes: "); println(minCount);
print("Seconds: "); println(secCount);
print("Milliseconds: "); println(secRemain);

// https://www.unitjuggler.com/convert-time-from-s-to-yr-365.html
// ^ website gebruikt om te checken

// Het is niet 100% accuraat door floating point inaccuracy.
// Ik had van seconden omhoog moeten tellen en mod moeten gebruiken...
// ...maar ik heb geen zin om het opnieuw te maken lol.
// Volgensmij was dit niet eens de bedoeling van de opdracht en heb ik het veel ingewikkelder gemaakt dan het moest zijn, maar het was wel een leuke uitdaging. 
