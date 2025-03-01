describe Messages do
  let(:messages) { Messages.first }

  before do
    Messages.create(body: "Hello 👋", username: "Laila")
  end
  
  it "has the correct columns in the messages table" do
    expect(messages).to have_attributes(
      body: "Hello 👋", 
      username: "Laila",
      created_at: a_kind_of(Time), 
      updated_at: a_kind_of(Time)
    )
  end
  
end
