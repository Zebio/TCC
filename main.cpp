#include <iostream>
#include <fstream> //manipulacao de arquivos
#include <vector>
#include<math.h> //pow
#include<direct.h>

using namespace std;




int main()
{
    string nome_do_modulo;
    int numero_de_entradas=0;
    int numero_de_saidas  =0;


    ifstream arquivo_da_tabela;
    arquivo_da_tabela.open("tabela_verdade.txt");
    string buffer;
    if (arquivo_da_tabela.is_open())
    {
        arquivo_da_tabela>>nome_do_modulo;
        arquivo_da_tabela>>buffer;
        numero_de_entradas = stoi(buffer);
        arquivo_da_tabela>>buffer;
        numero_de_saidas = stoi(buffer);
    }

    cout<<"Nome: "<<nome_do_modulo<<" entradas: "<<numero_de_entradas<<" saidas: "<<numero_de_saidas<<endl;


    vector<string> entradas;
    for(int i=0; i<numero_de_entradas;i++)
    {
        arquivo_da_tabela>>buffer;
        entradas.push_back(buffer);
    }

     vector<string> saidas;
    for(int i=0; i<numero_de_saidas;i++)
    {
        arquivo_da_tabela>>buffer;
        saidas.push_back(buffer);
    }

    cout<<"\nEntradas: ";
    for(int i=0; i<numero_de_entradas;i++)
    {
        cout<<entradas[i]<<" ";
    }

    cout<<"\nSaidas: ";
    for(int i=0; i<numero_de_saidas;i++)
    {
        cout<<saidas[i]<<" ";
    }

    int linhas = pow(2,numero_de_entradas);
    int colunas = numero_de_entradas+numero_de_saidas;

    cout<<"\nLinhas da Matriz: "<<linhas<<" Colunas da matriz: "<<colunas;

    //alocação da matriz
    bool** matriz = new bool*[linhas];
    for (int i = 0; i < linhas; ++i)
        matriz[i] = new bool[colunas];

    //preenchimento da matriz
    for(int i=0; i<linhas; i++)
    {
        for (int j=0; j<colunas; j++)
        {
            arquivo_da_tabela>>buffer;
            matriz[i][j]=stoi(buffer);
        }
    }

    //imprimir a matriz
    cout<<"\nMatriz alocada: \n";
    for(int i=0; i<linhas; i++)
    {
        for (int j=0; j<colunas; j++)
        {
            cout<<matriz[i][j]<<" ";
        }
        cout<<endl;
    }

    string all_outputs_expression;
    string output_true_expression;
    string output_false_expression;

    for(int s=0; s<numero_de_saidas;s++)
    {
        output_false_expression=saidas[s];
        output_false_expression.append("_f=");

        output_true_expression=saidas[s];
        output_true_expression.append("_t=");
        bool primeiro_false=1;
        bool primeiro_true=1;
        for(int i=0;i<linhas;i++)
        {   

            if(matriz[i][numero_de_entradas+s]==false)
            {
                if(!primeiro_false)
                {
                    output_false_expression.append(" | ");
                }
                primeiro_false=0;

                for(int j=0; j<numero_de_entradas;j++)
                {
                    output_false_expression.append(entradas[j]);
                    if(matriz[i][j]==false){
                        output_false_expression.append("_f");
                    }    
                    else
                        output_false_expression.append("_t");
                    if (j+1<numero_de_entradas)
                        output_false_expression.append(" & ");
                }
                
                
            }

            if(matriz[i][numero_de_entradas+s]==true)
            {
                if(!primeiro_true)
                {
                    output_true_expression.append(" | ");
                }
                primeiro_true=0;


                for(int j=0; j<numero_de_entradas;j++)
                {
                    output_true_expression.append(entradas[j]);
                    if(matriz[i][j]==false){
                        output_true_expression.append("_f");
                    }    
                    else
                        output_true_expression.append("_t");
                    if (j+1<numero_de_entradas)
                        output_true_expression.append(" & ");
                }
            }
        }
    }
    cout<<"\ntrue exp: "<<output_true_expression<<endl;
    cout<<"\nfalse exp: "<<output_false_expression<<endl;

    string entradas_dual_rail;
    string histerese;
    for (int i=0; i<numero_de_entradas;i++)
    {
        entradas_dual_rail.append(entradas[i]);
        entradas_dual_rail.append("_t, ");
        entradas_dual_rail.append(entradas[i]);
        entradas_dual_rail.append("_f, ");

        histerese.append(entradas[i]);
        histerese.append("_t | ");

        histerese.append(entradas[i]);
        histerese.append("_f");

        if(i+1<numero_de_entradas)
        histerese.append(" | ");
    }

    cout<<"\n histerese: "<<histerese;

    string saidas_dual_rail;
        saidas_dual_rail.append(saidas[0]);
        saidas_dual_rail.append("_t, ");
        saidas_dual_rail.append(saidas[0]);
        saidas_dual_rail.append("_f ");


    mkdir("Verilog_Files");
    string filePath="Verilog_Files\\";
    filePath.append(nome_do_modulo);
    filePath.append(".v");
    ofstream verilog_module;
    cout<<filePath;

    verilog_module.open(filePath);

    verilog_module << "module "<<nome_do_modulo<< "(input " <<entradas_dual_rail<<endl;
    verilog_module << "output "<<saidas_dual_rail<<");"<<endl;

    verilog_module <<" \n\nassign "<<output_true_expression<<" | (("<<histerese<<") & S_t)"  <<";\n";
    verilog_module <<" \n\nassign "<<output_false_expression<<" | (("<<histerese<<") & S_f)"  <<";\n";

    verilog_module <<" \nendmodule "<<endl;
    verilog_module.close();
        
                
    return 0;
}