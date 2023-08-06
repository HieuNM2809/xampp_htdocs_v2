<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\ExportFile;
use App\Exports\ExportFileWithDataController;
use Maatwebsite\Excel\Facades\Excel;

class UsersController extends Controller
{
    public function export()
    {
        return Excel::download(new ExportFile, 'users.xlsx');
    }
    public function exportWithData()
    {
        $point = [
            [1, 2, 3],
            [2, 5, 9]
        ];
        $data = (object) array(
            'points' => $point,
        );
        $export = new ExportFileWithDataController([$data]);
        return Excel::download($export, 'abc.xlsx');
    }
}
