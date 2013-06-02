require 'spec_helper'

describe Person do
  context "without name" do 
	  it {should respond_to(:name) }
	  it "can be instantiated with name" do
	    person = Person.new(name: "Test 1")
	    person.name.should match(/Test 1/)
	  end

	  it "can not be saved successfully without name" do
	    Person.create.should_not be_persisted
	  end
  end
  context "with a name" do 
  	  
  	  let(:tweet) { Tweet.new(status: 'abc')}
  	  let(:person) { Person.new(name: 'ash', tweets: [tweet])}  	  
      its(:tweets) {should include(tweet)}	

      subject  { person }
      before { person.name = 'def' }
      it 'tweet status should equal def' do 
      	tweet.status.should == 'abc'
      end
	     
      it 'should have many subscription' do
        pending
      end
       
  end

end
