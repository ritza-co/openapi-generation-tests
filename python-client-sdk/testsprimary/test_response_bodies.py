"""Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT."""

import sdk.models.shared as shared
from sdk import SDK
from sdk.models.operations import *
from sdk.responsebodies import ResponseBodyOptionalGetAcceptEnum
from sdk.utils import *

from .common_helpers import *
from .helpers import *


def test_response_body_json_get():
    record_test('response-bodies-json-get')

    s = SDK()
    assert s is not None

    res = s.response_body_json_get()

    assert res is not None
    assert res.status_code == 200
    assert res.http_bin_simple_json_object is not None
    assert res.http_bin_simple_json_object.slideshow.author == 'Yours Truly'
    assert res.http_bin_simple_json_object.slideshow.date_ == 'date of publication'
    assert res.http_bin_simple_json_object.slideshow.title == 'Sample Slide Show'
    assert res.http_bin_simple_json_object.slideshow.slides[0].title == 'Wake up to WonderWidgets!'
    assert res.http_bin_simple_json_object.slideshow.slides[0].type == 'all'
    assert res.http_bin_simple_json_object.slideshow.slides[1].title == 'Overview'
    assert res.http_bin_simple_json_object.slideshow.slides[1].type == 'all'
    assert res.http_bin_simple_json_object.slideshow.slides[
        1].items[0] == 'Why <em>WonderWidgets</em> are great'
    assert res.http_bin_simple_json_object.slideshow.slides[
        1].items[1] == 'Who <em>buys</em> WonderWidgets'
    assert res.raw_response.text == "{\n  \"slideshow\": {\n    \"author\": \"Yours Truly\", \n    \"date\": \"date of publication\", \n    \"slides\": [\n      {\n        \"title\": \"Wake up to WonderWidgets!\", \n        \"type\": \"all\"\n      }, \n      {\n        \"items\": [\n          \"Why <em>WonderWidgets</em> are great\", \n          \"Who <em>buys</em> WonderWidgets\"\n        ], \n        \"title\": \"Overview\", \n        \"type\": \"all\"\n      }\n    ], \n    \"title\": \"Sample Slide Show\"\n  }\n}\n"


def test_response_body_string_get():
    record_test('response-bodies-string-get')

    s = SDK()
    assert s is not None

    res = s.response_bodies.response_body_string_get()

    assert res is not None
    assert res.status_code == 200
    assert res.html == b"<!DOCTYPE html>\n<html>\n  <head>\n  </head>\n  <body>\n      <h1>Herman Melville - Moby-Dick</h1>\n\n      <div>\n        <p>\n          Availing himself of the mild, summer-cool weather that now reigned in these latitudes, and in preparation for the peculiarly active pursuits shortly to be anticipated, Perth, the begrimed, blistered old blacksmith, had not removed his portable forge to the hold again, after concluding his contributory work for Ahab's leg, but still retained it on deck, fast lashed to ringbolts by the foremast; being now almost incessantly invoked by the headsmen, and harpooneers, and bowsmen to do some little job for them; altering, or repairing, or new shaping their various weapons and boat furniture. Often he would be surrounded by an eager circle, all waiting to be served; holding boat-spades, pike-heads, harpoons, and lances, and jealously watching his every sooty movement, as he toiled. Nevertheless, this old man's was a patient hammer wielded by a patient arm. No murmur, no impatience, no petulance did come from him. Silent, slow, and solemn; bowing over still further his chronically broken back, he toiled away, as if toil were life itself, and the heavy beating of his hammer the heavy beating of his heart. And so it was.\xe2\x80\x94Most miserable! A peculiar walk in this old man, a certain slight but painful appearing yawing in his gait, had at an early period of the voyage excited the curiosity of the mariners. And to the importunity of their persisted questionings he had finally given in; and so it came to pass that every one now knew the shameful story of his wretched fate. Belated, and not innocently, one bitter winter's midnight, on the road running between two country towns, the blacksmith half-stupidly felt the deadly numbness stealing over him, and sought refuge in a leaning, dilapidated barn. The issue was, the loss of the extremities of both feet. Out of this revelation, part by part, at last came out the four acts of the gladness, and the one long, and as yet uncatastrophied fifth act of the grief of his life's drama. He was an old man, who, at the age of nearly sixty, had postponedly encountered that thing in sorrow's technicals called ruin. He had been an artisan of famed excellence, and with plenty to do; owned a house and garden; embraced a youthful, daughter-like, loving wife, and three blithe, ruddy children; every Sunday went to a cheerful-looking church, planted in a grove. But one night, under cover of darkness, and further concealed in a most cunning disguisement, a desperate burglar slid into his happy home, and robbed them all of everything. And darker yet to tell, the blacksmith himself did ignorantly conduct this burglar into his family's heart. It was the Bottle Conjuror! Upon the opening of that fatal cork, forth flew the fiend, and shrivelled up his home. Now, for prudent, most wise, and economic reasons, the blacksmith's shop was in the basement of his dwelling, but with a separate entrance to it; so that always had the young and loving healthy wife listened with no unhappy nervousness, but with vigorous pleasure, to the stout ringing of her young-armed old husband's hammer; whose reverberations, muffled by passing through the floors and walls, came up to her, not unsweetly, in her nursery; and so, to stout Labor's iron lullaby, the blacksmith's infants were rocked to slumber. Oh, woe on woe! Oh, Death, why canst thou not sometimes be timely? Hadst thou taken this old blacksmith to thyself ere his full ruin came upon him, then had the young widow had a delicious grief, and her orphans a truly venerable, legendary sire to dream of in their after years; and all of them a care-killing competency.\n        </p>\n      </div>\n  </body>\n</html>"


def test_response_body_xml_get():
    record_test('response-bodies-xml-get')

    s = SDK()
    assert s is not None

    res = s.response_bodies.response_body_xml_get()

    assert res is not None
    assert res.status_code == 200
    assert res.xml == b'<?xml version=\'1.0\' encoding=\'us-ascii\'?>\n\n<!--  A SAMPLE set of slides  -->\n\n<slideshow \n    title="Sample Slide Show"\n    date="Date of publication"\n    author="Yours Truly"\n    >\n\n    <!-- TITLE SLIDE -->\n    <slide type="all">\n      <title>Wake up to WonderWidgets!</title>\n    </slide>\n\n    <!-- OVERVIEW -->\n    <slide type="all">\n        <title>Overview</title>\n        <item>Why <em>WonderWidgets</em> are great</item>\n        <item/>\n        <item>Who <em>buys</em> WonderWidgets</item>\n    </slide>\n\n</slideshow>'


def test_response_body_bytes_get():
    record_test('response-bodies-bytes-get')

    s = SDK()
    assert s is not None

    res = s.response_bodies.response_body_bytes_get()

    assert res is not None
    assert res.status_code == 200
    calculated_content = bytes().join(res.bytes.iter_content())
    assert len(calculated_content) == 100


def test_response_body_read_only():
    record_test('response-bodies-read-only')

    s = SDK()
    assert s is not None

    res = s.response_bodies.response_body_read_only()

    assert res is not None
    assert res.status_code == 200
    assert res.read_only_object is not None
    assert res.read_only_object.bool == True
    assert res.read_only_object.num == 1.0
    assert res.read_only_object.string == 'hello'


def test_response_body_override_accept_header():
    record_test('response-bodies-override-accept-header')

    s = SDK()
    assert s is not None

    res = s.response_bodies.response_body_optional_get(
        accept_header_override=ResponseBodyOptionalGetAcceptEnum.TEXT_PLAIN
    )

    assert res is not None
    assert res.status_code == 200
    assert "text/plain" in res.content_type
    assert res.response_body_optional_get_200_text_plain_string.decode(
        "utf-8") == "Success"


def test_response_body_default_accept_header():
    record_test('response-bodies-default-accept-header')

    s = SDK()
    assert s is not None

    res = s.response_bodies.response_body_optional_get()

    assert res is not None
    assert res.status_code == 200
    assert "application/json" in res.content_type
    assert type(res.typed_object1) == shared.TypedObject1


def test_response_body_additional_properties():
    record_test('response-bodies-additional-properties')

    s = SDK()
    assert s is not None

    dic = {'normal_field': "string"}
    req = shared.ObjWithStringAdditionalProperties.from_dict(dic)
    assert req.additional_properties == None
    res = s.response_bodies.response_body_additional_properties_post(req)
    assert res is not None
    assert res.status_code == 200
    assert res.response_body_additional_properties_post_200_application_json_object.json == req

    dic = {
        'normal_field': "string",
        'additional_properties': {
            'extra1': "value1",
            'extra2': 2,
            'extra3': None
        }
    }
    req = shared.ObjWithStringAdditionalProperties.from_dict(dic)
    assert req.additional_properties == {'extra1': "value1", 'extra2': 2, 'extra3': None}
    res = s.response_bodies.response_body_additional_properties_post(req)
    assert res is not None
    assert res.status_code == 200
    assert res.response_body_additional_properties_post_200_application_json_object.json == req


def test_response_body_additional_properties_date():
    record_test('response-bodies-additional-properties-date')

    s = SDK()
    assert s is not None

    dic = {
        'normal_field': "string",
        'additional_properties': {}
    }
    req = shared.ObjWithDateAdditionalProperties.from_dict(dic)
    assert req.additional_properties == {}
    res = s.response_bodies.response_body_additional_properties_date_post(req)
    assert res.response_body_additional_properties_date_post_200_application_json_object.json == req

    today = date.today()
    dic = {
        'normal_field': "string",
        'additional_properties': {
            'today': today.isoformat()
        }
    }
    req = shared.ObjWithDateAdditionalProperties.from_dict(dic)
    assert req.additional_properties ==  {'today': today}
    assert type(req.additional_properties['today']) == date
    res = s.response_bodies.response_body_additional_properties_date_post(req)
    assert res is not None
    assert res.status_code == 200
    assert res.response_body_additional_properties_date_post_200_application_json_object.json == req


def test_response_body_additional_properties_complex_numbers():
    record_test('response-bodies-additional-properties-complex-numbers')

    s = SDK()
    assert s is not None

    dic = {
        'normal_field': "string",
        'additional_properties': {
            'bigint': "123456789012345678901234567890"
        }
    }
    req = shared.ObjWithComplexNumbersAdditionalProperties.from_dict(dic)
    assert req.additional_properties['bigint'] == 123456789012345678901234567890
    assert type(req.additional_properties['bigint']) == int
    res = s.response_bodies.response_body_additional_properties_complex_numbers_post(req)
    assert res is not None
    assert res.status_code == 200
    assert res.response_body_additional_properties_complex_numbers_post_200_application_json_object.json == req


def test_response_body_additional_properties_object():
    record_test('response-bodies-additional-properties-object')

    s = SDK()
    assert s is not None

    obj = create_simple_object()
    req = shared.ObjWithObjAdditionalProperties(
        datetime_=datetime.now(),
        additional_properties=[1, 2, 3],
        additional_properties_t={
            'obj1': obj
            }
    )

    res = s.response_bodies.response_body_additional_properties_object_post(req)
    assert res is not None
    assert res.status_code == 200
    json = res.response_body_additional_properties_object_post_200_application_json_object.json
    assert json == req
    assert type(json.datetime_) == datetime
    obj1 = json.additional_properties_t['obj1']
    assert type(obj1) == shared.SimpleObject
    compare_simple_object(obj1, obj)

