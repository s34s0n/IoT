/*
    ------ Waspmote Pro Code Example --------

    Explanation: This is the basic Code for Waspmote Pro

    Copyright (C) 2016 Libelium Comunicaciones Distribuidas S.L.
    http://www.libelium.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 ll the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

int n=0;

void setup()
{
  USB.ON();
  USB.println(F("Enter the no: of students\n"));
  if(USB.available())   
  {      
    n=USB.read(); 
  }
  
}


void loop()
{
  if(n==1)
  {
    USB.printf("1\n");
    USB.printf("1\n");
  }
  else if(n==2)
  {
    USB.printf("1\n");
    USB.printf("1\n");
  }
  else if(n==3)
  {
    USB.printf("2\n");
    USB.printf("1 3\n");
  }
  else if(n==4)
  {
    USB.printf("4\n");
    USB.printf("2 4 1 3\n");
  }
  else
  {
    USB.printf("%d\n",n);
    for(int i=1;i<=n;i+=2)
    {
      USB.printf("%d",i);
    }
    for(int i=2;i<=n;i+=2)
    {
      USB.printf("%d",i);
    }
    USB.printf("2\n");
    
  }
}
