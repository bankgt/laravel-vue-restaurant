<?php
namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use App\Models\Restaurant;

class RestaurantController extends BaseController
{
    public function get(Request $request)
    {
      $search = $request->input('search');
      if($search) {
        $restaurants = Restaurant::query()
            ->where('name', 'LIKE', "%{$search}%")
            ->orWhere('description', 'LIKE', "%{$search}%")
            ->get();
      }else{
        $restaurants = Cache::remember('users', 60 * 5, function () {
          return Restaurant::all();
        });
      }
      return response()->json($restaurants, 200);
    }
}