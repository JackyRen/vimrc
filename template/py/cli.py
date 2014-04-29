#!/usr/bin/env python2
# -*- coding: UTF-8 -*-

import argparse
def get_args():
    #    description = 'given documents, train tf-idf model. ' + \                
    #            'see help for input spec.'                                       
    #    epilog = 'each line of input file comprise of one document; ' + \        
    #        'each line is <TAB> seperated, and only a sub-interval of ' + \      
    #        'fields(columns) is considered as content of document. ' + \         
    #        "sub-interval is defined by option '-f', which accepts the " + \     
    #        'same format of argumetn as GNU cut program, which is part of ' + \  
    #        'coreutils.'                                                         

    description = ""
    epilog = ""

    parser = argparse.ArgumentParser(
            description = description , epilog = epilog )
    parser.add_argument('-i', '--input', required = True,
            help = 'input data file ')
    parser.add_argument('-o', '--output',required = True,
            help = 'output data file')
    parser.add_argument('--tuple_line',action='store_true',dest="tuple_line",
            help='enable this if every line is a tuple')


    return parser.parse_args()


def main():
    args = get_args()


if __name__ == "__main__":
    main()

