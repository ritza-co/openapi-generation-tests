<?php

declare(strict_types=1);

namespace OpenAPI\OpenAPI\Tests;

//fwrite(STDERR, print_r($metadata, TRUE));

class CommonHelpers {
    public static function recordTest(string $id)
    {
        file_put_contents("test-php-record.txt", $id . "\n", FILE_APPEND | LOCK_EX);
    }

}