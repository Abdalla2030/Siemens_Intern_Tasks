#include "packetAnalyzer.h"

int packetAnalyzer::count = 0;

packetAnalyzer::packetAnalyzer(){
     packetID = count;
     count++;
     inputData = "";
    CRC = "";
    ConcatenationIndicator = "";
    DestinationAddress = "";
    MessageType = "";
    PayloadSize = "";
    ProtocolVersion = "";
    RTCID = "";
    SequenceID = "";
    SourceAddress = "";
    Type = "";
}

void packetAnalyzer::setInputData(string s){
    inputData = s ;
}

int packetAnalyzer::getpacketID(){
  return packetID;
}

string packetAnalyzer::getInputData(){
        return inputData;
}
string packetAnalyzer::getCRC(){
     return CRC;
}
string packetAnalyzer::getConcatenationIndicator(){
    return ConcatenationIndicator ;
}
string packetAnalyzer::getDestinationAddress(){
    return DestinationAddress ;
}
string packetAnalyzer::getMessageType(){
     return MessageType ;
}
string packetAnalyzer::getPayloadSize(){
     return PayloadSize ;
}
string packetAnalyzer::getProtocolVersion(){
     return ProtocolVersion ;
}
string packetAnalyzer::getRTCID(){
     return RTCID;
}
string packetAnalyzer::getSequenceID(){
    return SequenceID;
}
string packetAnalyzer::getSourceAddress(){
   return SourceAddress;
}
string packetAnalyzer::getType(){
   return Type;
}

void packetAnalyzer::parsePacket(string input){
    int startIndex = 0;
    int packetLength = input.size();

    CRC = input.substr(packetLength-8,8);
    input = input.substr(startIndex, input.size()-8);
        //Concatenation Indicator
    startIndex += 16 ;
    DestinationAddress = input.substr(startIndex,12);

    startIndex += 12 ;
    SourceAddress = input.substr(startIndex,12);

    startIndex += 12 ;
    Type =  input.substr(startIndex,4);
    startIndex += 4 ;
    if(Type=="AEFE"){
            ProtocolVersion = input.substr(startIndex,1);
            startIndex +=1 ;

            ConcatenationIndicator =  input.substr(startIndex,1);
            startIndex +=1 ;

            MessageType =  input.substr(startIndex,2);
            startIndex +=2 ;

            PayloadSize = input.substr(startIndex,4);
            startIndex += 4 ;

           RTCID =  input.substr(startIndex,4);
           startIndex += 4 ;

           SequenceID =  input.substr(startIndex,4);
            startIndex += 4 ;
    }

}
ostream  &operator<<(ostream & output,packetAnalyzer & packet_analyzer){
        if(packet_analyzer.getType()=="AEFE"){
                output<<"Packet # "<<packet_analyzer.getpacketID()<<":"<<endl;
                output<<packet_analyzer.getInputData()<<endl;
                output<<"CRC: "<<packet_analyzer.getCRC()<<endl;
                output<<"Concatenation Indicator :"<<packet_analyzer.getConcatenationIndicator()<<endl;
                output<<"Destination Address: "<<packet_analyzer.getDestinationAddress()<<endl;
                output<<"Message Type: "<<packet_analyzer.getMessageType()<<endl;
                output<<"Payload Size: "<<packet_analyzer.getPayloadSize()<<endl;
                output<<"Protocol Version: "<<packet_analyzer.getProtocolVersion()<<endl;
                output<<"RTC ID: "<<packet_analyzer.getRTCID()<<endl;
                output<<"Sequence ID: "<<packet_analyzer.getSequenceID()<<endl;
                output<<"Source Address: "<<packet_analyzer.getSourceAddress()<<endl;
                output<<"Type: "<<packet_analyzer.getType()<<endl;
            }
            else{
                output<<"Packet # "<<packet_analyzer.getpacketID()<<":"<<endl;
                output<<packet_analyzer.getInputData()<<endl;
                output<<"CRC: "<<packet_analyzer.getCRC()<<endl;
                output<<"Destination Address: "<<packet_analyzer.getDestinationAddress()<<endl;
                output<<"Source Address: "<<packet_analyzer.getSourceAddress()<<endl;
                output<<"Type: "<<packet_analyzer.getType()<<endl;
            }
            output<<endl;
           output<<"**************************************************************************************************************************************************************************************************************************************"<<endl;
           output<<endl;

            return output;

    }

