//
//  Parser.swift
//  CommandLineSample
//
//  Created by Renato Matos on 02/06/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

import Foundation

class Parser {
    
    func parsePath(imput:String) -> [Path] {
        var array = [Path]()
        
        let data = imput.componentsSeparatedByString(",")
        
        for it in data {
            let path:Path = Path()
            path.filePath = it
            array.append(path)
        }
        
        return array
    }
    
    func parseConta(file:String) -> [Conta] {
        
        var array = [Conta]()
        
        let data = file.componentsSeparatedByString(",")
        
        var contas:[Int] = [Int]()
        var total:[Int] = [Int]()
        
        var count = 0
        for it in data {
            
            if let object = Int(it) {
                
                let control = count%2
                
                switch control {
                case 0:
                    contas.append(object)
                default:
                    total.append(object)
                }
                count = count+1
            }
            
        }
        
        count = 0
        for acc in contas {
            let contaObject = Conta()
            contaObject.conta = acc
            contaObject.total = total[count]
            count = count+1
            array.append(contaObject)
        }
        
        return array
    }
    
    func parseTransacao(file:String) -> [Transacao] {
        
        var array = [Transacao]()
        
        let data = file.componentsSeparatedByString(",")
        
        var contas:[Int] = [Int]()
        var transacaos:[Int] = [Int]()
        
        var count = 0
        for it in data {
            
            if let object = Int(it) {
                
                let control = count%2
                
                switch control {
                case 0:
                    contas.append(object)
                default:
                    transacaos.append(object)
                }
                count = count+1
            }
            
        }
        
        count = 0
        for acc in contas {
            let contaObject = Transacao()
            contaObject.conta = acc
            contaObject.transacao = transacaos[count]
            count = count+1
            array.append(contaObject)
        }
        
        return array
    }
    
    
}

