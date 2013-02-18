//
//  CONFormularioContatoViewController.h
//  contatos
//
//  Created by renan veloso silva on 14/02/13.
//  Copyright (c) 2013 renan veloso silva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CONContato.h"

@interface CONFormularioContatoViewController : UIViewController

@property(nonatomic, weak) IBOutlet UITextField * nome;
@property(nonatomic, weak) IBOutlet UITextField * telefone;
@property(nonatomic, weak) IBOutlet UITextField * email;
@property(nonatomic, weak) IBOutlet UITextField * endereco;
@property(nonatomic, weak) IBOutlet UITextField * site;

-(IBAction)pegaDadosDoFormulario:(id)sender;
-(IBAction)proximoElemento:(id)sender;

@property (strong) NSMutableArray * contatos;

@end
