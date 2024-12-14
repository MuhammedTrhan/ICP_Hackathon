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
    let celestialBody : Trie.Trie<CelestialBodyId , CelestialBody> = Option.get(result);

    // Initialize the total percentage
    var totalPercentage: Float = 0.0;

    // Iterate through the contents of the celestial body
    List.iter(
        func (content: Contents) {
            totalPercentage += content.percentage; // Accumulate the percentage
        },
        celestialBody.contents
    );

    // Check if the total percentage equals 100.0
    return totalPercentage == 100.0;
};





  private func key(x : CelestialBodyId) : Trie.Key <CelestialBodyId> {
    {hash = x; key = x};
  };

};
