require 'spec_helper'

describe String do
    describe '#<<' do
        example 'nilの追加はできない' do
            s = 'ABC'
            
            # s << nil
            # expect(s.size).to eq(4)
            expect{s << nil}.to raise_error(TypeError)
        end
    end
end