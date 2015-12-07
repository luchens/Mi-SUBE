//
//  MarketFactory.swift
//  Mi SUBE
//
//  Created by Hernan Matias Coppola on 6/12/15.
//  Copyright © 2015 Hernan Matias Coppola. All rights reserved.
//

import Foundation
import MapKit

class MarkerFactory{


    private func makeMarkerOpen()->CustomPointAnnotation
    {
        
        let point = CustomPointAnnotation()
        point.imageName = "mk"
        return point
        
    }
    
    private func makeMarkerClose()->CustomPointAnnotation
    {
        
        let point = CustomPointAnnotation()
        point.imageName = "mk_close"
        return point
        
    }
    
    
    func makeCustomMarker(miPunto: PuntoCarga)->CustomPointAnnotation
    {
        var puntoRetorno: CustomPointAnnotation
        
        if miPunto.estaAbierto()
        {
            puntoRetorno =  makeMarkerOpen()
        }else
        {
            puntoRetorno =  makeMarkerClose()
        }
        puntoRetorno.title = miPunto.address
        puntoRetorno.subtitle = miPunto.detalleParaMapa()
        //point.index = miPunto.idPunto
        puntoRetorno.imageSelected = "mk_selected"
        puntoRetorno.coordinate = CLLocationCoordinate2D(latitude: miPunto.latitude, longitude: miPunto.longitude)
        puntoRetorno.datos = miPunto
        
        return puntoRetorno
    }



}