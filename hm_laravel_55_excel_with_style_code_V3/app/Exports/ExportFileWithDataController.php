<?php

namespace App\Exports;

use App\Models\User;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithStyles;
use Maatwebsite\Excel\Concerns\WithEvents;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use Maatwebsite\Excel\Concerns\RegistersEventListeners;
use Maatwebsite\Excel\Events\AfterSheet;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use App\Exports\ExportBase;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Color;

class ExportFileWithDataController implements FromArray, WithHeadings, WithStyles, WithEvents, ShouldAutoSize
{
    use RegistersEventListeners;
    use ExportBase;
    /**
    * @return \Illuminate\Support\Collection
    */
    public $points;

    public function __construct(array $points)
    {
        $this->points = $points;
    }
    public function headings(): array
    {
//        $headings = [
//            ['a', 'b', 'c'], // heading dòng 1
//            ['b'], // heading dòng 2
//            ['c'] // heading dòng 3
//        ];
//        return $headings;

        return $this->headingsCustom();
    }
    public function styles(Worksheet $sheet)
    {
        $sheet->mergeCells('A1:B1');
        $sheet->mergeCells('A2:B2');
        $sheet->mergeCells('A3:B3');
        $sheet->mergeCells('A4:B4');
        $sheet->mergeCells('A5:B5');
        $sheet->mergeCells('A6:B6');
        $sheet->mergeCells('C1:D1');
        $sheet->mergeCells('C2:D2');
        $sheet->mergeCells('C3:D3');
        $sheet->mergeCells('C4:D4');
        $sheet->mergeCells('C5:D5');
        $sheet->mergeCells('C6:D6');
        $sheet->mergeCells('A7:D7');

        $sheet->setCellValue('C1', 'Xin chao');
        $sheet->setCellValue('C2', 'Xin chao');
        $sheet->setCellValue('C3', 'Xin chao');
        $sheet->setCellValue('C4', 'Xin chao');
        $sheet->setCellValue('C5', 'Xin chao');
        $sheet->setCellValue('C6', 'Xin chao');

        foreach (range(1, 7) as $number) {
            $sheet->getStyle('C' . $number)->getAlignment()->applyFromArray(
                array('horizontal' => 'left')
            );
        }
    }
    public function registerEvents(): array
    {
        return [
            AfterSheet::class => function (AfterSheet $event) {
                $cellRange = 'A8:W8';
                $event->sheet->getDelegate()
                    ->getStyle($cellRange)
                    ->getFont()
                    ->setSize(13)
                    ->getColor()->setRGB('2879bf');
                // Set the background color to red
                $event->sheet->getDelegate()
                    ->getStyle($cellRange)
                    ->getFill()
                    ->setFillType(Fill::FILL_SOLID)
                    ->getStartColor()
                    ->setRGB('FF0000');

                // Set the border color to yellow and the width to 5 pixels
                $event->sheet->getDelegate()
                    ->getStyle($cellRange)
                    ->getBorders()
                    ->getAllBorders()
                    ->setBorderStyle(Border::BORDER_THIN)
                    ->getColor()
                    ->setRGB('FFFF00');
            }
        ];
    }

    public function array(): array
    {
        return $this->points[0]->points;
    }
}
