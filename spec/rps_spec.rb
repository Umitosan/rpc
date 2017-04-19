require('rspec')
require('rps')

describe() do

  it("returns true if rock is the object and scissors is the argument") do
    expect("".beats("rock","scissors")).to(eq("Player 1 wins!"))
  end
  it("returns false if paper is the object and scissors is the argument") do
    expect("".beats("paper","scissors")).to(eq("Player 2 wins!"))
  end
  it("returns false if scissors is the object and rock is the argument") do
    expect("".beats("scissors","rock")).to(eq("Player 2 wins!"))
  end
  it("returns 'tie' if any two plays are the same") do
    expect("".beats("rock","rock")).to(eq('its a tie'))
  end
  it("returns 'tie' if any two plays are the same") do
    expect("".beats("paper","paper")).to(eq('its a tie'))
  end
  it("returns 'tie' if any two plays are the same") do
    expect("".beats("scissors","scissors")).to(eq('its a tie'))
  end

end
