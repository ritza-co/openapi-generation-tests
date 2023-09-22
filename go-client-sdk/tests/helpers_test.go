// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package tests

import (
	"encoding/json"
	"fmt"
	"log"
	"math/big"
	"net/url"
	"os"
	"regexp"
	"sort"
	"strings"
	"testing"
	"time"

	"openapi/pkg/models/shared"
	"openapi/pkg/types"

	"github.com/AlekSi/pointer"
	"github.com/stretchr/testify/require"
)

func createSimpleObject() shared.SimpleObject {
	return shared.SimpleObject{
		Str:        "test",
		Bool:       true,
		Int:        1,
		Int32:      1,
		IntEnum:    shared.SimpleObjectIntEnumSecond,
		Int32Enum:  shared.SimpleObjectInt32EnumFiftyFive,
		Num:        1.1,
		Float32:    1.1,
		Enum:       shared.EnumOne,
		Any:        "any",
		Date:       types.Date{time.Date(2020, 1, 1, 0, 0, 0, 0, time.UTC)},
		DateTime:   time.Date(2020, 1, 1, 0, 0, 0, 1, time.UTC),
		BoolOpt:    pointer.ToBool(true),
		StrOpt:     pointer.ToString("testOptional"),
		IntOptNull: nil,
		NumOptNull: nil,
		Bigint:     big.NewInt(8821239038968084),
		BigintStr:  types.MustNewBigIntFromString("1344719667586153181419716641724567886890850696275767987106294472017884974410332069524504824747437757"),
	}
}

func createSimpleObjectCamelCase() shared.SimpleObjectCamelCase {
	return shared.SimpleObjectCamelCase{
		StrVal:        "test",
		BoolVal:       true,
		IntVal:        1,
		Int32Val:      1,
		IntEnumVal:    shared.SimpleObjectCamelCaseIntEnumValSecond,
		Int32EnumVal:  shared.SimpleObjectCamelCaseInt32EnumValFiftyFive,
		NumVal:        1.1,
		Float32Val:    1.1,
		EnumVal:       shared.EnumOne,
		AnyVal:        "any",
		DateVal:       types.Date{time.Date(2020, 1, 1, 0, 0, 0, 0, time.UTC)},
		DateTimeVal:   time.Date(2020, 1, 1, 0, 0, 0, 1, time.UTC),
		BoolOptVal:    pointer.ToBool(true),
		StrOptVal:     pointer.ToString("testOptional"),
		IntOptNullVal: nil,
		NumOptNullVal: nil,
		BigintVal:     big.NewInt(8821239038968084),
		BigintStrVal:  types.MustNewBigIntFromString("1344719667586153181419716641724567886890850696275767987106294472017884974410332069524504824747437757"),
	}
}

func createDeepObject() shared.DeepObject {
	return shared.DeepObject{
		Any: shared.CreateDeepObjectAnySimpleObject(createSimpleObject()),
		Arr: []shared.SimpleObject{
			createSimpleObject(), createSimpleObject(),
		},
		Bool: true,
		Int:  1,
		Map: map[string]shared.SimpleObject{
			"key": createSimpleObject(),
		},
		Num: 1.1,
		Obj: createSimpleObject(),
		Str: "test",
	}
}

func createDeepObjectCamelCase() shared.DeepObjectCamelCase {
	return shared.DeepObjectCamelCase{
		AnyVal: shared.CreateDeepObjectCamelCaseAnyValSimpleObjectCamelCase(createSimpleObjectCamelCase()),
		ArrVal: []shared.SimpleObjectCamelCase{
			createSimpleObjectCamelCase(), createSimpleObjectCamelCase(),
		},
		BoolVal: true,
		IntVal:  1,
		MapVal: map[string]shared.SimpleObjectCamelCase{
			"key": createSimpleObjectCamelCase(),
		},
		NumVal: 1.1,
		ObjVal: createSimpleObjectCamelCase(),
		StrVal: "test",
	}
}

func sortSerializedMaps(input, regex string, delim string) string {
	input, _ = url.QueryUnescape(input)

	r := regexp.MustCompile(regex)

	return replaceAllStringSubmatchFunc(r, input, func(matches []string) string {
		result := matches[0]

		for i := 1; i < len(matches); i++ {
			match := matches[i]

			pairs := []string{}
			if strings.Contains(match, "=") {
				pairs = strings.Split(match, delim)

				sort.Slice(pairs, func(i, j int) bool {
					return strings.Split(pairs[i], "=")[0] < strings.Split(pairs[j], "=")[0]
				})
			} else {
				values := strings.Split(match, delim)

				pairs = make([]string, len(values)/2)
				for i := 0; i < len(values); i += 2 {
					pairs[i/2] = values[i] + delim + values[i+1]
				}

				sort.Slice(pairs, func(i, j int) bool {
					return strings.Split(pairs[i], delim)[0] < strings.Split(pairs[j], delim)[0]
				})
			}

			match = strings.Join(pairs, delim)

			result = strings.Replace(result, matches[i], match, 1)
		}

		return result
	})
}

func replaceAllStringSubmatchFunc(re *regexp.Regexp, str string, repl func([]string) string) string {
	result := ""
	lastIndex := 0

	for _, v := range re.FindAllSubmatchIndex([]byte(str), -1) {
		groups := []string{}
		for i := 0; i < len(v); i += 2 {
			if v[i] == -1 || v[i+1] == -1 {
				groups = append(groups, "")
			} else {
				groups = append(groups, str[v[i]:v[i+1]])
			}
		}

		result += str[lastIndex:v[0]] + repl(groups)
		lastIndex = v[1]
	}

	return result + str[lastIndex:]
}

func marshalJSON(t *testing.T, v interface{}) string {
	d, err := json.Marshal(v)
	require.NoError(t, err)
	return string(d)
}

func recordTest(id string) {
	f, err := os.OpenFile("test-go-record.txt", os.O_APPEND|os.O_WRONLY|os.O_CREATE, 0o600)
	if err != nil {
		log.Println(err)
	}
	defer f.Close()

	if _, err = f.WriteString(fmt.Sprintf("%s\n", id)); err != nil {
		log.Println(err)
	}
}
