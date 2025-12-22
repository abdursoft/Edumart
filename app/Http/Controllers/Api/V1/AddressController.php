<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AddressController extends Controller
{
    /**
     * Get division
     */
    public function division($id=null){
        if($id){
            return division($id);
        }
        return division();
    }

    /**
     * Get districts
     */
    public function district($id=null){
        if($id){
            return district($id);
        }
        return district();
    }


    /**
     * Get thana
     */
    public function thana($id=null){
        if($id){
            return thana($id);
        }
        return thana();
    }

    /**
     * Get union
     */
    public function union($id=null){
        if($id){
            return union($id);
        }
        return union();
    }
}
