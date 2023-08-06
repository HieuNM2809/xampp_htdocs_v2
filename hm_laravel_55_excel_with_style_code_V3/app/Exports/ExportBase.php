<?php

namespace App\Exports;


trait ExportBase
{
    public function headingsCustom(): array
    {
        $headings = [
            ['a', 'b', 'c'], // heading dòng 1
            ['b'], // heading dòng 2
            ['c'] // heading dòng 3
        ];
        return $headings;
    }
}
