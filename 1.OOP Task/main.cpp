#include "packetAnalyzer.h"
#include <iostream>
#include <string>
#include <fstream>
using namespace std;

int countFileLines()
{
      string line;
      int countt = 0 ;
      ifstream input("input_packets");
      if (input.is_open())
      {
        while (getline (input,line))
        {
            countt++;
        }
        input.close();
   }
   return countt;
}

int main()
{
    int numberOfPackets = countFileLines();
    packetAnalyzer *packets;
    packets = new packetAnalyzer[numberOfPackets];
        ////////////// Read Input File
         string line;
         ifstream input("input_packets");
        if (input.is_open())
        {
            int i = 0 ;
            while (getline(input,line))
            {
                packets[i++].setInputData(line) ;
            }
            input.close();
        }
        //////////////
        // Parse Input
     for(int i = 0 ;i<numberOfPackets;i++){
         packets[i].parsePacket(packets[i].getInputData());
     }

    // Store Output of Parsing In File
    ofstream output;
    output.open("output");
    for(int i = 0 ;i<numberOfPackets;i++){
        //////////////
        output<<packets[i];
    }
    output.close();

    return 0;
}
