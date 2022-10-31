using DataFrames
import Mongoc as M

url = get!(ENV, "MONGO_URL") do 
    "mongodb+srv://$(ENV["MONGO_CREDENTIALS"])@cluster0.gdatcyo.mongodb.net/myFirstDatabase?tlsCAFile=/usr/local/etc/openssl@1.1/cert.pem"
end
client=M.Client(url)
db = Mongolia.Database(client["sample_analytics"])

@testset "server tests" begin
    df = mfind(db.accounts; :limit=>1)
    @test nrow(df) == 1
end
