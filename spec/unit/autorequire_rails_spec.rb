RSpec.describe AutorequireRails do
  it "requires a module in the top level autorequire folder" do
    expect(Foo.boo).to eq("boo")
  end

  it "requires an ruby extension to a ruby core class located in autorequire/core_ext" do
    expect("some string".and1).to eq("some string 1")
  end
end
