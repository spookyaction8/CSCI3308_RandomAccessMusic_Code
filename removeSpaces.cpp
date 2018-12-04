#include <iostream>
#include <fstream>
#include <string>

using namespace std;


void removeSpaces(string filename)
{
	ifstream inFile(filename);
	ofstream outFile(filename+"noDash");
	string line;
	string newLine;
	while(getline(inFile,line))
	{
		for(int i=0; i<line.length() ; i++)
		{
			if(line[i-1]==' ' && line[i]=='-' && line[i+1]==' ')
			{
				newLine = line.substr(0,i) + "," + line.substr(i+2,(line.length()-(i+1)));
			}
		}
		outFile << newLine << endl;
	}
}

int main()
{
	removeSpaces("AltRockParsed.txt");
	removeSpaces("ClassicalParsed.txt");
	removeSpaces("ClassicBlues.txt");
	removeSpaces("CountryParsed.txt");
	removeSpaces("DanceEDMParsed.txt");
	removeSpaces("DubstepParsed.txt");
	removeSpaces("GothicRockParsed.txt");
	removeSpaces("GrungeParsed.txt");
	removeSpaces("HardRockParsed.txt");
	removeSpaces("HipHopParsed.txt");
	removeSpaces("IndieRockParsed.txt");
	removeSpaces("InstrumentalBluesParsed.txt");
	removeSpaces("JazzParsed.txt");
	removeSpaces("LoFiParsed.txt");
	removeSpaces("PopParsed.txt");
	removeSpaces("ProgressiveRockParsed.txt");
	removeSpaces("PunkRockParsed.txt");
	removeSpaces("RapParsed.txt");
	removeSpaces("ReggaeParsed.txt");
	removeSpaces("TrapParsed.txt");
	return 0;
}