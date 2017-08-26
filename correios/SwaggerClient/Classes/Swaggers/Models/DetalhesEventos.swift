//
// DetalhesEventos.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Customer Model */
open class DetalhesEventos: JSONEncodable {
    /** TIpo do Evento */
    public var tipoEvento: String?
    /** Status do Evento */
    public var statusEvento: Int32?
    /** Descrição do Evento */
    public var descricaoEvento: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["tipoEvento"] = self.tipoEvento
        nillableDictionary["statusEvento"] = self.statusEvento?.encodeToJSON()
        nillableDictionary["descricaoEvento"] = self.descricaoEvento
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}