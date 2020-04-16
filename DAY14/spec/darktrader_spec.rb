require_relative '../lib/darktrader.rb'

describe "the make_currencies_list method" do
  it "Number of element of currencies should not be zero" do
    expect(make_currencies_list.count).not_to eq(0)
  end
  it "Number of element of currencies should be more than 50" do
    expect(make_currencies_list.count > 50).to eq(true)
  end
  it "BTC bitcoin should be inluded in the list of currencies" do
    expect(make_currencies_list.include?("BTC")).to eq(true)
  end
  it "ZRX should be inluded in the list of currencies" do
    expect(make_currencies_list.include?("ZRX")).to eq(true)
  end
end

describe "the make_currencies_values method" do
  it "Number of element of values should not be zero" do
    expect(make_currencies_list.count).not_to eq(0)
  end
  it "Number of element of values should be more than 50" do
    expect(make_currencies_list.count > 50).to eq(true)
  end
end

describe "the make_crypto_array" do
  it "Number of element of crypto_array should not be zero" do
    expect(make_crypto_array.count).not_to eq(0)
  end
  it "Number of element of crypto_array should be more than 50" do
    expect(make_crypto_array.count > 50).to eq(true)
  end
  it "In crypto_array element[0].key = 'BTC' should return element[0].value around 7000 USD" do
    expect(make_crypto_array[0]["BTC"] < 8000 && make_crypto_array[0]["BTC"] > 6500).to eq(true)
  end
end