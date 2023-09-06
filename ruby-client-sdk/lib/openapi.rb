# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require_relative 'sdk/utils/utils'
require_relative 'sdk/utils/metadata_fields'
require_relative 'sdk/sdk'
require_relative 'sdk/models/shared/authservicerequestbody'
require_relative 'sdk/models/shared/security'
require_relative 'sdk/models/shared/error'
require_relative 'sdk/models/shared/simpleobject'
require_relative 'sdk/models/shared/enum'
require_relative 'sdk/models/shared/validcircularreferenceobject'
require_relative 'sdk/models/shared/deprecatedfieldinobject'
require_relative 'sdk/models/shared/deprecatedobject'
require_relative 'sdk/models/shared/emptyobjectparam'
require_relative 'sdk/models/shared/httpbinsimplejsonobject'
require_relative 'sdk/models/shared/limitoffsetconfig'
require_relative 'sdk/models/shared/refqueryparamobjexploded'
require_relative 'sdk/models/shared/refqueryparamobj'
require_relative 'sdk/models/shared/deepobject'
require_relative 'sdk/models/shared/simpleobjectcamelcase'
require_relative 'sdk/models/shared/arrobjvalue'
require_relative 'sdk/models/shared/arrobjvaluecamelcase'
require_relative 'sdk/models/shared/deepobjectcamelcase'
require_relative 'sdk/models/shared/mapobjvalue'
require_relative 'sdk/models/shared/mapobjvaluecamelcase'
require_relative 'sdk/models/shared/readwriteobject'
require_relative 'sdk/models/shared/readonlyobject'
require_relative 'sdk/models/shared/writeonlyobject'
require_relative 'sdk/models/shared/fileresource'
require_relative 'sdk/models/shared/exampleresource'
require_relative 'sdk/models/shared/exampleboat'
require_relative 'sdk/models/shared/examplecar'
require_relative 'sdk/models/shared/typedobject1'
require_relative 'sdk/models/shared/simpleobjectwithtype'
require_relative 'sdk/models/shared/deepobjectwithtype'
require_relative 'sdk/models/shared/typedobject2'
require_relative 'sdk/models/shared/typedobject3'
require_relative 'sdk/models/shared/alloftoallof'
require_relative 'sdk/models/shared/unsupportedenums'
require_relative 'sdk/models/operations/anchortypesget'
require_relative 'sdk/models/operations/apikeyauth'
require_relative 'sdk/models/operations/apikeyauthglobal'
require_relative 'sdk/models/operations/apikeyauthglobalnew'
require_relative 'sdk/models/operations/authglobal'
require_relative 'sdk/models/operations/basicauth'
require_relative 'sdk/models/operations/basicauthnew'
require_relative 'sdk/models/operations/bearerauth'
require_relative 'sdk/models/operations/circularreferenceget'
require_relative 'sdk/models/operations/componentbodyandparamconflict'
require_relative 'sdk/models/operations/componentbodyandparamnoconflict'
require_relative 'sdk/models/operations/conflictingparams'
require_relative 'sdk/models/operations/connectionerrorget'
require_relative 'sdk/models/operations/createfile'
require_relative 'sdk/models/operations/createresource'
require_relative 'sdk/models/operations/deepobjectqueryparamsmap'
require_relative 'sdk/models/operations/deepobjectqueryparamsobject'
require_relative 'sdk/models/operations/deleteresource'
require_relative 'sdk/models/operations/deprecatedfieldinschemapost'
require_relative 'sdk/models/operations/deprecatedobjectinschemaget'
require_relative 'sdk/models/operations/deprecatedoperationnocommentsget'
require_relative 'sdk/models/operations/deprecatedoperationwithcommentsget'
require_relative 'sdk/models/operations/duplicateparam'
require_relative 'sdk/models/operations/emptyobjectget'
require_relative 'sdk/models/operations/emptyresponseobjectwithcommentget'
require_relative 'sdk/models/operations/formqueryparamsarray'
require_relative 'sdk/models/operations/formqueryparamsmap'
require_relative 'sdk/models/operations/formqueryparamsobject'
require_relative 'sdk/models/operations/formqueryparamsprimitive'
require_relative 'sdk/models/operations/formqueryparamsrefparamobject'
require_relative 'sdk/models/operations/getdocumentationperlanguage'
require_relative 'sdk/models/operations/getglobalnameoverride'
require_relative 'sdk/models/operations/getresource'
require_relative 'sdk/models/operations/globalbearerauth'
require_relative 'sdk/models/operations/globalpathparameterget'
require_relative 'sdk/models/operations/globalsqueryparameterget'
require_relative 'sdk/models/operations/groupfirstget'
require_relative 'sdk/models/operations/groupsecondget'
require_relative 'sdk/models/operations/headerparamsarray'
require_relative 'sdk/models/operations/headerparamsmap'
require_relative 'sdk/models/operations/headerparamsobject'
require_relative 'sdk/models/operations/headerparamsprimitive'
require_relative 'sdk/models/operations/ignoredgenerationget'
require_relative 'sdk/models/operations/ignorespost'
require_relative 'sdk/models/operations/inlinebodyandparamconflict'
require_relative 'sdk/models/operations/inlinebodyandparamnoconflict'
require_relative 'sdk/models/operations/jsonqueryparamsobject'
require_relative 'sdk/models/operations/mixedparameterscamelcase'
require_relative 'sdk/models/operations/mixedparametersprimitives'
require_relative 'sdk/models/operations/mixedqueryparams'
require_relative 'sdk/models/operations/mixedtypeoneofpost'
require_relative 'sdk/models/operations/multiplemixedoptionsauth'
require_relative 'sdk/models/operations/multiplemixedschemeauth'
require_relative 'sdk/models/operations/multipleoptionswithmixedschemesauth'
require_relative 'sdk/models/operations/multipleoptionswithsimpleschemesauth'
require_relative 'sdk/models/operations/multiplesimpleoptionsauth'
require_relative 'sdk/models/operations/multiplesimpleschemeauth'
require_relative 'sdk/models/operations/nameoverrideget'
require_relative 'sdk/models/operations/nestedfirstget'
require_relative 'sdk/models/operations/nestedget'
require_relative 'sdk/models/operations/nestedsecondget'
require_relative 'sdk/models/operations/nestfirstget'
require_relative 'sdk/models/operations/oauth2auth'
require_relative 'sdk/models/operations/oauth2authnew'
require_relative 'sdk/models/operations/oauth2override'
require_relative 'sdk/models/operations/openidconnectauth'
require_relative 'sdk/models/operations/openidconnectauthnew'
require_relative 'sdk/models/operations/paginationcursorbody'
require_relative 'sdk/models/operations/paginationcursorparams'
require_relative 'sdk/models/operations/paginationlimitoffsetoffsetbody'
require_relative 'sdk/models/operations/paginationlimitoffsetoffsetparams'
require_relative 'sdk/models/operations/paginationlimitoffsetpagebody'
require_relative 'sdk/models/operations/paginationlimitoffsetpageparams'
require_relative 'sdk/models/operations/pathparameterjson'
require_relative 'sdk/models/operations/pipedelimitedqueryparamsarray'
require_relative 'sdk/models/operations/primitivetypeoneofpost'
require_relative 'sdk/models/operations/put_anything_ignoredgeneration'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonarray'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonarraycamelcase'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonarrayobj'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonarrayobjcamelcase'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonarrayofarray'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonarrayofarraycamelcase'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonarrayofarrayofprimitive'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonarrayofmap'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonarrayofmapcamelcase'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonarrayofprimitive'
require_relative 'sdk/models/operations/requestbodypostapplicationjsondeep'
require_relative 'sdk/models/operations/requestbodypostapplicationjsondeepcamelcase'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonmap'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonmapcamelcase'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonmapobj'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonmapobjcamelcase'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonmapofarray'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonmapofarraycamelcase'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonmapofmap'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonmapofmapcamelcase'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonmapofmapofprimitive'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonmapofprimitive'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonmultiplejsonfiltered'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonsimple'
require_relative 'sdk/models/operations/requestbodypostapplicationjsonsimplecamelcase'
require_relative 'sdk/models/operations/requestbodypostemptyobject'
require_relative 'sdk/models/operations/requestbodypostformdeep'
require_relative 'sdk/models/operations/requestbodypostformmapprimitive'
require_relative 'sdk/models/operations/requestbodypostformsimple'
require_relative 'sdk/models/operations/requestbodypostmultiplecontenttypescomponentfiltered'
require_relative 'sdk/models/operations/requestbodypostmultiplecontenttypesinlinefiltered'
require_relative 'sdk/models/operations/requestbodypostmultiplecontenttypessplit_form'
require_relative 'sdk/models/operations/requestbodypostmultiplecontenttypessplit_json'
require_relative 'sdk/models/operations/requestbodypostmultiplecontenttypessplit_multipart'
require_relative 'sdk/models/operations/requestbodypostmultiplecontenttypessplitparam_form'
require_relative 'sdk/models/operations/requestbodypostmultiplecontenttypessplitparam_json'
require_relative 'sdk/models/operations/requestbodypostmultiplecontenttypessplitparam_multipart'
require_relative 'sdk/models/operations/requestbodypostnullarray'
require_relative 'sdk/models/operations/requestbodypostnulldictionary'
require_relative 'sdk/models/operations/requestbodyputbytes'
require_relative 'sdk/models/operations/requestbodyputbyteswithparams'
require_relative 'sdk/models/operations/requestbodyputmultipartdeep'
require_relative 'sdk/models/operations/requestbodyputmultipartfile'
require_relative 'sdk/models/operations/requestbodyputmultipartsimple'
require_relative 'sdk/models/operations/requestbodyputstring'
require_relative 'sdk/models/operations/requestbodyputstringwithparams'
require_relative 'sdk/models/operations/requestbodyreadandwrite'
require_relative 'sdk/models/operations/requestbodyreadonlyinput'
require_relative 'sdk/models/operations/requestbodyreadonlyunion'
require_relative 'sdk/models/operations/requestbodyreadwriteonlyunion'
require_relative 'sdk/models/operations/requestbodywriteonly'
require_relative 'sdk/models/operations/requestbodywriteonlyoutput'
require_relative 'sdk/models/operations/requestbodywriteonlyunion'
require_relative 'sdk/models/operations/responsebodybytesget'
require_relative 'sdk/models/operations/responsebodyemptywithheaders'
require_relative 'sdk/models/operations/responsebodyjsonget'
require_relative 'sdk/models/operations/responsebodyoptionalget'
require_relative 'sdk/models/operations/responsebodyreadonly'
require_relative 'sdk/models/operations/responsebodystringget'
require_relative 'sdk/models/operations/responsebodyxmlget'
require_relative 'sdk/models/operations/retriesget'
require_relative 'sdk/models/operations/selectglobalserver'
require_relative 'sdk/models/operations/selectserverwithid'
require_relative 'sdk/models/operations/serversbyidwithtemplates'
require_relative 'sdk/models/operations/serverwithprotocoltemplate'
require_relative 'sdk/models/operations/serverwithtemplates'
require_relative 'sdk/models/operations/serverwithtemplatesglobal'
require_relative 'sdk/models/operations/simplepathparameterarrays'
require_relative 'sdk/models/operations/simplepathparametermaps'
require_relative 'sdk/models/operations/simplepathparameterobjects'
require_relative 'sdk/models/operations/simplepathparameterprimitives'
require_relative 'sdk/models/operations/statusgeterror'
require_relative 'sdk/models/operations/statusgetxspeakeasyerrors'
require_relative 'sdk/models/operations/stronglytypedoneofpost'
require_relative 'sdk/models/operations/telemetryspeakeasyuseragentget'
require_relative 'sdk/models/operations/telemetryuseragentget'
require_relative 'sdk/models/operations/typedobjectoneofpost'
require_relative 'sdk/models/operations/typedparametergenerationget'
require_relative 'sdk/models/operations/updateresource'
require_relative 'sdk/models/operations/usageexamplepost'
require_relative 'sdk/models/operations/weaklytypedoneofpost'
require_relative 'sdk/sdkconfiguration'
require_relative 'sdk/auth'
require_relative 'sdk/authnew'
require_relative 'sdk/documentation'
require_relative 'sdk/errors'
require_relative 'sdk/first'
require_relative 'sdk/flattening'
require_relative 'sdk/generation'
require_relative 'sdk/globals'
require_relative 'sdk/nest_first'
require_relative 'sdk/nested'
require_relative 'sdk/nested_first'
require_relative 'sdk/nested_second'
require_relative 'sdk/pagination'
require_relative 'sdk/parameters'
require_relative 'sdk/requestbodies'
require_relative 'sdk/resource'
require_relative 'sdk/responsebodies'
require_relative 'sdk/retries'
require_relative 'sdk/second'
require_relative 'sdk/servers'
require_relative 'sdk/telemetry'
require_relative 'sdk/unions'

module OpenApiSDK
end
