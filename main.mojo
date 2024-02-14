fn main():
    mutable_variable()

    var person = Person("John", "Doe")
    print(person.to_string())
    print(Person.to_string2(person))


fn mutable_variable():
    var x = 2
    print(x)
    x += 6
    print(x)


# Stuct is similar to classes in other languages.
struct Person:
    # First name is a mutable property similar to other.
    var firstName: String
    # Mojo does not support immutable fields similar to final fields in other languages.
    var lastName: String

    # Init is a constructor similar to other languages.
    fn __init__(inout self, firstName: String, lastName: String):
        self.firstName = firstName
        self.lastName = lastName

    # A method can be added to the Person struct. This is an instance method that acts on self.
    fn to_string(inout self) -> String:
        return self.firstName + " " + self.lastName

    # Static method similar to other languages.
    fn to_string2(person: Person) -> String:
        return person.firstName + " " + person.lastName
