# Todo

- tabs for daily/weekly/... graphs instead of everything on 1 page
- check input security (weather.cgi?zip=../../../)
- db_update.sh : should take timezone of city in account
- new fetching procedure for XML files
- different units for cities.. : under /etc/rrdweather.conf
  "e-28412" for english units for 28412
  "m-BEXX0014" for metric units for Mons, Belgium
- fetch weather data only in Fahrenheit and conver to Celsius if necessary, using the following formula :
  * ($fahr - 32) * 5/9
