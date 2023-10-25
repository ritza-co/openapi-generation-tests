
//------------------------------------------------------------------------------
// <auto-generated>
// This code was generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
//
// Changes to this file may cause incorrect behavior and will be lost when
// the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
#nullable enable
namespace SDK.Models.Shared
{
    using Newtonsoft.Json;
    using System;
    
    public enum ExampleResourceEnumStr
    {
        [JsonProperty("one")]
        One,
        [JsonProperty("two")]
        Two,
        [JsonProperty("three")]
        Three,
    }

    public static class ExampleResourceEnumStrExtension
    {
        public static string Value(this ExampleResourceEnumStr value)
        {
            return ((JsonPropertyAttribute)value.GetType().GetMember(value.ToString())[0].GetCustomAttributes(typeof(JsonPropertyAttribute), false)[0]).PropertyName ?? value.ToString();
        }

        public static ExampleResourceEnumStr ToEnum(this string value)
        {
            foreach(var field in typeof(ExampleResourceEnumStr).GetFields())
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

                    if (enumVal is ExampleResourceEnumStr)
                    {
                        return (ExampleResourceEnumStr)enumVal;
                    }
                }
            }

            throw new Exception($"Unknown value {value} for enum ExampleResourceEnumStr");
        }
    }
}