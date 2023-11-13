
//------------------------------------------------------------------------------
// <auto-generated>
// This code was generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
//
// Changes to this file may cause incorrect behavior and will be lost when
// the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
#nullable enable
namespace Openapi.Models.Shared
{
    using Newtonsoft.Json;
    using System;
    
    public enum ErrorType
    {
        [JsonProperty("not_found")]
        NotFound,
        [JsonProperty("invalid")]
        Invalid,
        [JsonProperty("internal")]
        Internal,
    }

    public static class ErrorTypeExtension
    {
        public static string Value(this ErrorType value)
        {
            return ((JsonPropertyAttribute)value.GetType().GetMember(value.ToString())[0].GetCustomAttributes(typeof(JsonPropertyAttribute), false)[0]).PropertyName ?? value.ToString();
        }

        public static ErrorType ToEnum(this string value)
        {
            foreach(var field in typeof(ErrorType).GetFields())
            {
                var attributes = field.GetCustomAttributes(typeof(JsonPropertyAttribute), false);
                if (attributes.Length == 0)
                {
                    continue;
                }

                var attribute = attributes[0] as JsonPropertyAttribute;
                if (attribute != null && attribute.PropertyName == value)
                {
                    var enumVal = field.GetValue(null);

                    if (enumVal is ErrorType)
                    {
                        return (ErrorType)enumVal;
                    }
                }
            }

            throw new Exception($"Unknown value {value} for enum ErrorType");
        }
    }
}