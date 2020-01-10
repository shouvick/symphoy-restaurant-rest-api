<?php
namespace App\Entity;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
/**
 * @ORM\Entity
 * @ORM\Table(name="restaurants")
 */
class Restaurant {
  /**
   * @ORM\Column(type="integer")
   * @ORM\Id
   * @ORM\GeneratedValue(strategy="AUTO")
   */
  public $id;
  /**
   * @ORM\Column(type="string", length=100, nullable=true)
   * @Assert\NotBlank()
   *
   */
  public $name;
  /**
   * @ORM\Column(type="string", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $branch;
   /**
   * @ORM\Column(type="string", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $phone;
  
     /**
   * @ORM\Column(type="string", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $email;

     /**
   * @ORM\Column(type="string", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $logo;
  
     /**
   * @ORM\Column(type="string", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $address;

     /**
   * @ORM\Column(type="string", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $housenumber;

     /**
   * @ORM\Column(type="string", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $postcode;

     /**
   * @ORM\Column(type="string", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $city;

     /**
   * @ORM\Column(type="decimal", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $latitude;

     /**
   * @ORM\Column(type="decimal", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $longitude;

     /**
   * @ORM\Column(type="string", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $url;
  
     /**
   * @ORM\Column(type="integer", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $open;
  
     /**
   * @ORM\Column(type="integer", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $bestmatch;

     /**
   * @ORM\Column(type="integer", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $newestscore;

     /**
   * @ORM\Column(type="integer", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $ratingaverage;

     /**
   * @ORM\Column(type="integer", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $popularity;

     /**
   * @ORM\Column(type="float", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $averageproductprice;
  
     /**
   * @ORM\Column(type="float", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $deliverycosts;

     /**
   * @ORM\Column(type="float", length=100, nullable=true)
   * @Assert\Blank()
   *
   */
  public $minimumorderamount;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}