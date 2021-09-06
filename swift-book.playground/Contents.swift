class Department {
    var name: String
    var courses: [Course]

    init(name: String) {
        self.name = name
        self.courses = []
    }
}

protocol Course {}

class WeakCourse: Course {
    var name: String
    unowned var department: Department
    weak var nextCourse: UnownedCourse?

    init(name: String, in department: Department) {
        self.name = name
        self.department = department
        self.nextCourse = nil
    }

    deinit {
        print("WeakCourse is deinitialized")
    }
}

class UnownedCourse: Course {
    var name: String
    unowned var department: Department
    weak var nextCourse: WeakCourse?

    init(name: String, in department: Department) {
        self.name = name
        self.department = department
        self.nextCourse = nil
    }

    deinit {
        print("UnownedCourse is deinitialized")
    }
}

let department = Department(name: "Horticulture")

var intro: WeakCourse? = WeakCourse(name: "Survey of Plants", in: department)
var intermediate: UnownedCourse? = UnownedCourse(name: "Growing Common Herbs", in: department)
var advanced: WeakCourse? = WeakCourse(name: "Caring for Tropical Plants", in: department)

intro?.nextCourse = intermediate
intermediate?.nextCourse = advanced
department.courses = [intro!, intermediate!, advanced!]
advanced = nil
department.courses = [intro!, intermediate!]
intermediate!.nextCourse

class Owner {
    var weak: Weak?
    var unow: Unow?
}

class Weak {
    weak var own: Owner?

    deinit {
        print("Weak")
    }
}

class Unow {
    unowned var own: Owner?

    deinit {
        print("Unow")
    }
}

var owner: Owner? = Owner()
var weak: Weak? = Weak()
var unow: Unow? = Unow()
owner?.weak = weak
owner?.unow = unow

weak?.own = owner
unow?.own = owner

owner = nil
print(weak?.own == nil) // true
print(unow?.own == nil) // runtime error
