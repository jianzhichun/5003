{
  "properties" : { },
  "id" : "2c9df6293db64bfcb2807abf73b5c55f",
  "script" : null,
  "groupId" : "f8a48b72b2fe4a8fb5e40655c718ed1b",
  "name" : "login",
  "createTime" : null,
  "updateTime" : 1634820918568,
  "lock" : "0",
  "method" : "POST",
  "path" : "/login",
  "parameters" : [ {
    "name" : "email",
    "value" : "",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : "pattern",
    "error" : "Invalid email",
    "expression" : "^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$",
    "children" : null
  }, {
    "name" : "password",
    "value" : "",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : "pass",
    "error" : "Password cannot be null",
    "expression" : null,
    "children" : null
  } ],
  "option" : "[]",
  "requestBody" : "{}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {\n        \"tokenName\": \"satoken\",\n        \"tokenValue\": \"dc2f1ed7-4279-4012-a0b8-90fc762c1bbe\",\n        \"isLogin\": true,\n        \"loginId\": \"2\",\n        \"loginType\": \"login\",\n        \"tokenTimeout\": 2592000,\n        \"sessionTimeout\": 2592000,\n        \"tokenSessionTimeout\": -2,\n        \"tokenActivityTimeout\": -1,\n        \"loginDevice\": \"default-device\",\n        \"tag\": null\n    },\n    \"timestamp\": 1634818696195,\n    \"executeTime\": 10\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "Object",
    "type" : null,
    "defaultValue" : null,
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "code",
      "value" : "1",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "message",
      "value" : "success",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "data",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "tokenName",
        "value" : "satoken",
        "description" : "",
        "required" : false,
        "dataType" : "String",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "tokenValue",
        "value" : "dc2f1ed7-4279-4012-a0b8-90fc762c1bbe",
        "description" : "",
        "required" : false,
        "dataType" : "String",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "isLogin",
        "value" : "true",
        "description" : "",
        "required" : false,
        "dataType" : "Boolean",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "loginId",
        "value" : "2",
        "description" : "",
        "required" : false,
        "dataType" : "String",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "loginType",
        "value" : "login",
        "description" : "",
        "required" : false,
        "dataType" : "String",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "tokenTimeout",
        "value" : "2592000",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "sessionTimeout",
        "value" : "2592000",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "tokenSessionTimeout",
        "value" : "-2",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "tokenActivityTimeout",
        "value" : "-1",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "loginDevice",
        "value" : "default-device",
        "description" : "",
        "required" : false,
        "dataType" : "String",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "tag",
        "value" : "null",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      } ]
    }, {
      "name" : "timestamp",
      "value" : "1634818696195",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "10",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  },
  "optionMap" : { }
}
================================
import '@/util/aesEncrypt' as aesEncrypt;
import 'cn.dev33.satoken.stp.StpUtil';

var user = db.selectOne("""
    select * from user where email=#{email} and password=#{aesEncrypt(password)}
""")

assert null != user: 400, 'Invalid email or password.'

StpUtil.login(user.id)
user.remove('password') 
StpUtil.getSession().set("user", user);

return StpUtil.getTokenInfo()