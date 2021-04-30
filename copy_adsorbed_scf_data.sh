#!/bin/bash -x

dir_ads='/work/saleheen/02_guaiacol_hdo/02-Pt-111/00-VaporPhase/01-AdsorbedSpecies'
dir_thermo='/work/saleheen/02_guaiacol_hdo/02-Pt-111/00-VaporPhase/04-SurfaceReactions/01-Thermodynamics'

cp $dir_ads/01-C6H4-OH-CH3_gua/SCF-Data			$dir_thermo/Rxn-02/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-02/reac-2
cp $dir_ads/02-C6H4Hb-OH-OCH3/SCF-Data          $dir_thermo/Rxn-02/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-02/prod-2

cp $dir_ads/01-C6H4-OH-CH3_gua/SCF-Data			$dir_thermo/Rxn-03/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-03/reac-2
cp $dir_ads/03-C6H4Ha-OH-OCH3/SCF-Data          $dir_thermo/Rxn-03/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-03/prod-2

cp $dir_ads/01-C6H4-OH-CH3_gua/SCF-Data			$dir_thermo/Rxn-04/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-04/reac-2
cp $dir_ads/04-C6H4-OCH3/SCF-Data               $dir_thermo/Rxn-04/prod-1
cp $dir_ads/28-OH/SCF-Data                      $dir_thermo/Rxn-04/prod-2

cp $dir_ads/01-C6H4-OH-CH3_gua/SCF-Data			$dir_thermo/Rxn-05/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-05/reac-2
cp $dir_ads/05-C6H4-OH/SCF-Data                 $dir_thermo/Rxn-05/prod-1
cp $dir_ads/37-CH3O/SCF-Data                    $dir_thermo/Rxn-05/prod-2

cp $dir_ads/01-C6H4-OH-CH3_gua/SCF-Data			$dir_thermo/Rxn-06/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-06/reac-2
cp $dir_ads/06-C6H4-OH-OCH2/SCF-Data            $dir_thermo/Rxn-06/prod-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-06/prod-2

cp $dir_ads/01-C6H4-OH-CH3_gua/SCF-Data			$dir_thermo/Rxn-07/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-07/reac-2
cp $dir_ads/07-C6H4-OH-O/SCF-Data               $dir_thermo/Rxn-07/prod-1
cp $dir_ads/32-CH3/SCF-Data                     $dir_thermo/Rxn-07/prod-2

cp $dir_ads/01-C6H4-OH-CH3_gua/SCF-Data			$dir_thermo/Rxn-08/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-08/reac-2
cp $dir_ads/08-C6H4-O-OCH3/SCF-Data             $dir_thermo/Rxn-08/prod-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-08/prod-2

cp $dir_ads/02-C6H4Hb-OH-OCH3/SCF-Data          $dir_thermo/Rxn-09/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-09/reac-2
cp $dir_ads/09-C6H4Hb-OH-OCH2/SCF-Data          $dir_thermo/Rxn-09/prod-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-09/prod-2

cp $dir_ads/02-C6H4Hb-OH-OCH3/SCF-Data          $dir_thermo/Rxn-10/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-10/reac-2
cp $dir_ads/20-C6H5OH_phenol/SCF-Data           $dir_thermo/Rxn-10/prod-1
cp $dir_ads/37-CH3O/SCF-Data                    $dir_thermo/Rxn-10/prod-2

cp $dir_ads/03-C6H4Ha-OH-OCH3/SCF-Data          $dir_thermo/Rxn-11/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-11/reac-2
cp $dir_ads/10-C6H5-OCH3_anisole/SCF-Data       $dir_thermo/Rxn-11/prod-1
cp $dir_ads/28-OH/SCF-Data                      $dir_thermo/Rxn-11/prod-2


cp $dir_ads/04-C6H4-OCH3/SCF-Data               $dir_thermo/Rxn-12/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-12/reac-2
cp $dir_ads/10-C6H5-OCH3_anisole/SCF-Data       $dir_thermo/Rxn-12/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-12/prod-2


cp $dir_ads/05-C6H4-OH/SCF-Data                 $dir_thermo/Rxn-13/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-13/reac-2
cp $dir_ads/20-C6H5OH_phenol/SCF-Data           $dir_thermo/Rxn-13/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-13/prod-2


cp $dir_ads/06-C6H4-OH-OCH2/SCF-Data            $dir_thermo/Rxn-14/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-14/reac-2
cp $dir_ads/05-C6H4-OH/SCF-Data                 $dir_thermo/Rxn-14/prod-1
cp $dir_ads/36-CH2O/SCF-Data                    $dir_thermo/Rxn-14/prod-2

cp $dir_ads/06-C6H4-OH-OCH2/SCF-Data            $dir_thermo/Rxn-15/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-15/reac-2
cp $dir_ads/15-C6H4-O-OCH2/SCF-Data             $dir_thermo/Rxn-15/prod-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-15/prod-2


cp $dir_ads/06-C6H4-OH-OCH2/SCF-Data            $dir_thermo/Rxn-16/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-16/reac-2
cp $dir_ads/11-C6H4-OH-OCH/SCF-Data             $dir_thermo/Rxn-16/prod-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-16/prod-2


cp $dir_ads/06-C6H4-OH-OCH2/SCF-Data            $dir_thermo/Rxn-17/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-17/reac-2
cp $dir_ads/07-C6H4-OH-O/SCF-Data               $dir_thermo/Rxn-17/prod-1
cp $dir_ads/31-CH2/SCF-Data                     $dir_thermo/Rxn-17/prod-2

cp $dir_ads/07-C6H4-OH-O/SCF-Data               $dir_thermo/Rxn-18/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-18/reac-2
cp $dir_ads/13-C6H4-OH-OH_catechol/SCF-Data     $dir_thermo/Rxn-18/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-18/prod-2

cp $dir_ads/07-C6H4-OH-O/SCF-Data               $dir_thermo/Rxn-19/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-19/reac-2
cp $dir_ads/26-C6H4Ha-OH-O/SCF-Data             $dir_thermo/Rxn-19/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-19/prod-2

cp $dir_ads/07-C6H4-OH-O/SCF-Data               $dir_thermo/Rxn-20/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-20/reac-2
cp $dir_ads/14-C6H4O/SCF-Data                   $dir_thermo/Rxn-20/prod-1
cp $dir_ads/28-OH/SCF-Data                      $dir_thermo/Rxn-20/prod-2

cp $dir_ads/08-C6H4-O-OCH3/SCF-Data             $dir_thermo/Rxn-21/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-21/reac-2
cp $dir_ads/14-C6H4O/SCF-Data                   $dir_thermo/Rxn-21/prod-1
cp $dir_ads/37-CH3O/SCF-Data                    $dir_thermo/Rxn-21/prod-2

cp $dir_ads/08-C6H4-O-OCH3/SCF-Data             $dir_thermo/Rxn-22/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-22/reac-2
cp $dir_ads/15-C6H4-O-OCH2/SCF-Data             $dir_thermo/Rxn-22/prod-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-22/prod-2

cp $dir_ads/09-C6H4Hb-OH-OCH2/SCF-Data          $dir_thermo/Rxn-23/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-23/reac-2
cp $dir_ads/40-C6H4Hb-OH-O/SCF-Data				$dir_thermo/Rxn-23/prod-1
cp $dir_ads/31-CH2/SCF-Data                     $dir_thermo/Rxn-23/prod-2


cp $dir_ads/10-C6H5-OCH3_anisole/SCF-Data       $dir_thermo/Rxn-24/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-24/reac-2
cp $dir_ads/18-C6H5-OCH2/SCF-Data               $dir_thermo/Rxn-24/prod-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-24/prod-2

cp $dir_ads/11-C6H4-OH-OCH/SCF-Data             $dir_thermo/Rxn-25/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-25/reac-2
cp $dir_ads/12-C6H4-OH-OC/SCF-Data              $dir_thermo/Rxn-25/prod-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-25/prod-2



cp $dir_ads/11-C6H4-OH-OCH/SCF-Data             $dir_thermo/Rxn-26/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-26/reac-2
cp $dir_ads/05-C6H4-OH/SCF-Data                 $dir_thermo/Rxn-26/prod-1
cp $dir_ads/35-CHO/SCF-Data                     $dir_thermo/Rxn-26/prod-2


cp $dir_ads/11-C6H4-OH-OCH/SCF-Data             $dir_thermo/Rxn-27/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-27/reac-2
cp $dir_ads/07-C6H4-OH-O/SCF-Data               $dir_thermo/Rxn-27/prod-1
cp $dir_ads/30-CH/SCF-Data                      $dir_thermo/Rxn-27/prod-2


cp $dir_ads/13-C6H4-OH-OH_catechol/SCF-Data     $dir_thermo/Rxn-28/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-28/reac-2
cp $dir_ads/05-C6H4-OH/SCF-Data                 $dir_thermo/Rxn-28/prod-1
cp $dir_ads/28-OH/SCF-Data                      $dir_thermo/Rxn-28/prod-2


cp $dir_ads/13-C6H4-OH-OH_catechol/SCF-Data     $dir_thermo/Rxn-29/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-29/reac-2
cp $dir_ads/21-C6H5-OH-OH/SCF-Data              $dir_thermo/Rxn-29/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-29/prod-2

cp $dir_ads/26-C6H4Ha-OH-O/SCF-Data             $dir_thermo/Rxn-30/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-30/reac-2
cp $dir_ads/19-C6H5O_phenoxy/SCF-Data           $dir_thermo/Rxn-30/prod-1
cp $dir_ads/28-OH/SCF-Data                      $dir_thermo/Rxn-30/prod-2

cp $dir_ads/14-C6H4O/SCF-Data                   $dir_thermo/Rxn-31/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-31/reac-2
cp $dir_ads/19-C6H5O_phenoxy/SCF-Data           $dir_thermo/Rxn-31/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-31/prod-2

cp $dir_ads/15-C6H4-O-OCH2/SCF-Data             $dir_thermo/Rxn-32/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-32/reac-2
cp $dir_ads/14-C6H4O/SCF-Data                   $dir_thermo/Rxn-32/prod-1
cp $dir_ads/36-CH2O/SCF-Data                    $dir_thermo/Rxn-32/prod-2

cp $dir_ads/15-C6H4-O-OCH2/SCF-Data             $dir_thermo/Rxn-33/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-33/reac-2
cp $dir_ads/22-C6H4O2/SCF-Data                  $dir_thermo/Rxn-33/prod-1
cp $dir_ads/31-CH2/SCF-Data                     $dir_thermo/Rxn-33/prod-2

cp $dir_ads/15-C6H4-O-OCH2/SCF-Data             $dir_thermo/Rxn-34/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-34/reac-2
cp $dir_ads/16-C6H4-O-OCH/SCF-Data              $dir_thermo/Rxn-34/prod-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-34/prod-2

cp $dir_ads/16-C6H4-O-OCH/SCF-Data              $dir_thermo/Rxn-35/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-35/reac-2
cp $dir_ads/22-C6H4O2/SCF-Data                  $dir_thermo/Rxn-35/prod-1
cp $dir_ads/30-CH/SCF-Data                      $dir_thermo/Rxn-35/prod-2

cp $dir_ads/16-C6H4-O-OCH/SCF-Data              $dir_thermo/Rxn-36/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-36/reac-2
cp $dir_ads/17-C6H4-O-OC/SCF-Data               $dir_thermo/Rxn-36/prod-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-36/prod-2


cp $dir_ads/40-C6H4Hb-OH-O/SCF-Data				$dir_thermo/Rxn-37/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-37/reac-2
cp $dir_ads/21-C6H5-OH-OH/SCF-Data              $dir_thermo/Rxn-37/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-37/prod-2


cp $dir_ads/18-C6H5-OCH2/SCF-Data               $dir_thermo/Rxn-38/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-38/reac-2
cp $dir_ads/19-C6H5O_phenoxy/SCF-Data           $dir_thermo/Rxn-38/prod-1
cp $dir_ads/31-CH2/SCF-Data                     $dir_thermo/Rxn-38/prod-2

cp $dir_ads/19-C6H5O_phenoxy/SCF-Data           $dir_thermo/Rxn-39/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-39/reac-2
cp $dir_ads/20-C6H5OH_phenol/SCF-Data           $dir_thermo/Rxn-39/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-39/prod-2


cp $dir_ads/12-C6H4-OH-OC/SCF-Data              $dir_thermo/Rxn-40/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-40/reac-2
cp $dir_ads/05-C6H4-OH/SCF-Data                 $dir_thermo/Rxn-40/prod-1
cp $dir_ads/34-CO/SCF-Data                      $dir_thermo/Rxn-40/prod-2


cp $dir_ads/21-C6H5-OH-OH/SCF-Data              $dir_thermo/Rxn-41/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-41/reac-2
cp $dir_ads/20-C6H5OH_phenol/SCF-Data           $dir_thermo/Rxn-41/prod-1
cp $dir_ads/28-OH/SCF-Data                      $dir_thermo/Rxn-41/prod-2


cp $dir_ads/22-C6H4O2/SCF-Data                  $dir_thermo/Rxn-42/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-42/reac-2
cp $dir_ads/07-C6H4-OH-O/SCF-Data               $dir_thermo/Rxn-42/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-42/prod-2

cp $dir_ads/17-C6H4-O-OC/SCF-Data               $dir_thermo/Rxn-43/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-43/reac-2
cp $dir_ads/14-C6H4O/SCF-Data                   $dir_thermo/Rxn-43/prod-1
cp $dir_ads/34-CO/SCF-Data                      $dir_thermo/Rxn-43/prod-2


cp $dir_ads/20-C6H5OH_phenol/SCF-Data           $dir_thermo/Rxn-44/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-44/reac-2
cp $dir_ads/23-C6H5/SCF-Data                    $dir_thermo/Rxn-44/prod-1
cp $dir_ads/28-OH/SCF-Data                      $dir_thermo/Rxn-44/prod-2

cp $dir_ads/20-C6H5OH_phenol/SCF-Data           $dir_thermo/Rxn-45/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-45/reac-2
cp $dir_ads/24-C6H6OH/SCF-Data                  $dir_thermo/Rxn-45/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-45/prod-2

cp $dir_ads/23-C6H5/SCF-Data                    $dir_thermo/Rxn-46/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-46/reac-2
cp $dir_ads/25-C6H6_benzene/SCF-Data            $dir_thermo/Rxn-46/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-46/prod-2


cp $dir_ads/24-C6H6OH/SCF-Data                  $dir_thermo/Rxn-47/reac-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-47/reac-2
cp $dir_ads/25-C6H6_benzene/SCF-Data            $dir_thermo/Rxn-47/prod-1
cp $dir_ads/28-OH/SCF-Data                      $dir_thermo/Rxn-47/prod-2


cp $dir_ads/30-CH/SCF-Data                      $dir_thermo/Rxn-48/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-48/reac-2
cp $dir_ads/31-CH2/SCF-Data                     $dir_thermo/Rxn-48/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-48/prod-2

cp $dir_ads/31-CH2/SCF-Data                     $dir_thermo/Rxn-49/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-49/reac-2
cp $dir_ads/32-CH3/SCF-Data                     $dir_thermo/Rxn-49/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-49/prod-2


cp $dir_ads/32-CH3/SCF-Data                     $dir_thermo/Rxn-50/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-50/reac-2
cp $dir_ads/33-CH4/SCF-Data                     $dir_thermo/Rxn-50/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-50/prod-2

cp $dir_ads/35-CHO/SCF-Data                     $dir_thermo/Rxn-51/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-51/reac-2
cp $dir_ads/36-CH2O/SCF-Data                    $dir_thermo/Rxn-51/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-51/prod-2

cp $dir_ads/36-CH2O/SCF-Data                    $dir_thermo/Rxn-52/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-52/reac-2
cp $dir_ads/37-CH3O/SCF-Data                    $dir_thermo/Rxn-52/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-52/prod-2

cp $dir_ads/37-CH3O/SCF-Data                    $dir_thermo/Rxn-53/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-53/reac-2
cp $dir_ads/38-CH3OH/SCF-Data                   $dir_thermo/Rxn-53/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-53/prod-2


cp $dir_ads/28-OH/SCF-Data                      $dir_thermo/Rxn-54/reac-1
cp $dir_ads/27-H/SCF-Data                       $dir_thermo/Rxn-54/reac-2
cp $dir_ads/29-H2O/SCF-Data                     $dir_thermo/Rxn-54/prod-1
cp $dir_ads/39-CleanSurface/SCF-Data            $dir_thermo/Rxn-54/prod-2

