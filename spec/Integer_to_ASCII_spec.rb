require_relative '../Integer_to_ASCII'

RSpec.describe Integer_to_ASCII do
    context 'method' do
        it 'should return ALL if value is 1000' do
            expect(Integer_to_ASCII.new.method(1000) == 'ALL').to be_truthy
        end

        it 'should return CV if value is 1000' do
            expect(Integer_to_ASCII.new.method(100) == 'CV').to be_truthy
        end

        'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split("").each_with_index do |a,i|
            it "should return #{a} if value is #{i+1}" do
                expect(Integer_to_ASCII.new.method(i+1) == a).to be_truthy
            end
        end
       


    end
end
