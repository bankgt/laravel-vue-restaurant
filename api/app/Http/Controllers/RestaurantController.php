<?php
namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use App\Models\Restaurant;
use GoogleMaps\Facade\GoogleMapsFacade\GoogleMaps;

class RestaurantController extends BaseController
{
    private function mapAddress($restaurant)
    {
      $restaurant->address = Cache::rememberForever('restaurant-address-' . $restaurant->latlng, function () use ($restaurant) {
        $response = GoogleMaps::load('geocoding')
          ->setParamByKey('latlng', $restaurant->latlng)
          ->get('results.formatted_address');
        return $response['results'][0]['formatted_address'];
      });
      unset($restaurant->latlng);
      return $restaurant;
    }

    public function get(Request $request)
    {
      $search = $request->input('search');
      $restaurants = collect([]);
      if($search) {
        $restaurants = Restaurant::query()
          ->where('name', 'LIKE', "%{$search}%")
          ->orWhere('description', 'LIKE', "%{$search}%")
          ->get()
          ->map(function($item) {
            return $this->mapAddress($item);
          });
      }else{
        $restaurants = Cache::remember('users', 60 * 5, function () {
          return Restaurant::all()->map(function($item) {
            return $this->mapAddress($item);
          });
        });
      }

      return response()->json($restaurants, 200);
    }
}