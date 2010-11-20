require "statsample"
class BenfordsLawController < ApplicationController
  before_filter "befordsvalues"
  def index

  end
  def postvalues
    value = params[:value]
    @a = []
    value.to_s.split(',').each do |val|
      begin
          @a.push(val.to_f)
      rescue  
      end
    end
    calculatecovariance(@a)
  end
  def calculatecovariance (values)
    benflaw = []
    0.upto(9) do |idx|
      benflaw[idx] = 0
    end
    values.each do |no|
        firstletter =  no.to_s.chars().take(1)[0].to_i
        benflaw[firstletter] += 1
    end
    @scaleb = benflaw.to_scale
    @ccef =  Statsample::Bivariate.pearson(@scalea,@scaleb)
  end
  def randomvalues
    calculatecovariance(getrandomvalues)
     render :'postvalues'
  end
  def befordsvalues
    @d1 = []
    1.upto(10) do |k|
      @d1.push( Math.log10( (1.00 + 1.00/k) ) )
    end
    @scalea =  @d1.to_scale

  end
  def getrandomvalues
    @a = []
    0.upto(10) do |idx|
      @a.push(rand(100))
    end
    return @a
  end
end

