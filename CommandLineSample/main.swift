//
//  main.swift
//  CommandLineSample
//
//  Created by Renato Matos on 30/05/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

import Foundation

print("Provide a full path of a file separated by ',' (comma) ex: /Users/mateuscampos/Documents/Mateus/Projetos/CommandLineTool/CommandLineToolSwift/resources/accs.csv,/Users/mateuscampos/Documents/Mateus/Projetos/CommandLineTool/CommandLineToolSwift/resources/transactions.csv")
let stdin = NSFileHandle.fileHandleWithStandardInput()
let inputString = String(data: stdin.availableData, encoding: NSUTF8StringEncoding)

let loader = Loader()
let parser = Parser()
let banco = Banco()
let output = Saida()

let pathScaned = loader.scanString(inputString!, delimiter: ",", returnWithDelimiter: true)
let paths = parser.parsePath(pathScaned)

let fileConta = loader.loadFile((paths.first?.filePath)!, returnWithDelimiter:true)
let fileTransacao = loader.loadFile((paths.last?.filePath)!, returnWithDelimiter: true)

let contas = parser.parseConta(fileConta)
let transacoes = parser.parseTransacao(fileTransacao)
let contasTransacao = banco.listarContas(contas, transacoes: transacoes)
output.output(contasTransacao)
