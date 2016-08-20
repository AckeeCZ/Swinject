//
//  Sources/AutoRegistration.swift
//  Swinject
//
//  Generated using Swinject AutoRegistration generator.
//


 import Swinject 


extension ResolverType {


private func resolve<Service>() -> Service? {
   return self.resolve(Service.self)
}

private func resolve<Service, Arg1>(argument  arg1: Arg1) -> Service? {
   return (arg1 as? Service) ?? self.resolve(Service.self)
}

private func resolve<Service, Arg1, Arg2>(arguments  arg1: Arg1, _ arg2: Arg2) -> Service? {
   return (arg1 as? Service) ?? (arg2 as? Service) ?? self.resolve(Service.self)
}

private func resolve<Service, Arg1, Arg2, Arg3>(arguments  arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3) -> Service? {
   return (arg1 as? Service) ?? (arg2 as? Service) ?? (arg3 as? Service) ?? self.resolve(Service.self)
}
}


extension Container {


func register<Service>(initializer initializer: () -> Service, service: Service.Type, name: String? = nil) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r in 
       initializer()
   } as (ResolverType) -> Service)
}

func register<Service, A>(initializer initializer: (A) -> Service, service: Service.Type, name: String? = nil) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r in 
       initializer(r.resolve()!)
   } as (ResolverType) -> Service)
}

func register<Service, Arg1>(initializer initializer: (Arg1) -> Service, service: Service.Type, name: String? = nil, argument  arg1: Arg1.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1 in 
       initializer(arg1)
   } as (ResolverType, Arg1) -> Service)
}

func register<Service, A, B>(initializer initializer: (A, B) -> Service, service: Service.Type, name: String? = nil) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r in 
       initializer(r.resolve()!, r.resolve()!)
   } as (ResolverType) -> Service)
}

func register<Service, A, B, Arg1>(initializer initializer: (A, B) -> Service, service: Service.Type, name: String? = nil, argument  arg1: Arg1.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1 in 
       initializer(r.resolve(argument: arg1)!, r.resolve(argument: arg1)!)
   } as (ResolverType, Arg1) -> Service)
}

func register<Service, A, B, Arg1, Arg2>(initializer initializer: (A, B) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2 in 
       initializer(r.resolve(arguments: arg1, arg2)!, r.resolve(arguments: arg1, arg2)!)
   } as (ResolverType, Arg1, Arg2) -> Service)
}

func register<Service, A, B, C>(initializer initializer: (A, B, C) -> Service, service: Service.Type, name: String? = nil) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r in 
       initializer(r.resolve()!, r.resolve()!, r.resolve()!)
   } as (ResolverType) -> Service)
}

func register<Service, A, B, C, Arg1>(initializer initializer: (A, B, C) -> Service, service: Service.Type, name: String? = nil, argument  arg1: Arg1.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1 in 
       initializer(r.resolve(argument: arg1)!, r.resolve(argument: arg1)!, r.resolve(argument: arg1)!)
   } as (ResolverType, Arg1) -> Service)
}

func register<Service, A, B, C, Arg1, Arg2>(initializer initializer: (A, B, C) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2 in 
       initializer(r.resolve(arguments: arg1, arg2)!, r.resolve(arguments: arg1, arg2)!, r.resolve(arguments: arg1, arg2)!)
   } as (ResolverType, Arg1, Arg2) -> Service)
}

func register<Service, A, B, C, Arg1, Arg2, Arg3>(initializer initializer: (A, B, C) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type, _ arg3: Arg3.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2, arg3 in 
       let a: A? = r.resolve(arguments: arg1, arg2, arg3); let b: B? = r.resolve(arguments: arg1, arg2, arg3); let c: C? = r.resolve(arguments: arg1, arg2, arg3)
       return initializer(a!, b!, c!)
   } as (ResolverType, Arg1, Arg2, Arg3) -> Service)
}

func register<Service, A, B, C, D>(initializer initializer: (A, B, C, D) -> Service, service: Service.Type, name: String? = nil) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r in 
       initializer(r.resolve()!, r.resolve()!, r.resolve()!, r.resolve()!)
   } as (ResolverType) -> Service)
}

func register<Service, A, B, C, D, Arg1>(initializer initializer: (A, B, C, D) -> Service, service: Service.Type, name: String? = nil, argument  arg1: Arg1.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1 in 
       initializer(r.resolve(argument: arg1)!, r.resolve(argument: arg1)!, r.resolve(argument: arg1)!, r.resolve(argument: arg1)!)
   } as (ResolverType, Arg1) -> Service)
}

func register<Service, A, B, C, D, Arg1, Arg2>(initializer initializer: (A, B, C, D) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2 in 
       let a: A? = r.resolve(arguments: arg1, arg2); let b: B? = r.resolve(arguments: arg1, arg2); let c: C? = r.resolve(arguments: arg1, arg2); let d: D? = r.resolve(arguments: arg1, arg2)
       return initializer(a!, b!, c!, d!)
   } as (ResolverType, Arg1, Arg2) -> Service)
}

func register<Service, A, B, C, D, Arg1, Arg2, Arg3>(initializer initializer: (A, B, C, D) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type, _ arg3: Arg3.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2, arg3 in 
       let a: A? = r.resolve(arguments: arg1, arg2, arg3); let b: B? = r.resolve(arguments: arg1, arg2, arg3); let c: C? = r.resolve(arguments: arg1, arg2, arg3); let d: D? = r.resolve(arguments: arg1, arg2, arg3)
       return initializer(a!, b!, c!, d!)
   } as (ResolverType, Arg1, Arg2, Arg3) -> Service)
}

func register<Service, A, B, C, D, E>(initializer initializer: (A, B, C, D, E) -> Service, service: Service.Type, name: String? = nil) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r in 
       initializer(r.resolve()!, r.resolve()!, r.resolve()!, r.resolve()!, r.resolve()!)
   } as (ResolverType) -> Service)
}

func register<Service, A, B, C, D, E, Arg1>(initializer initializer: (A, B, C, D, E) -> Service, service: Service.Type, name: String? = nil, argument  arg1: Arg1.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1 in 
       let a: A? = r.resolve(argument: arg1); let b: B? = r.resolve(argument: arg1); let c: C? = r.resolve(argument: arg1); let d: D? = r.resolve(argument: arg1); let e: E? = r.resolve(argument: arg1)
       return initializer(a!, b!, c!, d!, e!)
   } as (ResolverType, Arg1) -> Service)
}

func register<Service, A, B, C, D, E, Arg1, Arg2>(initializer initializer: (A, B, C, D, E) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2 in 
       let a: A? = r.resolve(arguments: arg1, arg2); let b: B? = r.resolve(arguments: arg1, arg2); let c: C? = r.resolve(arguments: arg1, arg2); let d: D? = r.resolve(arguments: arg1, arg2); let e: E? = r.resolve(arguments: arg1, arg2)
       return initializer(a!, b!, c!, d!, e!)
   } as (ResolverType, Arg1, Arg2) -> Service)
}

func register<Service, A, B, C, D, E, Arg1, Arg2, Arg3>(initializer initializer: (A, B, C, D, E) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type, _ arg3: Arg3.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2, arg3 in 
       let a: A? = r.resolve(arguments: arg1, arg2, arg3); let b: B? = r.resolve(arguments: arg1, arg2, arg3); let c: C? = r.resolve(arguments: arg1, arg2, arg3); let d: D? = r.resolve(arguments: arg1, arg2, arg3); let e: E? = r.resolve(arguments: arg1, arg2, arg3)
       return initializer(a!, b!, c!, d!, e!)
   } as (ResolverType, Arg1, Arg2, Arg3) -> Service)
}

func register<Service, A, B, C, D, E, F>(initializer initializer: (A, B, C, D, E, F) -> Service, service: Service.Type, name: String? = nil) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r in 
       let a: A? = r.resolve(); let b: B? = r.resolve(); let c: C? = r.resolve(); let d: D? = r.resolve(); let e: E? = r.resolve(); let f: F? = r.resolve()
       return initializer(a!, b!, c!, d!, e!, f!)
   } as (ResolverType) -> Service)
}

func register<Service, A, B, C, D, E, F, Arg1>(initializer initializer: (A, B, C, D, E, F) -> Service, service: Service.Type, name: String? = nil, argument  arg1: Arg1.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1 in 
       let a: A? = r.resolve(argument: arg1); let b: B? = r.resolve(argument: arg1); let c: C? = r.resolve(argument: arg1); let d: D? = r.resolve(argument: arg1); let e: E? = r.resolve(argument: arg1); let f: F? = r.resolve(argument: arg1)
       return initializer(a!, b!, c!, d!, e!, f!)
   } as (ResolverType, Arg1) -> Service)
}

func register<Service, A, B, C, D, E, F, Arg1, Arg2>(initializer initializer: (A, B, C, D, E, F) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2 in 
       let a: A? = r.resolve(arguments: arg1, arg2); let b: B? = r.resolve(arguments: arg1, arg2); let c: C? = r.resolve(arguments: arg1, arg2); let d: D? = r.resolve(arguments: arg1, arg2); let e: E? = r.resolve(arguments: arg1, arg2); let f: F? = r.resolve(arguments: arg1, arg2)
       return initializer(a!, b!, c!, d!, e!, f!)
   } as (ResolverType, Arg1, Arg2) -> Service)
}

func register<Service, A, B, C, D, E, F, Arg1, Arg2, Arg3>(initializer initializer: (A, B, C, D, E, F) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type, _ arg3: Arg3.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2, arg3 in 
       let a: A? = r.resolve(arguments: arg1, arg2, arg3); let b: B? = r.resolve(arguments: arg1, arg2, arg3); let c: C? = r.resolve(arguments: arg1, arg2, arg3); let d: D? = r.resolve(arguments: arg1, arg2, arg3); let e: E? = r.resolve(arguments: arg1, arg2, arg3); let f: F? = r.resolve(arguments: arg1, arg2, arg3)
       return initializer(a!, b!, c!, d!, e!, f!)
   } as (ResolverType, Arg1, Arg2, Arg3) -> Service)
}

func register<Service, A, B, C, D, E, F, G>(initializer initializer: (A, B, C, D, E, F, G) -> Service, service: Service.Type, name: String? = nil) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r in 
       let a: A? = r.resolve(); let b: B? = r.resolve(); let c: C? = r.resolve(); let d: D? = r.resolve(); let e: E? = r.resolve(); let f: F? = r.resolve(); let g: G? = r.resolve()
       return initializer(a!, b!, c!, d!, e!, f!, g!)
   } as (ResolverType) -> Service)
}

func register<Service, A, B, C, D, E, F, G, Arg1>(initializer initializer: (A, B, C, D, E, F, G) -> Service, service: Service.Type, name: String? = nil, argument  arg1: Arg1.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1 in 
       let a: A? = r.resolve(argument: arg1); let b: B? = r.resolve(argument: arg1); let c: C? = r.resolve(argument: arg1); let d: D? = r.resolve(argument: arg1); let e: E? = r.resolve(argument: arg1); let f: F? = r.resolve(argument: arg1); let g: G? = r.resolve(argument: arg1)
       return initializer(a!, b!, c!, d!, e!, f!, g!)
   } as (ResolverType, Arg1) -> Service)
}

func register<Service, A, B, C, D, E, F, G, Arg1, Arg2>(initializer initializer: (A, B, C, D, E, F, G) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2 in 
       let a: A? = r.resolve(arguments: arg1, arg2); let b: B? = r.resolve(arguments: arg1, arg2); let c: C? = r.resolve(arguments: arg1, arg2); let d: D? = r.resolve(arguments: arg1, arg2); let e: E? = r.resolve(arguments: arg1, arg2); let f: F? = r.resolve(arguments: arg1, arg2); let g: G? = r.resolve(arguments: arg1, arg2)
       return initializer(a!, b!, c!, d!, e!, f!, g!)
   } as (ResolverType, Arg1, Arg2) -> Service)
}

func register<Service, A, B, C, D, E, F, G, Arg1, Arg2, Arg3>(initializer initializer: (A, B, C, D, E, F, G) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type, _ arg3: Arg3.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2, arg3 in 
       let a: A? = r.resolve(arguments: arg1, arg2, arg3); let b: B? = r.resolve(arguments: arg1, arg2, arg3); let c: C? = r.resolve(arguments: arg1, arg2, arg3); let d: D? = r.resolve(arguments: arg1, arg2, arg3); let e: E? = r.resolve(arguments: arg1, arg2, arg3); let f: F? = r.resolve(arguments: arg1, arg2, arg3); let g: G? = r.resolve(arguments: arg1, arg2, arg3)
       return initializer(a!, b!, c!, d!, e!, f!, g!)
   } as (ResolverType, Arg1, Arg2, Arg3) -> Service)
}

func register<Service, A, B, C, D, E, F, G, H>(initializer initializer: (A, B, C, D, E, F, G, H) -> Service, service: Service.Type, name: String? = nil) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r in 
       let a: A? = r.resolve(); let b: B? = r.resolve(); let c: C? = r.resolve(); let d: D? = r.resolve(); let e: E? = r.resolve(); let f: F? = r.resolve(); let g: G? = r.resolve(); let h: H? = r.resolve()
       return initializer(a!, b!, c!, d!, e!, f!, g!, h!)
   } as (ResolverType) -> Service)
}

func register<Service, A, B, C, D, E, F, G, H, Arg1>(initializer initializer: (A, B, C, D, E, F, G, H) -> Service, service: Service.Type, name: String? = nil, argument  arg1: Arg1.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1 in 
       let a: A? = r.resolve(argument: arg1); let b: B? = r.resolve(argument: arg1); let c: C? = r.resolve(argument: arg1); let d: D? = r.resolve(argument: arg1); let e: E? = r.resolve(argument: arg1); let f: F? = r.resolve(argument: arg1); let g: G? = r.resolve(argument: arg1); let h: H? = r.resolve(argument: arg1)
       return initializer(a!, b!, c!, d!, e!, f!, g!, h!)
   } as (ResolverType, Arg1) -> Service)
}

func register<Service, A, B, C, D, E, F, G, H, Arg1, Arg2>(initializer initializer: (A, B, C, D, E, F, G, H) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2 in 
       let a: A? = r.resolve(arguments: arg1, arg2); let b: B? = r.resolve(arguments: arg1, arg2); let c: C? = r.resolve(arguments: arg1, arg2); let d: D? = r.resolve(arguments: arg1, arg2); let e: E? = r.resolve(arguments: arg1, arg2); let f: F? = r.resolve(arguments: arg1, arg2); let g: G? = r.resolve(arguments: arg1, arg2); let h: H? = r.resolve(arguments: arg1, arg2)
       return initializer(a!, b!, c!, d!, e!, f!, g!, h!)
   } as (ResolverType, Arg1, Arg2) -> Service)
}

func register<Service, A, B, C, D, E, F, G, H, Arg1, Arg2, Arg3>(initializer initializer: (A, B, C, D, E, F, G, H) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type, _ arg3: Arg3.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2, arg3 in 
       let a: A? = r.resolve(arguments: arg1, arg2, arg3); let b: B? = r.resolve(arguments: arg1, arg2, arg3); let c: C? = r.resolve(arguments: arg1, arg2, arg3); let d: D? = r.resolve(arguments: arg1, arg2, arg3); let e: E? = r.resolve(arguments: arg1, arg2, arg3); let f: F? = r.resolve(arguments: arg1, arg2, arg3); let g: G? = r.resolve(arguments: arg1, arg2, arg3); let h: H? = r.resolve(arguments: arg1, arg2, arg3)
       return initializer(a!, b!, c!, d!, e!, f!, g!, h!)
   } as (ResolverType, Arg1, Arg2, Arg3) -> Service)
}

func register<Service, A, B, C, D, E, F, G, H, I>(initializer initializer: (A, B, C, D, E, F, G, H, I) -> Service, service: Service.Type, name: String? = nil) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r in 
       let a: A? = r.resolve(); let b: B? = r.resolve(); let c: C? = r.resolve(); let d: D? = r.resolve(); let e: E? = r.resolve(); let f: F? = r.resolve(); let g: G? = r.resolve(); let h: H? = r.resolve(); let i: I? = r.resolve()
       return initializer(a!, b!, c!, d!, e!, f!, g!, h!, i!)
   } as (ResolverType) -> Service)
}

func register<Service, A, B, C, D, E, F, G, H, I, Arg1>(initializer initializer: (A, B, C, D, E, F, G, H, I) -> Service, service: Service.Type, name: String? = nil, argument  arg1: Arg1.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1 in 
       let a: A? = r.resolve(argument: arg1); let b: B? = r.resolve(argument: arg1); let c: C? = r.resolve(argument: arg1); let d: D? = r.resolve(argument: arg1); let e: E? = r.resolve(argument: arg1); let f: F? = r.resolve(argument: arg1); let g: G? = r.resolve(argument: arg1); let h: H? = r.resolve(argument: arg1); let i: I? = r.resolve(argument: arg1)
       return initializer(a!, b!, c!, d!, e!, f!, g!, h!, i!)
   } as (ResolverType, Arg1) -> Service)
}

func register<Service, A, B, C, D, E, F, G, H, I, Arg1, Arg2>(initializer initializer: (A, B, C, D, E, F, G, H, I) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2 in 
       let a: A? = r.resolve(arguments: arg1, arg2); let b: B? = r.resolve(arguments: arg1, arg2); let c: C? = r.resolve(arguments: arg1, arg2); let d: D? = r.resolve(arguments: arg1, arg2); let e: E? = r.resolve(arguments: arg1, arg2); let f: F? = r.resolve(arguments: arg1, arg2); let g: G? = r.resolve(arguments: arg1, arg2); let h: H? = r.resolve(arguments: arg1, arg2); let i: I? = r.resolve(arguments: arg1, arg2)
       return initializer(a!, b!, c!, d!, e!, f!, g!, h!, i!)
   } as (ResolverType, Arg1, Arg2) -> Service)
}

func register<Service, A, B, C, D, E, F, G, H, I, Arg1, Arg2, Arg3>(initializer initializer: (A, B, C, D, E, F, G, H, I) -> Service, service: Service.Type, name: String? = nil, arguments  arg1: Arg1.Type, _ arg2: Arg2.Type, _ arg3: Arg3.Type) -> ServiceEntry<Service> {
   return self.register(service.self, name: name, factory: { r, arg1, arg2, arg3 in 
       let a: A? = r.resolve(arguments: arg1, arg2, arg3); let b: B? = r.resolve(arguments: arg1, arg2, arg3); let c: C? = r.resolve(arguments: arg1, arg2, arg3); let d: D? = r.resolve(arguments: arg1, arg2, arg3); let e: E? = r.resolve(arguments: arg1, arg2, arg3); let f: F? = r.resolve(arguments: arg1, arg2, arg3); let g: G? = r.resolve(arguments: arg1, arg2, arg3); let h: H? = r.resolve(arguments: arg1, arg2, arg3); let i: I? = r.resolve(arguments: arg1, arg2, arg3)
       return initializer(a!, b!, c!, d!, e!, f!, g!, h!, i!)
   } as (ResolverType, Arg1, Arg2, Arg3) -> Service)
}


}