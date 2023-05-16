# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

require_relative '../lib/openapi'
require 'rack'
module OpenApiSDK
  class TestParameter < Minitest::Test
    def setup
      @sdk = OpenApiSDK::SDK.new
    end


    def test_simple_path_parameter_primitives
      record_test('parameters-simple-path-parameter-primitives')

      res = @sdk.parameters.simple_path_parameter_primitives(bool_param=true,
        int_param=1,  
        num_param=1.1,
        str_param="test"
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("http://localhost:35123/anything/pathParams/str/test/bool/true/int/1/num/1.1", res.res.url)
    end

    def test_simple_path_parameter_objects
      record_test('parameters-simple-path-parameter-objects')

      res = @sdk.parameters.simple_path_parameter_objects(
        obj_param=create_simple_object,
        obj_param_exploded=create_simple_object,
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("http://localhost:35123/anything/pathParams/obj/any,any,bool,true,date,2020-01-01,dateTime,2020-01-01T00:00:00.000000001Z,enum,one,float32,1.1,int,1,int32,1,int32Enum,55,intEnum,2,num,1.1,str,test,boolOpt,true,strOpt,testOptional/objExploded/any=any,bool=true,date=2020-01-01,dateTime=2020-01-01T00:00:00.000000001Z,enum=one,float32=1.1,int=1,int32=1,int32Enum=55,intEnum=2,num=1.1,str=test,boolOpt=true,strOpt=testOptional", res.res.url)
    end

    def test_simple_path_parameter_arrays
      record_test('parameters-simple-path-parameter-arrays')

      res = @sdk.parameters.simple_path_parameter_arrays(
        arr_param=["test", "test2"],
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("http://localhost:35123/anything/pathParams/arr/test,test2", res.res.url)
    end

    def test_simple_path_parameter_maps
      record_test('parameters-simple-path-parameter-maps')

      res = @sdk.parameters.simple_path_parameter_maps(
        map_param={
          :test =>  "value",
          :test2 => "value2",
        },
        map_param_exploded={
          :test =>  1,
          :test2 => 2,
        },
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("http://localhost:35123/anything/pathParams/map/test,value,test2,value2/mapExploded/test=1,test2=2", sort_serialized_map(res.res.url, '.*?\/map\/(.*?)\/mapExploded\/(.*)'))
    end

    # TODO: Faraday needs some help handling this url - URI::InvalidURIError: bad URI(is not URI?):
    # def test_path_parameter_json
    #   record_test('parameters-path-parameter-json')

    #   res = @sdk.parameters.path_parameter_json(json_obj=create_simple_object)
    #   refute_nil(res)
    #   assert_equal(Rack::Utils.status_code(:ok), res.status_code)
    #   refute_nil(res.res)
    #   assert_equal('http://localhost:35123/anything/pathParams/json/{"any": "any", "bool": true, "date": "2020-01-01", "dateTime": "2020-01-01T00:00:00.000001Z", "enum": "one", "float32": 1.1, "int": 1, "int32": 1, "num": 1.1, "str": "test", "boolOpt": true, "strOpt": "testOptional"}', res.res.url)
    # end  

    def test_form_query_params_primitive
      record_test('parameters-form-query-params-primitive')

      res = @sdk.parameters.form_query_params_primitive(bool_param=true,
        int_param=1,
        num_param=1.1,
        str_param="test",
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("true", res.res.args.bool_param)
      assert_equal("1", res.res.args.int_param)
      assert_equal("1.1", res.res.args.num_param)
      assert_equal("test", res.res.args.str_param)
    end

    def test_form_query_params_object
      record_test('parameters-form-query-params-object')

      obj = create_simple_object

      res = @sdk.parameters.form_query_params_object(
        obj_param=obj,
        obj_param_exploded=obj,
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("http://localhost:35123/anything/queryParams/form/obj?any=any&bool=true&boolOpt=true&date=2020-01-01&dateTime=2020-01-01T00%3A00%3A00.000000001Z&enum=one&float32=1.1&int=1&int32=1&int32Enum=55&intEnum=2&num=1.1&objParam=any%2Cany%2Cbool%2Ctrue%2Cdate%2C2020-01-01%2CdateTime%2C2020-01-01T00%3A00%3A00.000000001Z%2Cenum%2Cone%2Cfloat32%2C1.1%2Cint%2C1%2Cint32%2C1%2Cint32Enum%2C55%2CintEnum%2C2%2Cnum%2C1.1%2Cstr%2Ctest%2CboolOpt%2Ctrue%2CstrOpt%2CtestOptional&str=test&strOpt=testOptional", res.res.url)
      assert_equal("test", res.res.args.str_)
      assert_equal("true", res.res.args.bool)
      assert_equal("1", res.res.args.int)
      assert_equal("1.1", res.res.args.num)
      assert_equal("1", res.res.args.int32)
      assert_equal("55", res.res.args.int32_enum)
      assert_equal("2", res.res.args.int_enum)
      assert_equal("1.1", res.res.args.float32)
      assert_equal("one", res.res.args.enum)
      assert_equal("any", res.res.args.any)
      assert_equal("2020-01-01", res.res.args.date)
      assert_equal("2020-01-01T00:00:00.000000001Z", res.res.args.date_time)
      assert_equal("true", res.res.args.bool_opt)
      assert_equal("testOptional", res.res.args.str_opt)
      assert_nil(res.res.args.int_opt_null)
      assert_nil(res.res.args.num_opt_null)
      assert_equal("any,any,bool,true,date,2020-01-01,dateTime,2020-01-01T00:00:00.000000001Z,enum,one,float32,1.1,int,1,int32,1,int32Enum,55,intEnum,2,num,1.1,str,test,boolOpt,true,strOpt,testOptional", res.res.args.obj_param)
    end

    def test_form_query_params_ref_param_object
      record_test('parameters-form-query-params-ref-param-object')


      res = @sdk.parameters.form_query_params_ref_param_object(
        ref_obj_param=Shared::RefQueryParamObj.new(
          bool: true,
          int: 1,
          num: 1.1,
          str_: "test",
        ),
        ref_obj_param_exploded=Shared::RefQueryParamObjExploded.new(
          bool: true,
          int: 1,
          num: 1.1,
          str_: "test",
        ),
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("http://localhost:35123/anything/queryParams/form/refParamObject?bool=true&int=1&num=1.1&refObjParam=bool%2Ctrue%2Cint%2C1%2Cnum%2C1.1%2Cstr%2Ctest&str=test", res.res.url)
      assert_equal("test", res.res.args.str_)
      assert_equal("true", res.res.args.bool)
      assert_equal("1", res.res.args.int)
      assert_equal("1.1", res.res.args.num)
      assert_equal("bool,true,int,1,num,1.1,str,test", res.res.args.ref_obj_param)
    end


    def test_form_query_params_array
      record_test('parameters-form-query-params-array')

      res = @sdk.parameters.form_query_params_array(arr_param=["test", "test2"], arr_param_exploded=[1, 2])
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("http://localhost:35123/anything/queryParams/form/array?arrParam=test%2Ctest2&arrParamExploded=1&arrParamExploded=2", res.res.url)
      assert_equal("test,test2", res.res.args.arr_param)
      assert_equal(["1", "2"], res.res.args.arr_param_exploded)
    end


    def test_pipe_delimited_query_params_array
      record_test('parameters-pipe-query-params-array')

        obj = create_simple_object
      res = @sdk.parameters.pipe_delimited_query_params_array(arr_param=["test", "test2"],
        arr_param_exploded=[1, 2],
        map_param={
            :key1 =>  "val1",
            :key2 => "val2",
        },
        obj_param=obj
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("http://localhost:35123/anything/queryParams/pipe/array?arrParam=test|test2&arrParamExploded=1&arrParamExploded=2&mapParam=key1|val1|key2|val2&objParam=any|any|bool|true|date|2020-01-01|dateTime|2020-01-01T00%3A00%3A00.000000001Z|enum|one|float32|1.1|int|1|int32|1|int32Enum|55|intEnum|2|num|1.1|str|test|boolOpt|true|strOpt|testOptional", res.res.url)
      assert_equal("test|test2", res.res.args.arr_param)
      assert_equal(["1", "2"], res.res.args.arr_param_exploded)
    end

    def test_form_query_params_map
      record_test('parameters-form-query-params-map')

      res = @sdk.parameters.form_query_params_map(
        map_param={
          "test":  "value",
          "test2": "value2",
        },
        map_param_exploded={
          "test":  1,
          "test2": 2,
        }
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("http://localhost:35123/anything/queryParams/form/map?mapParam=test,value,test2,value2&test=1&test2=2", sort_serialized_map(res.res.url, '.*?\?mapParam=(.*?)&(.*)'))

      if res.res.args.include? "mapParam"
        mapParam = res.res.args["mapParam"]
        res.res.args["mapParam"] = sort_serialized_map(mapParam, '(.*)')
      end

      compare_hashes({"mapParam" => "test,value,test2,value2", "test" => "1", "test2" => "2"}, res.res.args)
    end

    def test_deep_object_query_params_object
      record_test('parameters-deep-object-query-params-object')

      obj = create_simple_object

      res = @sdk.parameters.deep_object_query_params_object(obj_param=obj,
        obj_arr_param=Operations::DeepObjectQueryParamsObjectObjArrParam.new(
          arr: ["test", "test2"]
        )
      )

      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("http://localhost:35123/anything/queryParams/deepObject/obj?objArrParam[arr]=test&objArrParam[arr]=test2&objParam[any]=any&objParam[boolOpt]=true&objParam[bool]=true&objParam[dateTime]=2020-01-01T00%3A00%3A00.000000001Z&objParam[date]=2020-01-01&objParam[enum]=one&objParam[float32]=1.1&objParam[int32Enum]=55&objParam[int32]=1&objParam[intEnum]=2&objParam[int]=1&objParam[num]=1.1&objParam[strOpt]=testOptional&objParam[str]=test", res.res.url)

      assert_equal(["test", "test2"], res.res.args.obj_arr_param_arr)
      assert_equal("any", res.res.args.obj_param_any)
      assert_equal("true", res.res.args.obj_param_bool_opt)
      assert_equal("true", res.res.args.obj_param_bool)
      assert_equal("2020-01-01T00:00:00.000000001Z", res.res.args.obj_param_date_time)
      assert_equal("2020-01-01", res.res.args.obj_param_date)
      assert_equal("one", res.res.args.obj_param_enum)
      assert_equal("1.1", res.res.args.obj_param_float32)
      assert_equal("1", res.res.args.obj_param_int)
      assert_equal("1", res.res.args.obj_param_int32)
      assert_equal("55", res.res.args.obj_param_int32_enum)
      assert_equal("2", res.res.args.obj_param_int_enum)
      assert_equal("1.1", res.res.args.obj_param_num)
      assert_equal("testOptional", res.res.args.obj_param_str_opt)
      assert_equal("test", res.res.args.obj_param_str)
    end

    def test_deep_object_query_params_map
      record_test('parameters-deep-object-query-params-map')

      res = @sdk.parameters.deep_object_query_params_map(
        map_param={
          "test":  "value",
          "test2": "value2",
        },
        map_arr_param={
          "test":  ["test", "test2"],
          "test2": ["test3", "test4"],
        },
      )

      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("http://localhost:35123/anything/queryParams/deepObject/map?mapArrParam[test2]=test3&mapArrParam[test2]=test4&mapArrParam[test]=test&mapArrParam[test]=test2&mapParam[test2]=value2&mapParam[test]=value", res.res.url)

      assert_equal({
        "mapArrParam[test2]" => ["test3", "test4"],
        "mapArrParam[test]" => ["test", "test2"],
        "mapParam[test2]" => "value2",
        "mapParam[test]" => "value",
      }, res.res.args)
    end

    def test_json_query_params_object
      record_test('parameters-json-query-params-object')

      simple_obj = create_simple_object
      deep_obj = create_deep_object

      res = @sdk.parameters.json_query_params_object(deep_obj_param=deep_obj, simple_obj_param=simple_obj)

      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("http://localhost:35123/anything/queryParams/json/obj?deepObjParam={\"any\"%3A{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}%2C\"arr\"%3A[{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}%2C{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}]%2C\"bool\"%3Atrue%2C\"int\"%3A1%2C\"map\"%3A[[\"key\"%2C{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}]]%2C\"num\"%3A1.1%2C\"obj\"%3A{\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}%2C\"str\"%3A\"test\"}&simpleObjParam={\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}", res.res.url)
      assert_equal(simple_obj.marshal_json, res.res.args.simple_obj_param)
      assert_equal(deep_obj.marshal_json, res.res.args.deep_obj_param)
    end


    def test_mixed_query_params
      record_test('parameters-mixed-query-params')

      obj = create_simple_object

      res = @sdk.parameters.mixed_query_params(deep_object_param=obj, form_param=obj, json_param=obj)

      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("http://localhost:35123/anything/queryParams/mixed?any=any&bool=true&boolOpt=true&date=2020-01-01&dateTime=2020-01-01T00%3A00%3A00.000000001Z&deepObjectParam[any]=any&deepObjectParam[boolOpt]=true&deepObjectParam[bool]=true&deepObjectParam[dateTime]=2020-01-01T00%3A00%3A00.000000001Z&deepObjectParam[date]=2020-01-01&deepObjectParam[enum]=one&deepObjectParam[float32]=1.1&deepObjectParam[int32Enum]=55&deepObjectParam[int32]=1&deepObjectParam[intEnum]=2&deepObjectParam[int]=1&deepObjectParam[num]=1.1&deepObjectParam[strOpt]=testOptional&deepObjectParam[str]=test&enum=one&float32=1.1&int=1&int32=1&int32Enum=55&intEnum=2&jsonParam={\"any\"%3A\"any\"%2C\"bool\"%3Atrue%2C\"boolOpt\"%3Atrue%2C\"date\"%3A\"2020-01-01\"%2C\"dateTime\"%3A\"2020-01-01T00%3A00%3A00.000000001Z\"%2C\"enum\"%3A\"one\"%2C\"float32\"%3A1.1%2C\"int\"%3A1%2C\"int32\"%3A1%2C\"int32Enum\"%3A55%2C\"intEnum\"%3A2%2C\"num\"%3A1.1%2C\"str\"%3A\"test\"%2C\"strOpt\"%3A\"testOptional\"}&num=1.1&str=test&strOpt=testOptional", res.res.url)
      compare_hashes({
        "any"=>                       "any",
        "bool"=>                      "true",
        "boolOpt"=>                   "true",
        "date"=>                      "2020-01-01",
        "dateTime"=>                  "2020-01-01T00:00:00.000000001Z",
        "deepObjectParam[any]"=>      "any",
        "deepObjectParam[boolOpt]"=>  "true",
        "deepObjectParam[bool]"=>     "true",
        "deepObjectParam[dateTime]"=> "2020-01-01T00:00:00.000000001Z",
        "deepObjectParam[date]"=>     "2020-01-01",
        "deepObjectParam[enum]"=>     "one",
        "deepObjectParam[float32]"=>  "1.1",
        "deepObjectParam[int32]"=>    "1",
        "deepObjectParam[int]"=>      "1",
        "deepObjectParam[int32Enum]"=>"55",
        "deepObjectParam[intEnum]"=>  "2",
        "deepObjectParam[num]"=>      "1.1",
        "deepObjectParam[strOpt]"=>   "testOptional",
        "deepObjectParam[str]"=>      "test",
        "enum"=>                      "one",
        "float32"=>                   "1.1",
        "int"=>                       "1",
        "int32"=>                     "1",
        "int32Enum"=>                 "55",
        "intEnum"=>                   "2",
        "jsonParam"=>                 obj.marshal_json,
        "num"=>                       "1.1",
        "str"=>                       "test",
        "strOpt"=>                    "testOptional",
      }, res.res.args)
    end

    def test_header_params_primitive
      record_test('parameters-header-params-primitive')

      res = @sdk.parameters.header_params_primitive(x_header_boolean=true,
        x_header_integer=1,
        x_header_number=1.1,
        x_header_string="test"
        )

      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("true", res.res.headers.x_header_boolean)
      assert_equal("1", res.res.headers.x_header_integer)
      assert_equal("1.1", res.res.headers.x_header_number)
      assert_equal("test", res.res.headers.x_header_string)
    end


    def test_header_params_object
      record_test('parameters-header-params-object')

      obj = create_simple_object

      res = @sdk.parameters.header_params_object(x_header_obj=obj, x_header_obj_explode=obj)
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("any,any,bool,true,date,2020-01-01,dateTime,2020-01-01T00:00:00.000000001Z,enum,one,float32,1.1,int,1,int32,1,int32Enum,55,intEnum,2,num,1.1,str,test,boolOpt,true,strOpt,testOptional", res.res.headers.x_header_obj)
      assert_equal("any=any,bool=true,date=2020-01-01,dateTime=2020-01-01T00:00:00.000000001Z,enum=one,float32=1.1,int=1,int32=1,int32Enum=55,intEnum=2,num=1.1,str=test,boolOpt=true,strOpt=testOptional", res.res.headers.x_header_obj_explode)
    end

    def test_header_params_map
      record_test('parameters-header-params-map')

      res = @sdk.parameters.header_params_map(
        x_header_map={
          "key1": "value1",
          "key2": "value2",
        },
        x_header_map_explode={
          "test1": "val1",
          "test2": "val2",
        }
      )
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("key1,value1,key2,value2", res.res.headers.x_header_map)
      assert_equal("test1=val1,test2=val2", res.res.headers.x_header_map_explode)
    end

    def test_header_params_array
      record_test('parameters-header-params-array')

      res = @sdk.parameters.header_params_array(x_header_array=["test1", "test2"])
      refute_nil(res)
      assert_equal(Rack::Utils.status_code(:ok), res.status_code)
      refute_nil(res.res)
      assert_equal("test1,test2", res.res.headers.x_header_array)
    end
  end
end
