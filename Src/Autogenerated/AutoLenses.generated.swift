// swiftlint:disable variable_name
// swiftlint:disable trailing_newline

import Foundation

infix operator *~: MultiplicationPrecedence
infix operator |>: AdditionPrecedence

struct Lens<Whole, Part> {
    let get: (Whole) -> Part
    let set: (Part, Whole) -> Whole
}

func * <A, B, C>(lhs: Lens<A, B>, rhs: Lens<B, C>) -> Lens<A, C> {
    Lens<A, C>(get: { a in rhs.get(lhs.get(a)) },
               set: { c, a in lhs.set(rhs.set(c, lhs.get(a)), a) })
}

func *~ <A, B>(lhs: Lens<A, B>, rhs: B) -> (A) -> A {
    { a in lhs.set(rhs, a) }
}

func |> <A, B>(x: A, f: (A) -> B) -> B {
    f(x)
}

func |> <A, B, C>(f: @escaping (A) -> B, g: @escaping (B) -> C) -> (A) -> C {
    { g(f($0)) }
}
