//
//  CONFormularioContatoViewController.m
//  contatos
//
//  Created by renan veloso silva on 14/02/13.
//  Copyright (c) 2013 renan veloso silva. All rights reserved.
//

#import "CONFormularioContatoViewController.h"

@interface CONFormularioContatoViewController ()

@end

@implementation CONFormularioContatoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//start

-(void)pegaDadosDoFormulario:(id)sender{
    CONContato * contato = [[CONContato alloc]init];
    contato.nome = self.nome.text;
    contato.telefone = self.telefone.text;
    contato.endereco = self.endereco.text;
    contato.email = self.email.text;
    contato.site = self.site.text;
    
    [self.contatos addObject:contato];
    
    //NSLog(@"%@",contato);
    //[self.site resignFirstResponder];
    [self.view endEditing:YES];
    NSLog(@"%@",self.contatos);
}

-(void)proximoElemento:(UITextField *)textField{
    if(textField == self.nome){
        [self.telefone becomeFirstResponder];
    }else if(textField == self.telefone){
        [self.email becomeFirstResponder];
    }else if(textField == self.email){
        [self.endereco becomeFirstResponder];
    }else if(textField == self.endereco){
        [self.telefone becomeFirstResponder];
    }else if(textField == self.endereco){
        [self.site becomeFirstResponder];
    }else if(textField == self.site){
        [self.site resignFirstResponder];
    }
}

-(id)init{
    self = [super init];
    
    if(self){
        self.contatos = [[NSMutableArray alloc]init];
    }
    
    return self;
}
@end
