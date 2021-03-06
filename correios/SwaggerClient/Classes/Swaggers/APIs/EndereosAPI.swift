//
// EndereosAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class EndereosAPI: APIBase {
    /**

     - parameter cep: (path) CEP a ser pesquisado. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func enderecosCepGet(cep: String, completion: @escaping ((_ data: [Endereco]?,_ error: Error?) -> Void)) {
        enderecosCepGetWithRequestBuilder(cep: cep).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     - GET /enderecos/{cep}
     - Pesquisa pelo endereço de um dado CEP.
     - examples: [{contentType=application/json, example=[ {
  "uf" : "SP",
  "logradouro" : "Rua Doutor Ricardo Benetton Martins, s/n",
  "bairro" : "Polo II de Alta Tecnologia (Campinas)",
  "municipio" : "Campinas"
} ]}]
     
     - parameter cep: (path) CEP a ser pesquisado. 

     - returns: RequestBuilder<[Endereco]> 
     */
    open class func enderecosCepGetWithRequestBuilder(cep: String) -> RequestBuilder<[Endereco]> {
        var path = "/enderecos/{cep}"
        path = path.replacingOccurrences(of: "{cep}", with: "\(cep)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Endereco]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
