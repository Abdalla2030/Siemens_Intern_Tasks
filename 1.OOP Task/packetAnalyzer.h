#ifndef PACKETANALYZER_H_INCLUDED
#define PACKETANALYZER_H_INCLUDED
#include<iostream>
#include <string>
using namespace std;
class packetAnalyzer
{
private:
     int packetID;
    string inputData;
    string CRC;
    string ConcatenationIndicator;
    string DestinationAddress ;
    string MessageType;
    string PayloadSize;
    string ProtocolVersion;
    string RTCID;
    string SequenceID;
    string SourceAddress;
    string Type ;
public:
    static int count;
    packetAnalyzer();
    void setInputData(string );
    int getpacketID();
    string getInputData();
    string getCRC();
    string getConcatenationIndicator();
    string getDestinationAddress();
    string getMessageType();
    string getPayloadSize();
    string getProtocolVersion();
    string getRTCID();
    string getSequenceID();
    string getSourceAddress();
    string getType();
    void parsePacket(string );
    friend ostream  &operator<<(ostream  & ,packetAnalyzer & );

};
#endif // PACKETANALYZER_H_INCLUDED
