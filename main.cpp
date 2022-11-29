#include <iostream>
#include <fstream> //manipulacao de arquivos
#include <vector>
#include <math.h> //pow
#include <direct.h>
#include <cstring>
#include <sstream> //stringstream
#include <algorithm> //find
#include <list>
#include <string>
#include <regex>

#ifdef WINDOWS
#include <direct.h>
#define GetCurrentDir _getcwd
#else
#include <unistd.h>
#define GetCurrentDir getcwd
#endif

using namespace std;

string
removeSpaces(const string& str)
{
    string s(str);
    int j = 0;
    int N = s.size();
    for (int i = 0; i < N; ++i) {
        if (s[i] != ' ') {
            s[j] = s[i];
            j++;
        }
    }
    s.resize(j);
    return s;
}

// output is a list of strings which map to tokens
void tokenize(  const string& str, 
                list<string>& tokens) {
    string num;
    int N = str.size();
    for (int i = 0; i < N; ++i) {
        char c = str[i];
        if (isdigit(c)) {
            num += c;
        } else {
            if (!num.empty()) {
                tokens.push_back(num);
                num.clear();
            }
            string token;
            token += c;
            tokens.push_back(token);
        }
    }
    if (!num.empty()) {
        tokens.push_back(num);
        num.clear();
    }
}

class Calculator {
public:
    Calculator(const string& expression);

    void next();
    bool exp();
    bool term();
    bool factor();
    bool toBool(const string& s);

private:
    list<string> mTokens;
    string mCurrent;
};

Calculator::Calculator(const string& expression) {
    string s = removeSpaces(expression); 
    tokenize(s, mTokens);
    mCurrent = mTokens.front();
}

void Calculator::next() {
    mTokens.pop_front();
    if (!mTokens.empty()) {
        mCurrent = mTokens.front();
    } else {
        mCurrent = string();
    }
}

bool Calculator::exp() {
    vector<string> list {"&", ".", "|", "+", "^"};
    bool result = term();
    while (find(begin(list), end(list), mCurrent) != end(list)) {
        if (mCurrent == "&" || mCurrent ==".") {
            next();
            result = result && term();
        }
        else if (mCurrent == "|" || mCurrent =="+") {
            next();
            result =result || term();
        }
        else if (mCurrent == "^") {
            next();
            result =result ^ term();
        }
    }
    return result;
}

bool Calculator::term() {
    bool result;
    string sub_expression;
    if (mCurrent == "(") {
        next();
        int parenthesis =1;
        while (parenthesis!=0) {
            if(mCurrent=="(") {
                parenthesis ++;
                sub_expression+=mCurrent;
                next();
            }
            if(mCurrent==")") {
                parenthesis --;
                if (parenthesis!=0) {
                    sub_expression+=mCurrent;
                } 
                next();
            }
            else {
                sub_expression+=mCurrent;
                next(); 
            }
        }
        Calculator calculator(sub_expression);
        result = calculator.exp();
    } 
    else if (mCurrent =="~" || mCurrent == "!"){
        next();
        result = !term();
    }
    else {
        result = toBool(mCurrent);
        next();
    }
    return result;
}

bool Calculator::factor() {
    bool result;
    return result;
}

bool Calculator::toBool(const string& s) {
    stringstream ss;
    ss << s;
    bool x;
    ss >> x;
    return x;
}

bool calculate(string s) {
    Calculator calculator(s);
    return calculator.exp();
}

string get_current_dir() {
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

string removespace(string s)
{
    //traversing the string
    for (int i = 0; i < s.length(); i++)
    {
        if (s[i] == ' ')
        {
            //using in-built function to erase element
            s.erase(s.begin() + i);
            i--;
        }
    }
    return s;
}

// define reverse() function to reverse the array elements  
void reverse(int array[], int size) {
    int temp;
    for(int i=0, j=size-1;i<size/2;i++,j--) {
    temp = array[i]; 
    array[i] = array[j];
    array[j] = temp;
    }
}

class NCL_circuit {
private:
    string name;
    vector<string> inputs;
    vector<string> outputs;
    char ** truthTable;
    string hysteresys;
    vector<SignalExpression> outputExpressions;
    void allocateTruthTable();
    void constructTruthTableInputs();
    void constructTruthTableOutputs(char* logicExpression,int output_Index);
    void importTruthTable(string inputFileName);
    void newLogicEquation(string logicEquation);

public:
    NCL_circuit(char *isTruthTable, string inputString)
    {
        if (*isTruthTable =='T') {//import TT and Initialize name
            try {
            importTruthTable(inputString);
            }
             catch (const char * txtError){
                cout<<"ERROR: "<<txtError<<endl;
                throw "Failed to Import truth table";
            }
            
        }
        else if(*isTruthTable =='L') //or logic equation and Initialize name
            try {
                newLogicEquation(inputString);
            }
             catch (const char * txtError){
                cout<<"ERROR: "<<txtError<<endl;
                throw "Failed to construct new logic equation";
            }
            
    }

    void setName(string _name) {
        name = _name;
    }

    void print_attributes()
    {

        cout<<"LOG: Detected Inputs: ";
        for(int i=0; i<inputs.size();i++){
            cout<<inputs[i]<<"  ";
        }
        cout<<"\n     Detected Outputs: ";
        for(int i=0; i<outputs.size();i++){
            cout<<outputs[i]<<"  ";
        }
        cout<<endl;
    }

    void print_truthTable()
    {
        cout<<"LOG: Printing Truth Table"<<endl;
        int NumberOfRows = pow(2,inputs.size());
        int numberOfColums = inputs.size()+outputs.size();
        for(int i=0; i<inputs.size();i++){
            cout<<inputs[i]<<"\t";
        }
        for(int i=0; i<outputs.size();i++){
            cout<<outputs[i]<<"\t";
        }
        cout<<endl;
        for(int i=0; i<NumberOfRows; i++){
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
        cout<<"LOG: Constructing output expressions"<<endl;
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
        print_output_expressions();
    }

    void print_output_expressions()
    {
        cout<<"LOG: Printing Output Expressions"<<endl;
        for(int output=0; output<outputExpressions.size();output++){
            cout<<"\tOuput Name: "<<outputExpressions[output].signalName<<endl;
            cout<<"\tFalse Expression: "<<outputExpressions[output].falseExpression<<endl;
            cout<<"\tTrue  Expression: "<<outputExpressions[output].trueExpression<<endl<<endl;
        }
    }

    void simplify_expressions()
    {
        cout<<"LOG: Simplifying Output Expressions"<<endl;
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
    print_output_expressions();
    }


    void convert_to_named(){
        cout<<"LOG: Converting Output Expressions into Verilog Format"<<endl;
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
    print_output_expressions();
    }
    void construct_hysteresis()
    {
        cout<<"LOG: Constructing Hysteresis Signal"<<endl;
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
        cout<<"LOG: Printing Histeresys Signal"<<endl;
        cout<<"\tHisteresys: "<<hysteresys<<endl;
    }

    void print_module_file()
    {
        cout<<"LOG: Printing Verilog Module File"<<endl;
        mkdir("Output_Files");
        string filePath="Output_Files\\";
        filePath.append(name);
        filePath.append(".v");
        ofstream verilog_module;
        cout<<"\tVerilog Module File Path: "<<filePath<<endl;
        verilog_module.open(filePath);
        verilog_module << "module "<<name<< "(\n\tinput ";
        for(int i=0;i<inputs.size();i++) {
            verilog_module<<inputs[i]<<"_t, "<<inputs[i]<<"_f, ";
        }
        verilog_module << "\n\toutput ";
        for(int i=0;i<outputs.size();i++) {
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
        cout<<"LOG: Printing Verilog Test File"<<endl;
        string filePath="Output_Files\\";
        filePath.append(name);
        filePath.append("_tb.v");
        ofstream verilog_module;
        cout<<"\tVerilog Module Test File Path: "<<filePath<<endl;

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

void NCL_circuit::allocateTruthTable() {   
    cout<<"LOG: Allocating Truth Table\n";
    if (inputs.size()==0)
        throw "No inputs";
    if (outputs.size()==0)
        throw "No outputs";
    //the number of the numberOfRows of the truth table = n_inputs^2
    int numberOfRows  = pow(2,inputs.size()); 
    //the number of collums of the truth table
    int numberOfColums = inputs.size() + outputs.size(); 
    cout<<"LOG: Truth Table dimensions: Rows: "<<numberOfRows<<" Collums: "<<numberOfColums<<endl;
    truthTable = new char*[numberOfRows]; //allocate the truth table (numberOfRows)
    for (int i = 0; i < numberOfRows; i++)
    {
        truthTable[i] = new char[numberOfColums]; //allocathe the truth table(numberOfColums)
    }
    for(int i=0; i<numberOfRows; i++){
        for (int j=0; j<numberOfColums; j++){
            truthTable[i][j]='-';
        }
    }
    print_truthTable();
    }

void NCL_circuit::constructTruthTableInputs() {
    cout<<"LOG: Initializing Truth Table Input Stimulus "<<endl;
    int numberOfRows  = pow(2,inputs.size()); //the number of the numberOfRows of the truth table = n_inputs^2
    int * binaryNumber;
    binaryNumber = new int [inputs.size()];
    for(int line=0; line<numberOfRows;line++) {
        int num=line;
        for(int i=0;i<inputs.size();i++) {
            binaryNumber[i] = num%2;
            num = num/2;
        }
        reverse(binaryNumber, inputs.size());

        cout<<"\tStimulus "<<line<<" is: ";
        for(int j=0;j<inputs.size();j++) {
            cout<<binaryNumber[j];
            truthTable[line][j]=binaryNumber[j]==0? '0' : '1';
        }
        cout<<endl;
    }
    delete binaryNumber;
    print_truthTable();

}

void NCL_circuit::constructTruthTableOutputs(char* logicExpression,int output_Index)
{
    cout<<"LOG: Logic Expression: "<<logicExpression<<endl;
    char* token;
    string stimulus,temp,outputName;
    bool result;
    token = strtok (logicExpression,"="); //get the output (the string before '=')
    temp=token;
    token = strtok (NULL,";"); //get the output (the string before ';')
    int numberOfRows  = pow(2,inputs.size()); //the number of the numberOfRows of the truth table = n_inputs^2
    for(int line=0;line<numberOfRows;line++) {
        stimulus=token;
        stimulus=removeSpaces(stimulus);
        cout<<"\tEvaluating:\t";
        for(int input=0;input<inputs.size();input++) {
            cout<<inputs[input]<<"="<<truthTable[line][input]<<"\t";
            temp = truthTable[line][input];
            stimulus = regex_replace(stimulus, regex(inputs[input]), temp);
        }
        result=calculate(stimulus);
        cout<<outputs[output_Index]<<" = "<<stimulus<<" = "<< result<<endl; //outputs[]
        truthTable[line][inputs.size()+output_Index]= result==1? '1': '0';
    }
    print_truthTable();

}

void NCL_circuit::importTruthTable(string inputFileName)
{
    const char CSV_DELIMITER = ';';
    ifstream fileToRead; //the input file
    string lineBuffer;   //string buffer to read each file line
    cout<<"Openng File: \""<<inputFileName<<"\""<<endl;
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

        
        try {
        allocateTruthTable();
        }
        catch (const char * txtError){
            cout<<"ERROR: "<<txtError<<endl;
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
    }
    else
    {
        throw "Failed to Open File";
    }
}


void NCL_circuit::newLogicEquation(string logicEquation)
{
    cout<<"Please set the Module Name:";
    cin>>name;
    vector<string> Equation;
    string temp="";
    int logicEquationNumber =0;
    for(int i=0;i<logicEquation.size();i++) {
        if(logicEquation[i]!=' ') {
            temp+=logicEquation[i];
        }
        if (logicEquation[i]==';') {
            logicEquationNumber++;
            Equation.push_back(temp);
            temp="";
        }
    }

    cout<<"Logic Equations Detected:"<<endl;

    for(int i=0; i<Equation.size();i++) {
        cout<<"\t"<<Equation[i]<<endl;

    }
    for(int i=0; i<Equation.size();i++) {
        cout<<"LOG: Reading Logic Equation: "<<Equation[i]<<endl;
        char c[Equation[i].size() + 1];
        strcpy(c, Equation[i].c_str());
        char* token;
        token = strtok (c,"= "); //get the output (the string before '=')
        outputs.push_back(token); //push back in the vector output
        while (token != NULL) {
            token = strtok (NULL, " =|&~;+()^!.");
            //find if the input already exists in a vector
            if (token !=NULL && (find(inputs.begin(), inputs.end(), token) == inputs.end())){
                inputs.push_back(token); //if not, it is a new input
            }
        }
    }


    print_attributes();

    try {
        allocateTruthTable();
        }
        catch (const char * txtError){
            cout<<"ERROR: "<<txtError<<endl;
        }

    try {
        constructTruthTableInputs();
        }
        catch (const char * txtError){
            cout<<"ERROR: "<<txtError<<endl;
        }

    for(int i=0; i<Equation.size();i++) {
    char c[Equation[i].size() + 1];
    strcpy(c, Equation[i].c_str());
    try {
        constructTruthTableOutputs(c,i);
        }
        catch (const char * txtError){
            cout<<"ERROR: "<<txtError<<endl;
        }
    }
}




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
    if (argc <=1) {
        cout<<"Usage: ./main L <\"logic_expressions>\""<<endl;
        cout<<"       ./main T <\"truth_table.csv>\"";
    }
    else {
        NCL_circuit ncl_circuit(argv[1],convertToString(argv[2],strlen(argv[2])));
        ncl_circuit.construct_output_expressions();
        ncl_circuit.simplify_expressions();
        ncl_circuit.convert_to_named();
        ncl_circuit.construct_hysteresis();
        ncl_circuit.print_hysteresis();
        ncl_circuit.print_module_file();
        ncl_circuit.print_test_file();
    }
    return 0;
}