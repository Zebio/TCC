#! /usr/bin/env python3
# -*- coding: utf-8 -*-
"""
This script defines a function to simplify boolean algebra expressions,
inspired by Karnaugh Map.
"""

from utils import (
    Term,
    find_essential_prime_implicants,
    find_prime_implicants,
)


class Minterms(object):
    """ Minterms stores expressions for 1s and "don't care". """

    def __init__(
        self, minterms=None, not_cares=None,
    ):
        if minterms is None:
            minterms = []
        if not_cares is None:
            not_cares = []

        self.minterms = minterms
        self.not_cares = not_cares

    def simplify(self):
        prime_implicants = find_prime_implicants(self.minterms, self.not_cares)
        result = find_essential_prime_implicants(prime_implicants, self.minterms)
        #print(result)
        string2=""
        for i in result:
            string2=string2+str(i)+" "

        #length of the string
        l = len(string2)
        #empty string
        Final_string = ""
 
        #using loop
        #add the string character by character
        for i in range(0,l-1):
            Final_string = Final_string + string2[i]
        print('\tResult (* = Not Care): ' + Final_string +'\n')
        my_file_output = open("expression_file_output.txt", "w")
        my_file_output.write(Final_string)
        my_file_output.close()


if __name__ == "__main__":
    my_file = open("expression_file.txt", "r")
    data = my_file.read()
    str_terms = data.split(" ")
    #str_terms = ["010", "011", "101", "111"]
    print('\tKarnaugh Map Solver to Simplify Boolean Expressions')
    print('\tExpression: ' , str_terms)
    my_file.close()
    terms_not_care = []
    t_minterms = [Term(term) for term in str_terms]
    not_cares = [Term(term) for term in terms_not_care]

    minterms = Minterms(t_minterms, not_cares)
    minterms.simplify()
