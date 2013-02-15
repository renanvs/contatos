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

-(void)pegaDadosDoFormulario:(id)sender{
//    NSMutableDictionary * dadosDoContato = [[NSMutableDictionary alloc] init];
//    [dadosDoContato setObject:[_nome text] forKey:@"nome"];
//    [dadosDoContato setObject:[_telefone text] forKey:@"telefone"];
//    [dadosDoContato setObject:[_endereco text] forKey:@"endereco"];
//    [dadosDoContato setObject:[_email text] forKey:@"email"];
//    [dadosDoContato setObject:[_site text] forKey:@"site"];
//    NSLog(@"dados? %@", dadosDoContato);
    CONContato * contato = [[CONContato alloc]init];
    contato.nome = self.nome.text;
    contato.telefone = self.telefone.text;
    contato.endereco = self.endereco.text;
    contato.email = self.email.text;
    contato.site = self.site.text;
    
    NSLog(@"%@",contato);
}
@end
