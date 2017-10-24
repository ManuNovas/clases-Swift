import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

//Delegate: protocolo, componente y clase delegada
protocol Delegacion {
    func finalDelegado(clase:miClase)
}

class miClase {
    var delegate:Delegacion?
    
    func accion() {
        //Cada 5 segundos se ejecutará una función
        let _ = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(self.finAccion), userInfo: nil, repeats: false)
    }
    
    //Aquí se implementa la idea del polimorfismo
    @objc func finAccion() {
        delegate?.finalDelegado(clase: self)
    }
}

class claseQueUsaAccion: Delegacion {
    //La clase de arriba delega la función a esta clase
    func activaAccion() {
        let clase = miClase()
        clase.delegate = self
        clase.accion()
    }
    
    func finalDelegado(clase: miClase) {
        print("Se acabó la acción ejecutada")
        clase.delegate = nil
    }
}

let test = claseQueUsaAccion()
test.activaAccion()
