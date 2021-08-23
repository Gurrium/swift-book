protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var lightSwitch = OnOffSwitch.off
print(lightSwitch) // off
lightSwitch.toggle()
print(lightSwitch) // on

class VideoPlayer: Togglable {
    struct Video {}

    let content: Video
    var currentTime = 0
    var isPlaying = false

    func toggle() {
        isPlaying = !isPlaying
    }

    init(content: Video) {
        self.content = content
    }
}

let player = VideoPlayer(content: .init())
print(player.isPlaying) // false
player.toggle()
print(player.isPlaying) // true
