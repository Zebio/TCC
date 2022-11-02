#include <iostream>
#include <fstream> //manipulacao de arquivos
#include <vector>
#include <math.h> //pow
#include <direct.h>
#include <cstring>
#include <sstream> //stringstream

#ifdef WINDOWS
#include <direct.h>
#define GetCurrentDir _getcwd
#else
#include <unistd.h>
#define GetCurrentDir getcwd
#endif

using namespace std;

std::string get_current_dir() {
   char buff[FILENAME_MAX]; //create string buffer to hold path
   GetCurrentDir( buff, FILENAME_MAX );
   string current_working_dir(buff);
   return current_working_dir;
}

struct SignalExpression{
    string signalName;
    string falseExpression;
    string trueExpression;
};


class NCL_circuit
{
private:
    string name;
    vector<string> inputs;
    vector<string> outputs;
    char ** truthTable;
    string hysteresys;
    vector<SignalExpression> outputExpressions;

    bool importTruthTable(string inputFileName)
    {
        const char CSV_DELIMITER = ';';
        ifstream fileToRead; //the input file
        string lineBuffer;   //string buffer to read each file line
        fileToRead.open(inputFileName); //try to open the file
        if (fileToRead.is_open()) //if the file is oppened
        {
            getline(fileToRead,lineBuffer); //Read the first line of the file and puts in the buffer
            stringstream ss(lineBuffer); //convert the buffer to a stringstream 
            string token="a"; //initialize the token 
            while(token!="") //reads all tokens(inputs) until "" -see truth table format
            {
                getline(ss,token, CSV_DELIMITER);
                if(token !="") 
                    inputs.push_back(token); //push bach in the vector each input
            }
            while(ss.good()) //while in the line, read all outputs
            {
                getline(ss,token,CSV_DELIMITER);
                outputs.push_back(token); //push back in the vector each output
            }

            int rows  = pow(2,inputs.size()); //the number of the rows of the truth table = n_inputs^2
            int numberOfColums = inputs.size() + 1 + outputs.size(); //the number of collums of the truth table
           
            truthTable = new char*[rows]; //allocate the truth table (rows)
            for (int i = 0; i < rows; i++)
            {
                truthTable[i] = new char[numberOfColums]; //allocathe the truth table(numberOfColums)
            }

            int row=0;
            while (getline(fileToRead,lineBuffer)) //read a line in the file
            {
                stringstream ss(lineBuffer); //convert the buffer to a stringstream 
                for (int input=0;input<inputs.size();input++)
                {
                    getline(ss,token,CSV_DELIMITER);
                    truthTable[row][input]=token[0];
                }
                getline(ss,token,CSV_DELIMITER);
                for (int output=0;output<outputs.size();output++)
                {
                    getline(ss,token,CSV_DELIMITER);
                    truthTable[row][inputs.size()+output]=token[0];
                }
                row++;
            }
            return true;
        }
        else
        {
            cout<<"Failed To Open File \""<<inputFileName<<"\""<<endl;
            return false;
        }
    }

public:
    NCL_circuit(string inputFileName)
    {

        importTruthTable(inputFileName);

    }


    void print_attributes()
    {
        cout<<"Inputs: ";
        for(int i=0; i<inputs.size();i++){
            cout<<inputs[i]<<"\t";
        }
        cout<<"Outputs: ";
        for(int i=0; i<outputs.size();i++){
            cout<<outputs[i]<<"\t";
        }
        cout<<endl<<endl;
    }

    void print_truthTable()
    {
        int rows = pow(2,inputs.size());
        int numberOfColums = inputs.size()+outputs.size();
        for(int i=0; i<inputs.size();i++){
            cout<<inputs[i]<<"\t";
        }
        for(int i=0; i<outputs.size();i++){
            cout<<outputs[i]<<"\t";
        }
        cout<<endl;
        for(int i=0; i<rows; i++){
            for (int j=0; j<numberOfColums; j++){
                cout<<truthTable[i][j]<<"\t";
            }
            cout<<endl;
        }
    }

    string dont_care_inputs(int index,string minterm)
    {
        string minterm0,minterm1;
        if (minterm.length()==index)
            return minterm;
        if(minterm[index]=='X'){
            minterm0=minterm;
            minterm1=minterm;
            minterm0[index]='0';
            minterm1[index]='1';
            minterm0=dont_care_inputs(index+1,minterm0);
            minterm1=dont_care_inputs(index+1,minterm1);
            minterm = minterm0;
            minterm.append(" ");
            minterm.append(minterm1);
            return minterm;
        }

        else {
            return dont_care_inputs(index+1,minterm);
        }
    }
    void construct_output_expressions()
    {
        int numberOfInputs  = inputs.size();
        int numberOfOutputs = outputs.size();
        SignalExpression outputSignal;
        for(int output=0; output<numberOfOutputs;output++){
            bool firstFalse=true;
            bool firstTrue=true;
            outputSignal.signalName=outputs[output];
            outputSignal.falseExpression="";
            outputSignal.trueExpression ="";
            string minterm = "";

            for(int line=0; line<pow(2,numberOfInputs); line++){
                if(truthTable[line][numberOfInputs+output]=='0'){
                  //  if(!firstFalse){
                       // minterm.append(" ");
                   // }
                    firstFalse = false;
                    for(int input=0;input<numberOfInputs;input++){
                        minterm.append(truthTable[line][input]=='1'? "1": truthTable[line][input]=='0'? "0" : "X");
                    }
                    minterm=dont_care_inputs(0,minterm);
                    minterm.append(" ");
                    outputSignal.falseExpression.append(minterm);
                    minterm = "";
                }
                if(truthTable[line][numberOfInputs+output]=='1'){
                  //  if(!firstTrue){
                       // minterm.append(" ");
                  //  }
                    firstTrue = false;
                    for(int input=0;input<numberOfInputs;input++){
                        minterm.append(truthTable[line][input]=='1'? "1": truthTable[line][input]=='0'? "0" : "X");
                    }
                    minterm=dont_care_inputs(0,minterm);
                    minterm.append(" ");
                    outputSignal.trueExpression.append(minterm);
                    minterm="";
                }

            }
            if (!outputSignal.falseExpression.empty())
                outputSignal.falseExpression.pop_back();
            if (!outputSignal.trueExpression.empty())
                outputSignal.trueExpression.pop_back();

            outputExpressions.push_back(outputSignal);
        }
    }

    void print_output_expressions()
    {
        for(int output=0; output<outputExpressions.size();output++){
            cout<<"\n Ouput Name: "<<outputExpressions[output].signalName;
            cout<<"\n False Expression: "<<outputExpressions[output].falseExpression;
            cout<<"\n True  Expression: "<<outputExpressions[output].trueExpression<<endl;
        }
    }

    void simplify_expressions()
    {
        ofstream expressionFile;
        ifstream expressionFileOutput;
        string buffer;
        string script = "python3 ";
        script.append(get_current_dir());
        script.append("\\Kmap.py");
        for(int output=0; output<outputExpressions.size();output++){
            expressionFile.open("expression_file.txt");
            expressionFile<<outputExpressions[output].falseExpression;
            expressionFile.close();
            
            if (outputExpressions[output].falseExpression != "")
            {
                system(script.c_str());

                expressionFileOutput.open("expression_file_output.txt");
                getline(expressionFileOutput,buffer);
                expressionFileOutput.close();
                outputExpressions[output].falseExpression=buffer;
            }


            expressionFile.open("expression_file.txt");
            expressionFile<<outputExpressions[output].trueExpression;
            expressionFile.close();
            

            if (outputExpressions[output].trueExpression != "")
            {
                system(script.c_str());

                expressionFileOutput.open("expression_file_output.txt");
                getline(expressionFileOutput,buffer);
                expressionFileOutput.close();
                outputExpressions[output].trueExpression=buffer;
            }
        }
    }


    void convert_to_named(){
        char * char_array_buffer;
        int size;
        int counter;
        bool first;
        string buffer;
        for(int output=0; output<outputExpressions.size();output++){
            int i=0;
            while (i<2){
                first=true;
                counter=0;
                if(i==0){
                    buffer=outputExpressions[output].falseExpression;
                    size=outputExpressions[output].falseExpression.length();
                }         
                else {
                    buffer=outputExpressions[output].trueExpression;
                    size=outputExpressions[output].trueExpression.length();
                }
                char_array_buffer = new char[size];
                strcpy(char_array_buffer,buffer.c_str());
                buffer = "";
                buffer = outputExpressions[output].signalName;
                if (i==0)
                    buffer.append("_f= (");
                else
                    buffer.append("_t= (");
                for (int index=0; index<size;index++){
                    switch (char_array_buffer[index])         
                    {
                    case '0':
                        if(!first)
                            buffer.append(" & ");
                        else
                            first=false;
                        buffer.append(inputs[counter]);
                        buffer.append("_f");
                        counter++;
                        break;

                    case '1':
                        if(!first)
                            buffer.append(" & ");    
                        else
                            first = false;
                        buffer.append(inputs[counter]);
                        buffer.append("_t");
                        counter++;
                        break;

                    case ' ':
                        counter=0;
                        buffer.append(") | (");
                        first=true;
                        break;

                    default:
                        counter++;
                        break;
                    } 
                }
            buffer.append(")");
            if(i==0)
                outputExpressions[output].falseExpression=buffer;
            else
                outputExpressions[output].trueExpression=buffer;
            i++;    
            delete[] char_array_buffer;
            }
            
        }

    }
    void connstruct_hysteresis()
    {
        for(int i=0;i<inputs.size();i++)
        {
            hysteresys.append(inputs[i]);
            hysteresys.append("_t | "); 
            hysteresys.append(inputs[i]);
            hysteresys.append("_f");
            if(i+1<inputs.size())
                hysteresys.append(" | ");
        }

    }

    void print_hysteresis()
    {
        cout<<"\n Hysteresys: "<<hysteresys<<endl;
    }

    void print_module_file()
    {
        mkdir("Verilog_Files");
        string filePath="Verilog_Files\\";
        filePath.append(name);
        filePath.append(".v");
        ofstream verilog_module;
        cout<<"\nPrinting resulting module at path: "<<filePath<<endl;

        verilog_module.open(filePath);

        verilog_module << "module "<<name<< "(\n\tinput ";
        for(int i=0;i<inputs.size();i++)
        {
            verilog_module<<inputs[i]<<"_t, "<<inputs[i]<<"_f, ";
        }
        verilog_module << "\n\toutput ";
        for(int i=0;i<outputs.size();i++)
        {
            verilog_module<<outputs[i]<<"_t, "<<outputs[i]<<"_f";
            if(i+1<outputs.size())
                verilog_module<<", ";
        }
        verilog_module<<");\n";
        verilog_module<<"\n\twire hysteresis;";
        verilog_module<<"\n\tassign hysteresis = "<<hysteresys<<";\n\n";

        for(int output=0; output<outputExpressions.size();output++){
            verilog_module<<"\tassign "<<outputExpressions[output].falseExpression<<" | (hysteresis & "<<outputs[output]<<"_f);\n";
            verilog_module<<"\tassign "<<outputExpressions[output].trueExpression <<" | (hysteresis & "<<outputs[output]<<"_t);\n";
        }
        verilog_module <<"\nendmodule "<<endl;
        verilog_module.close();
    }
    void print_test_file()
    {
        string filePath="Verilog_Files\\";
        filePath.append(name);
        filePath.append("_tb.v");
        ofstream verilog_module;
        cout<<"\nPrinting module test at path: "<<filePath<<endl;

        verilog_module.open(filePath);

        verilog_module << "`timescale 1ns/1ps\n";
        verilog_module << "module "<<name<<"_tb();\n"; 
        verilog_module << "\treg ";
        for(int i=0;i<inputs.size();i++)
        {
            verilog_module<<inputs[i]<<"_t, "<<inputs[i]<<"_f";
            if(i+1<inputs.size())
                verilog_module<<", ";
        }
        verilog_module << ";\n";
        verilog_module << "\twire ";
        for(int i=0;i<outputs.size();i++)
        {
            verilog_module<<outputs[i]<<"_t, "<<outputs[i]<<"_f";
            if(i+1<outputs.size())
                verilog_module<<", ";
        }
        verilog_module << ";\n";
        verilog_module << "\n\t"<<name<<" dut(";

        for(int i=0;i<inputs.size();i++)
        {
            verilog_module<<"\n\t\t"<<inputs[i]<<"_t, "<<inputs[i]<<"_f,";
        }
        for(int i=0;i<outputs.size();i++)
        {
            verilog_module<<"\n\t\t"<<outputs[i]<<"_t, "<<outputs[i]<<"_f";
            if(i+1<outputs.size())
                verilog_module<<", ";
        }
        verilog_module << "\n\t);\n";
        verilog_module <<"\n\ttask null_state(); begin\n";
        for(int i=0;i<inputs.size();i++)
        {
            verilog_module<<"\t\t"<<inputs[i]<<"_t=0; "<<inputs[i]<<"_f=0; //"<<inputs[i]<<"==NULL\n";
        }
        verilog_module <<"\t\tend";
        verilog_module <<"\n\tendtask";
        verilog_module <<"\n\n\tinitial begin";
        for(int line=0; line<pow(2,inputs.size()); line++){
            verilog_module <<"\n\n\t\tnull_state();";
            verilog_module <<"\n\t\t#10;";
            verilog_module<<"\n\n\t\t//Testing Truth Table line "<<line;
            for(int input=0; input<inputs.size(); input++){
                if(truthTable[line][input]==1){
                    verilog_module<<"\n\t\t"<<inputs[input]<<"_t=1; ";
                    verilog_module<<inputs[input]<<"_f=0;";
                    verilog_module<<"// "<<inputs[input]<<"==1";
                } 
                else {
                    verilog_module<<"\n\t\t"<<inputs[input]<<"_t=0; ";
                    verilog_module<<inputs[input]<<"_f=1;";
                    verilog_module<<"// "<<inputs[input]<<"==0";
                }
            }
            verilog_module<<"\n\t\t#10;";
            for(int output=0; output<outputs.size();output++){
                verilog_module<<"\n\t\tif("<<outputs[output]<<"_t=="<<truthTable[line][inputs.size()+output];
                verilog_module<<" && " <<outputs[output]<<"_f=="<<!(truthTable[line][inputs.size()+output]);
                verilog_module<<")";
                verilog_module<<"\n\t\t\t$display(\"CORRECT BEHAVIOR: OUTPUT: "<<outputs[output]<<" LINE "<<line<<"\");";
                verilog_module<<"\n\t\telse";
                verilog_module<<"\n\t\t\t$error(\"INCORRECT BEHAVIOR: OUTPUT: "<<outputs[output]<<" LINE "<<line<<"\");";
            }
        }
        verilog_module<<"\n\tend";
        verilog_module<<"\nendmodule ";
    }    
};



string convertToString(char* a, int size)
{
    int i;
    string s = "";
    for (i = 0; i < size; i++) {
        s = s + a[i];
    }
    return s;
}


int main(int argc, char *argv[])
{
    NCL_circuit ncl_circuit(convertToString(argv[1],strlen(argv[1])));
    cout << get_current_dir() << endl;
    ncl_circuit.print_attributes();
    ncl_circuit.print_truthTable();
   /* ncl_circuit.construct_output_expressions();
    ncl_circuit.print_output_expressions();
    ncl_circuit.simplify_expressions();
    ncl_circuit.print_output_expressions();
    ncl_circuit.convert_to_named();
    ncl_circuit.print_output_expressions();
    ncl_circuit.connstruct_hysteresis();
    ncl_circuit.print_hysteresis();
    ncl_circuit.print_module_file();
    ncl_circuit.print_test_file();*/

    return 0;
}