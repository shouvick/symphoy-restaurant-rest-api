<?php
namespace App\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use FOS\RestBundle\Controller\FOSRestController;
use FOS\RestBundle\Controller\Annotations as Rest;
use FOS\RestBundle\View\View;
use FOS\RestBundle\Controller\Annotations\QueryParam;
use FOS\RestBundle\Request\ParamFetcherInterface;
use FOS\RestBundle\Controller\Annotations\RequestParam;
use FOS\RestBundle\Request\ParamFetcher;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use App\Entity\Restaurant;
use App\Form\RestaurantType;
use FOS\RestBundle\Controller\Annotations\Version;
use JMS\Serializer\SerializationContext;

/**
 * Restaurant controller.
 * @Route("/api/v1", name="api_")
 */
class RestaurantController extends FOSRestController
{

  public function versionWiseKeyChange($restaurants)
  {
        $change_name_key=[];
        $new_restaurants=[];
        foreach($restaurants as $key=>$value)
        {
          foreach($value as $key1=>$value1)
          {
              if($key1=='name')
              {
                  $change_name_key['restaurantname'] = $value1;
                  $keys = array_keys( (array)$value );
                  $index = array_search( $key1, $keys );
                  $pos = false === $index ? count( (array)$value ) : $index + 1;
                  $array_merge = array_merge( array_slice( (array)$value, 0, $pos ), $change_name_key, array_slice( (array)$value, $pos ) );
                  unset($array_merge['name']);
                  $new_restaurants[]= $array_merge;
              }
              
          }
          
        }
        return $new_restaurants;
  }

  public function versionWiseKeyChangeSingle($restaurants)
  {
    foreach($restaurants as $key=>$value)
      {
        if($key=='name')
          {
            $change_name_key['restaurantname'] = $value;
            $keys = array_keys( (array)$restaurants);
            $index = array_search( $key, $keys );
            $pos = false === $index ? count( (array)$restaurants ) : $index + 1;
            $array_merge = array_merge( array_slice( (array)$restaurants, 0, $pos ), $change_name_key, array_slice( (array)$restaurants, $pos ) );
            unset($array_merge['name']);
            $new_restaurants[]= $array_merge;
          }
              
      }
      return $new_restaurants;
  }
  /**
   * Lists all Restaurant.
   * @Rest\Get("/restaurants")
   * @QueryParam(name="offset")
   * @QueryParam(name="limit")
   * @QueryParam(name="sort")
   * @QueryParam(name="open_state")
   * @QueryParam(name="option")
   * @param ParamFetcher $paramFetcher
   * @return Response
   */
  public function getAllRestaurants(ParamFetcher $paramFetcher,$version)
  {
    
    $arr = [];
    $repository = $this->getDoctrine()->getRepository(Restaurant::class);
    $all_restaurants = $repository->findAll();
    $total_restaurants = count($all_restaurants);
    if(!empty($paramFetcher->get('option')))
    {
      $arr[$paramFetcher->get('option')] = $paramFetcher->get('sort');
      $restaurants = $repository->findBy(['open'=>$paramFetcher->get('open_state')],$arr,$paramFetcher->get('limit'),$paramFetcher->get('offset'));
    }
    else
    {
      $restaurants = $repository->findBy(['open'=>$paramFetcher->get('open_state')],$arr,$paramFetcher->get('limit'),$paramFetcher->get('offset'));
    }
    
    if(count($restaurants)>0)
    {
      if($version=='5.12.300')
      {
        $new_restaurants = $this->versionWiseKeyChange($restaurants);
        return $this->handleView($this->view(['status'=>'200','message'=>'found','data'=>['restaurants'=>$new_restaurants,'total_restaurant_count'=>$total_restaurants]]));
      }
      return $this->handleView($this->view(['status'=>'200','message'=>'found','data'=>['restaurants'=>$restaurants,'total_restaurant_count'=>$total_restaurants]]));
    }
    else
    {
      return $this->handleView($this->view(['status'=>'404','message'=>'not found','data'=>['restaurants'=>$restaurants,'total_restaurant_count'=>$total_restaurants]]));
    }
    
  }
  /**
   * Search Restaurant.
   * @Rest\Get("/search")
   * @QueryParam(name="q")
   * @param ParamFetcher $paramFetcher
   * @return Response
   */
  public function searchRestaurantByName(ParamFetcher $paramFetcher,$version)
  {

    $repository = $this->getDoctrine()->getRepository(Restaurant::class);
    $restaurants = $repository->findOneBy(['name'=>$paramFetcher->get('q')]);
   
    if(!is_null($restaurants))
    {
      if($version=='5.12.300')
      {
        $new_restaurants = $this->versionWiseKeyChangeSingle($restaurants);
        return $this->handleView($this->view(['status'=>'200','message'=>'found','data'=>['restaurants'=>$new_restaurants]]));
      }
      return $this->handleView($this->view(['status'=>'200','message'=>'found','data'=>['restaurants'=>$restaurants]]));
    }
    else
    {
      return $this->handleView($this->view(['status'=>'404','message'=>'not found','data'=>['restaurants'=>$restaurants]]));
    }
    
  }

 
}