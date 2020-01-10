<?php

namespace App\Tests;

use App\Entity\Client;
use App\Entity\Restaurant;
use Doctrine\ORM\EntityManager;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\BrowserKit;
use GuzzleHttp\Psr7\Request;

class RestaurantListApiTest extends WebTestCase
{
    protected $http;
    protected $acces_token;
    public function setUp()
    {
        $this->http = new \GuzzleHttp\Client(['base_uri' => 'http://localhost:8000']);
    }

    public function tearDown() {
        $this->http = null;
    }

    public function getAccessToken($client_id,$client_secret,$grant_type,$user,$password)
    {
        $curl = curl_init();

        curl_setopt_array($curl, array(
        CURLOPT_URL => "localhost:8000/oauth/v2/token",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "POST",
        CURLOPT_POSTFIELDS =>"{\n\t\"client_id\" : \"$client_id\",\n\t\"client_secret\" : \"$client_secret\",\n\t\"grant_type\" : \"$grant_type\",\n\t\"username\"\t: \"$user\",\n\t\"password\" : \"$password\"\n}",
        CURLOPT_HTTPHEADER => array(
            "Content-Type: application/json"
        ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        $value = json_decode($response);
        return $value;

    }

    public function testPOST()
    {

        $curl = curl_init();

        curl_setopt_array($curl, array(
        CURLOPT_URL => "localhost:8000/createClient",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "POST",
        CURLOPT_POSTFIELDS =>"{\n\t\"redirect-uri\":\"localhost:8000\",\n\t\"grant-type\":\"password\"\n}",
        CURLOPT_HTTPHEADER => array(
            "Content-Type: application/json"
        ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        $value = json_decode($response);
        $client_id = $value->client_id;
        $client_secret = $value->client_secret;
        $oauth_access_token = $this->getAccessToken($client_id,$client_secret,'password','test_user','123456');
        $access_token = $oauth_access_token->access_token;
        return $access_token;

    }

    public function testAllRestauratant()
    {
        $curl = curl_init();
        $url = "Authorization: Bearer ".$this->testPost();
        curl_setopt_array($curl, array(
        CURLOPT_URL => "http://localhost:8000/api/v1/restaurants?version=5.12.301&open_state=0&sort=desc&option=minimumorderamount&offset=1&limit=100",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => array(
            $url
        ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        
        $value = json_decode($response);
        $status =$value->status;
        $a = $this->assertEquals("200", $status);
        return $a;

    }

    public function testAllRestauratantNewVersion()
    {
        $curl = curl_init();
        $url = "Authorization: Bearer ".$this->testPost();
        curl_setopt_array($curl, array(
        CURLOPT_URL => "http://localhost:8000/api/v1/restaurants?version=5.12.300&open_state=0&sort=desc&option=minimumorderamount&offset=1&limit=100",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => array(
            $url
        ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        
        $value = json_decode($response);
        $status =$value->status;
        $a = $this->assertEquals("200", $status);
        return $a;

    }

    public function testRestaurantByName()
    {
        $curl = curl_init();
        $url = "Authorization: Bearer ".$this->testPost();
        curl_setopt_array($curl, array(
        CURLOPT_URL => "http://localhost:8000/api/v1/search?version=5.12.301&q=Shoarma%20Samara",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => array(
           $url
        ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        $value = json_decode($response);
        $status =$value->status;
        $a = $this->assertEquals("200", $status);
        return $a;
    }

    public function testRestaurantByNameNewVersion()
    {
        $curl = curl_init();
        $url = "Authorization: Bearer ".$this->testPost();
        curl_setopt_array($curl, array(
        CURLOPT_URL => "http://localhost:8000/api/v1/search?version=5.12.300&q=Shoarma%20Samara",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => array(
           $url
        ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        $value = json_decode($response);
        $status =$value->status;
        $a = $this->assertEquals("200", $status);
        return $a;
    }

    public function testOpenStatWithOptionNewest()
    {
        $curl = curl_init();
        $url = "Authorization: Bearer ".$this->testPost();
        curl_setopt_array($curl, array(
        CURLOPT_URL => "http://localhost:8000/api/v1/restaurants?version=5.12.301&open_state=1&sort=desc&option=newestscore&offset=1&limit=100",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => array(
            $url
        ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        $value = json_decode($response);
        $status =$value->status;
        $a = $this->assertEquals("200", $status);
        return $a;

    }
    public function testOpenStatWithOptionPopularity()
    {
        $curl = curl_init();
        $url = "Authorization: Bearer ".$this->testPost();
        curl_setopt_array($curl, array(
        CURLOPT_URL => "http://localhost:8000/api/v1/restaurants?version=5.12.301&open_state=1&sort=asc&option=popularity&offset=1&limit=100",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => array(
            $url
        ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        $value = json_decode($response);
        $status =$value->status;
        $a = $this->assertEquals("200", $status);
        return $a;

    }
    public function testOpenStatWithOptionBestMatch()
    {
        $curl = curl_init();
        $url = "Authorization: Bearer ".$this->testPost();
        curl_setopt_array($curl, array(
        CURLOPT_URL => "http://localhost:8000/api/v1/restaurants?version=5.12.301&open_state=1&sort=asc&option=bestmatch&offset=1&limit=100",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => array(
            $url
        ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        $value = json_decode($response);
        $status =$value->status;
        $a = $this->assertEquals("200", $status);
        return $a;

    }
}