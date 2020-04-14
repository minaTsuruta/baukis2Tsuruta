require 'spec_helper'
require 'pp'

describe String do
    describe '#<<' do
        example 'example 文字の追加' do
            s = 'ABC'
            s << 'D'
            pp expect(s.size).to eq(4)
        end

        # xexample 'xexample nilの追加' do
        #     pending('調査中')
        #     s = 'ABC'
        #     s << 'nil'
        #     pp expect{s << nil}.not_to raise_error(TypeError)
        # end

        example '四則演算の証明' do
            b = 2
            d = 4
            pp expect(b+b).to eq(d)
            pp expect(b*b).to eq(d)
            pp expect(d/b).to eq(b)
            pp expect(d-b).to eq(b)
        end

        example 'JohnとKen(Mike)' do
            a = 'John'
            b = 'Ken'
            pp expect(a+b).to be_include('John')
            pp expect(a+b).not_to be_include('Mike')
        end
    end
end