//
//  AutoregistrationSpec.swift
//  Swinject
//
//  Created by Tomas Kohout on 20/8/15.
//  Copyright © 2015 Swinject Contributors. All rights reserved.
//

import Quick
import Nimble
@testable import Swinject

class AutoRegistrationSpec: QuickSpec {
    override func spec() {
        var container: Container!
        beforeEach {
            container = Container()
        }
        
        it("auto registers service without argument") {
            container.register(UIColor.self){ _ in UIColor.redColor() }
            container.register(initializer: PetOwner.init as () -> PetOwner, service: PersonType.self)
            container.register(initializer: Bicycle.init, service: BicycleType.self)
            
            let bicycle: BicycleType? = container.resolve(BicycleType.self)
            expect(bicycle).toNot(beNil())
        }
        
        it("auto registers service with 1 argument") {
            container.register(initializer: PetOwner.init as () -> PetOwner, service: PersonType.self)
            container.register(initializer: Bicycle.init, service: BicycleType.self, argument: UIColor.self)
            
            let color = UIColor.blueColor()
            let bicycle: BicycleType? = container.resolve(BicycleType.self, argument: color)
            expect(bicycle).toNot(beNil())
            expect(bicycle?.color) == color
        }
        
        it("auto registers service with 2 arguments") {
            container.register(initializer: Bicycle.init, service: BicycleType.self, arguments: UIColor.self, PersonType.self)
            
            let color = UIColor.blueColor()
            let owner:PersonType = PetOwner()
            
            let bicycle: BicycleType? = container.resolve(BicycleType.self, arguments: color, owner)
            expect(bicycle).toNot(beNil())
            expect(bicycle?.color) == color
        }
        
    }
}
