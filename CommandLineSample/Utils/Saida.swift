//
//  Saida.swift
//  CommandLineSample
//
//  Created by Renato Matos on 02/06/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

import Foundation

class Saida {
    
    func output(output:[Conta]) {
        
        var outputArray:Array<String>! = Array()
        
        for it in output {
            outputArray.append(String(it.conta))
            outputArray.append(String(it.total))
        }
        
        let transactionString = outputArray.joinWithSeparator(",")
        
        let file = "transacoes.csv"
        
        if let dir : NSString = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first {
            
            let path = dir.stringByAppendingPathComponent(file)
            
            do {
                try transactionString.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding)
                print("Arquivo salvo")
            }
            catch {
                print("Não foi possível salvar o arquivo")
            }
            
        }
        
    }
    
}