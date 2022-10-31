using Mongolia
using Test
import Mongoc as M

# Test database:
# https://stackoverflow.com/questions/56569915/connect-to-mongodb-using-ssl-certificate-in-julia 
# mongosh "mongodb+srv://cluster0.gdatcyo.mongodb.net/myFirstDatabase" --apiVersion 1 --username tester
# use sample_analytics
#
# c=M.Client("mongodb+srv://tester:$credentials@cluster0.gdatcyo.mongodb.net/myFirstDatabase?tlsCAFile=/usr/local/etc/openssl@1.1/cert.pem")
# julia> db=c["sample_analytics"]


@testset "Mongolia.jl" begin
    include("bson_tests.jl")
    include("server_tests.jl")
end
