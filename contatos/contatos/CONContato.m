//
//  CONContato.m
//  contatos
//
//  Created by renan veloso silva on 14/02/13.
//  Copyright (c) 2013 renan veloso silva. All rights reserved.
//

#import "CONContato.h"

@implementation CONContato

-(NSString *)description{
    NSString * descricao = [[NSString alloc]initWithFormat:@"\nCONTATO\n nome: %@\n telefone: %@\n email: %@\n email: %@\n site: %@\n",_nome, _telefone, _endereco, _email, _site];
    return descricao;
}

@end
