import Nat32 "mo:base/Nat32";
import Trie "mo:base/Trie";
import Option "mo:base/Option";
import List "mo:base/List";
import Text "mo:base/Text";
import Result "mo:base/Result";

// A data base creating algorithm to store the features of celestial bodies. For storing the desired informations, user should enter the name, the type, and the contents and the percentage of contents of the body that mean to store in the data base. If user wants, the application can check either the contents of the celeestial body fully entered or not.

actor main {

  public type Contents = {
    content : Text;
    percentage : Float;
  };

  public type CelestialBody = {
    name : Text;
    bodyType : Text;
    contents : List.List<Contents>;
  };

  public type CelestialBodyId = Nat32;

  private stable var next : CelestialBodyId = 0;

  private stable var celestialbodies : Trie.Trie<CelestialBodyId , CelestialBody> = Trie.empty();

  public func getBody (id : CelestialBodyId) : async ?CelestialBody {
    let result = Trie.find(
      celestialbodies,
      key(id),
      Nat32.equal
    );
    return result;
  };

  // Get contents of a celestial body by ID
  public func getContents(id: CelestialBodyId): async List.List<Contents> {
    let result = Trie.find(
      celestialbodies,
      key(id),
      Nat32.equal);

    // Handle Option explicitly
    switch (result) {
      case (?CelestialBody) {
        return CelestialBody.contents; // Return the contents if the celestial body exists
      };
      case null {
        return null; // Return empty if the celestial body does not exist
      };
    };
  };

  // Get name of a celestial body by ID
  public func getName(id: CelestialBodyId): async Text {
    let result = Trie.find(
      celestialbodies,
      key(id),
      Nat32.equal);

    // Handle Option explicitly
    switch (result) {
      case (?CelestialBody) {
        return CelestialBody.name; // Return the name if the celestial body exists
      };
      case null {
        return "Empty"; // Return empty if the celestial body does not exist
      };
    };
  };

  // Get body type of a celestial body by ID
  public func getBodyType(id: CelestialBodyId): async Text {
    let result = Trie.find(
      celestialbodies,
      key(id),
      Nat32.equal);

    // Handle Option explicitly
    switch (result) {
      case (?CelestialBody) {
        return CelestialBody.bodyType; // Return the body type if the celestial body exists
      };
      case null {
        return "Empty"; // Return empty if the celestial body does not exist
      };
    };
  };



  public func storeBody (newBody : CelestialBody) : async Nat32 {
    let id = next;
    next += 1;

    celestialbodies := Trie.replace(
      celestialbodies,
      key(id),
      Nat32.equal,
      ?newBody
    ).0;

    return id;
  };

  public func updateBody (id : CelestialBodyId , newBody : CelestialBody) : async Bool {
    let result = Trie.find(
      celestialbodies,
      key(id),
      Nat32.equal
    );

    let exists = Option.isSome(result);

    if (exists) {
      celestialbodies := Trie.replace (
        celestialbodies,
        key(id),
        Nat32.equal,
        ?newBody
      ).0;
    };
    
    return exists;
  };

   public func addContentToBody (id : CelestialBodyId , newContent : Contents) : async Bool {
    let result = Trie.find(
      celestialbodies,
      key(id),
      Nat32.equal
    );

    let exists = Option.isSome(result);

    if (exists) {
      let oldContents = await main.getContents(id);
      let mergedContents = List.push<Contents>(newContent, oldContents);
      //let mergedContents = List.merge<Contents>(oldContents, newContents);

      let newBody : CelestialBody = {
        name = await main.getName(id);
        bodyType = await main.getBodyType(id);
        contents = mergedContents;
        };

      celestialbodies := Trie.replace (
        celestialbodies,
        key(id),
        Nat32.equal,
        ?newBody
      ).0;
    };

    return exists;
  };


  public func deleteBody (id : CelestialBodyId) : async Bool {
    let result = Trie.find(
      celestialbodies,
      key(id),
      Nat32.equal
    );

    let exists = Option.isSome(result);

    if (exists) {
      celestialbodies := Trie.replace (
        celestialbodies,
        key(id),
        Nat32.equal,
        null
      ).0;
    };
    
    return exists;
  };

  public func isBodyComplete(id: CelestialBodyId) : async Bool {
    // Retrieve the celestial body by its ID
    let result = Trie.find(
        celestialbodies,
        key(id),
        Nat32.equal
    );

    // If the celestial body is not found, return false
    if (Option.isSome(result) != true) {
        return false;
    };

    // Extract the celestial body (unwrap the Option)
    let celestialBody : CelestialBody = Option.unwrap(result);

    // Initialize the total percentage
    var totalPercentage: Float = 0.0;

    // Iterate through the contents of the celestial body
    List.iterate(
        celestialBody.contents,
        func (content: Contents) {
            totalPercentage += content.percentage; // Accumulate the percentage
        }
    );

    // Check if the total percentage equals 100.0
    return totalPercentage == 100.0;
};





  private func key(x : CelestialBodyId) : Trie.Key <CelestialBodyId> {
    {hash = x; key = x};
  };

};
