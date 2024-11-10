import Foundation

var landmarks: [Landmark] = load("landmarkData.json") // Array of landmarks, initialized from JSON.



func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // 1) "Guard" is like a HARD "try".
    // - Whatever is in the "guard" line, must resolve to 'true' in order for execution to continue.
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    // 2) once its open, we read the contents of the file.
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    // 3) Convert contents of the file into JSON.
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }

}
