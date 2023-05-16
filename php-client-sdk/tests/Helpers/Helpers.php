<?php

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Tests\Helpers;

//fwrite(STDERR, print_r($metadata, TRUE));

class Helpers
{
    public static function createSimpleObject(): \OpenAPI\OpenAPI\Models\Shared\SimpleObject
    {
        $object = new \OpenAPI\OpenAPI\Models\Shared\SimpleObject();
        $object->str = 'test';
        $object->bool = true;
        $object->int = 1;
        $object->int32 = 1;
        $object->int32Enum = \OpenAPI\OpenAPI\Models\Shared\SimpleObjectInt32EnumEnum::FIFTY_FIVE;
        $object->intEnum = \OpenAPI\OpenAPI\Models\Shared\SimpleObjectIntEnumEnum::Second;
        $object->num = 1.1;
        $object->float32 = 1.1;
        $object->enum = \OpenAPI\OpenAPI\Models\Shared\EnumEnum::ONE;
        $object->any = 'any';
        $object->date = new \DateTime('2020-01-01');
        $object->dateTime = \DateTime::createFromFormat('Y-m-d\TH:i:s.uP', '2020-01-01T00:00:00.000001Z');
        $object->boolOpt = true;
        $object->strOpt = 'testOptional';

        return $object;
    }

    public static function createDeepObject(): \OpenAPI\OpenAPI\Models\Shared\DeepObject
    {
        $simpleObj = Helpers::createSimpleObject();

        $deep = new \OpenAPI\OpenAPI\Models\Shared\DeepObject();
        $deep->any = $simpleObj;
        $deep->str = 'test';
        $deep->bool = true;
        $deep->int = 1;
        $deep->num = 1.1;
        $deep->obj = $simpleObj;
        $deep->arr = [$simpleObj, $simpleObj];
        $deep->map = ['key' => $simpleObj];

        return $deep;
    }

    public static function recordTest(string $id)
    {
        file_put_contents("test-php-record.txt", $id . "\n", FILE_APPEND | LOCK_EX);
    }
}
