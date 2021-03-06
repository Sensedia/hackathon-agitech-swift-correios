//
// ObjetoPostalAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class ObjetoPostalAPI: APIBase {
    /**

     - parameter tipoEvento: (path) Tipo de evento a ser pesquisado. 
     - parameter statusEvento: (query) Status a ser filtrado. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func eventosTipoEventoGet(tipoEvento: String, statusEvento: String? = nil, completion: @escaping ((_ data: [DetalhesEventos]?,_ error: Error?) -> Void)) {
        eventosTipoEventoGetWithRequestBuilder(tipoEvento: tipoEvento, statusEvento: statusEvento).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     - GET /eventos/{tipoEvento}
     - Retorna uma lista de possiveis status para um determinado evento.
     - examples: [{contentType=application/json, example=[ {
  "statusEvento" : 1,
  "tipoEvento" : "BDE",
  "descricaoEvento" : "Entregue"
} ]}]
     
     - parameter tipoEvento: (path) Tipo de evento a ser pesquisado. 
     - parameter statusEvento: (query) Status a ser filtrado. (optional)

     - returns: RequestBuilder<[DetalhesEventos]> 
     */
    open class func eventosTipoEventoGetWithRequestBuilder(tipoEvento: String, statusEvento: String? = nil) -> RequestBuilder<[DetalhesEventos]> {
        var path = "/eventos/{tipoEvento}"
        path = path.replacingOccurrences(of: "{tipoEvento}", with: "\(tipoEvento)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "statusEvento": statusEvento
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[DetalhesEventos]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**

     - parameter codigoObjeto: (path) Codigo do objeto a ser pesquisado. 
     - parameter tipoEvento: (query) Tipo de evento a ser filtrado. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func objetosCodigoObjetoGet(codigoObjeto: String, tipoEvento: String? = nil, completion: @escaping ((_ data: [Eventos]?,_ error: Error?) -> Void)) {
        objetosCodigoObjetoGetWithRequestBuilder(codigoObjeto: codigoObjeto, tipoEvento: tipoEvento).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     - GET /objetos/{codigoObjeto}
     - Pesquisa por informações relacionadas a um objeto postal especifico.
     - examples: [{contentType=application/json, example=[ {
  "statusEvento" : 1,
  "nomeUnidade" : "CEE PAMPULHA",
  "codigoSRO" : "31277971",
  "codigoDR" : "",
  "siglaDR" : "",
  "municipio" : "BELO HORIZONTE",
  "numeroLista" : "",
  "entregador" : "",
  "uf" : "MG",
  "codigoObjeto" : "PL177497655BR",
  "codigoMCU" : "",
  "estacao" : "",
  "tipoEvento" : "OEC",
  "dataGravacao" : "",
  "usuario" : "",
  "acaoBloqueio" : "",
  "descricaoEvento" : "Saiu para entrega ao destinatário",
  "dataCriacao" : "11/05/2017 12:16:54"
} ]}]
     
     - parameter codigoObjeto: (path) Codigo do objeto a ser pesquisado. 
     - parameter tipoEvento: (query) Tipo de evento a ser filtrado. (optional)

     - returns: RequestBuilder<[Eventos]> 
     */
    open class func objetosCodigoObjetoGetWithRequestBuilder(codigoObjeto: String, tipoEvento: String? = nil) -> RequestBuilder<[Eventos]> {
        var path = "/objetos/{codigoObjeto}"
        path = path.replacingOccurrences(of: "{codigoObjeto}", with: "\(codigoObjeto)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "tipoEvento": tipoEvento
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Eventos]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**

     - parameter codigoObjeto: (query) Lista, separada por virgula, com codigos de objetos postais. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func objetosGet(codigoObjeto: String, completion: @escaping ((_ data: [ObjetoPostal]?,_ error: Error?) -> Void)) {
        objetosGetWithRequestBuilder(codigoObjeto: codigoObjeto).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     - GET /objetos
     - Pesquisa por informações relacionados a uma lista de objetos postais.
     - examples: [{contentType=application/json, example=[ {
  "numero" : "PL177497655BR",
  "eventos" : [ {
    "statusEvento" : 1,
    "nomeUnidade" : "CEE PAMPULHA",
    "codigoSRO" : "31277971",
    "codigoDR" : "",
    "siglaDR" : "",
    "municipio" : "BELO HORIZONTE",
    "numeroLista" : "",
    "entregador" : "",
    "uf" : "MG",
    "codigoObjeto" : "PL177497655BR",
    "codigoMCU" : "",
    "estacao" : "",
    "tipoEvento" : "OEC",
    "dataGravacao" : "",
    "usuario" : "",
    "acaoBloqueio" : "",
    "descricaoEvento" : "Saiu para entrega ao destinatário",
    "dataCriacao" : "11/05/2017 12:16:54"
  } ]
} ]}]
     
     - parameter codigoObjeto: (query) Lista, separada por virgula, com codigos de objetos postais. 

     - returns: RequestBuilder<[ObjetoPostal]> 
     */
    open class func objetosGetWithRequestBuilder(codigoObjeto: String) -> RequestBuilder<[ObjetoPostal]> {
        let path = "/objetos"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "codigoObjeto": codigoObjeto
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ObjetoPostal]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
