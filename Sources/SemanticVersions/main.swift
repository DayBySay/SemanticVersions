extension Version {
    func incrementMajor() -> Version {
        let new = major + 1
        return Version(new, minor, patch)
    }
    
    func incrementMinor() -> Version {
        let new = minor + 1
        return Version(major, new, patch)
    }
    
    func incrementPatch() -> Version {
        let new = patch + 1
        return Version(major, minor, new)
    }
}

let version0_0_1 = Version(0, 0, 1)
let version1_0_1 = Version(1, 0, 1)
let version1_0_2 = Version(1, 0, 2)
let version2_0_0 = Version(2, 0, 0)

print(version0_0_1)
print(version0_0_1 > version1_0_2)
print(version0_0_1 == version1_0_2)
print(version0_0_1 < version1_0_2)

print(version0_0_1.incrementMajor())
print(version0_0_1.incrementMinor())
print(version0_0_1.incrementPatch())
print(version0_0_1.incrementMajor().incrementMinor().incrementPatch())
