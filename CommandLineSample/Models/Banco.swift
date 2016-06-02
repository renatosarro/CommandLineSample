//
//  Banco.swift
//  CommandLineSample
//
//  Created by Renato Matos on 30/05/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

import Foundation

class Banco {
    func listarContas(contas:[Conta], transacoes:[Transacao]) -> [Conta] {
        
        for conta in contas {
            for transacao in transacoes {
                if conta.conta == transacao.conta {
                    conta.total = conta.total!+transacao.transacao!
                }
            }
        }
        
        return contas
    }
}