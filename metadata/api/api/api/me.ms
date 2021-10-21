{
  "properties" : { },
  "id" : "732c7068e4fe4f5ea8bf565d76d1c2ff",
  "script" : null,
  "groupId" : "f8a48b72b2fe4a8fb5e40655c718ed1b",
  "name" : "me",
  "createTime" : null,
  "updateTime" : 1634819991036,
  "lock" : "0",
  "method" : "GET",
  "path" : "/me",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "{}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 400,\n    \"message\": \"U are not logined\",\n    \"data\": null,\n    \"timestamp\": 1634818529635,\n    \"executeTime\": 1\n}",
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
      "value" : "400",
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
      "value" : "U are not logined",
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
    }, {
      "name" : "timestamp",
      "value" : "1634818529635",
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
    } ]
  },
  "optionMap" : { }
}
================================
import 'cn.dev33.satoken.stp.StpUtil';

assert StpUtil.isLogin() : 401, 'U are not logined'

return StpUtil.getSession().get('user')