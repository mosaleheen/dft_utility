!********************************************************************************************************!      
!												                                 												                         !
!		  	   	Purpose: Calculate energy correlation coefficient from MD simulation energies		     			   !
!            Author: Mohammad Shamsus Saleheen, Department of Chemical Engineering, USC                  !
!	       	     Date: 06.18.17							                                 						                   !
!   	 Modification:							                                         						                   !                                                                             !
!             Notes: 																							                                       !
!                                   																							                       !
!********************************************************************************************************!


program correlationdriver
implicit none
   integer, parameter    :: dp = selected_real_kind(15,307)
   integer	             :: ierror
   integer               :: nline
   real(dp)		           :: corr_coeff
   integer               :: time, timeunit
   integer               :: lag
   integer               :: interval 
   character(50)	 	     :: Ifile = 'MMS_ENERGY'
   character(50)	 	     :: Ofile = 'Energy_Correlation'
   timeunit = 50
   interval = 100
   call countline(Ifile, nline)
   OPEN (UNIT = 20, file = Ofile, access = 'sequential', &
         status = 'replace', action = 'write', position = 'append', &
         iostat = ierror )
   write(20, 500)
   500 format (2X, "Timelag", 11X, "Correlation Coefficient")
   write(20,510)
   510 format (2X,"========", 10X, "=======================")
   
   do lag = 0, interval, 1         
	   time     = lag * timeunit
	   call calculatecorrelation (Ifile, nline, lag, corr_coeff)
	   write(20,520) time, corr_coeff
     520 format (3X, I5, 10X, F20.13)
   end do
      
end program correlationdriver


!****************************************************************************************
!	                   Procedure for counting lines of a file 							              !
!****************************************************************************************
    
  subroutine countline (filename, nline)			        				
  implicit none  
  character(20), intent(in) 	:: filename
  integer,       intent(out)	:: nline
  integer	                    :: ierror
	
  nline=0
  OPEN(UNIT = 10, file = filename, status = 'old',&
       action = 'read', iostat = ierror)
       do
         read(10, *, iostat = ierror)
         if (ierror /= 0) exit
         nline = nline + 1
       end do
  CLOSE(UNIT = 10)
    
  end subroutine

!****************************************************************************************
!        Procedure for reading conformation energies and calculating average 		        !
!****************************************************************************************
        
  subroutine calculatecorrelation (filename, Narr, lag, coeff)
  implicit none	
  integer, parameter    		  :: dp = selected_real_kind(15,307)
  character(20), intent(in) 	:: filename
  integer,       intent(in) 	:: Narr
  integer,       intent(in) 	:: lag  
  real(dp), 	 intent(out)    :: coeff
  real(dp)      			        :: wf(Narr)
  real(dp)	 					        :: sumw, wavg, wavgsq
  real(dp)		        		    :: wfsqr, sumsqw, wsqavg
  real(dp)		                :: pair, sum_pair, avg_pair
  integer						          :: counter
  integer		                  :: i, j, ierror

  sumw     = 0.0
  sumsqw   = 0.0
  sum_pair = 0.0  
  counter  = 0
  OPEN(Unit = 10, file = filename, status = 'old', &
       action = 'read', iostat = ierror)

          do i = 1, Narr
          read(10, *, iostat = ierror) wf(i)
          if  (ierror /= 0) exit
		  sumw   = sumw + wf(i)
		  wfsqr  = wf(i) ** 2
		  sumsqw = sumsqw + wfsqr
          end do
		 
		  wavg = sumw / REAL(Narr)
		  wavgsq = wavg ** 2
		  wsqavg = sumsqw / REAL (Narr)
          
		  do j = 1, Narr
		     if ( (j+lag)> Narr ) exit
			 pair = (wf(j) - wavg)* (wf(j+lag) - wavg)
			 sum_pair = sum_pair + pair
			 counter = counter + 1
		  end do
		  avg_pair = sum_pair / counter
		  coeff = avg_pair / (wsqavg-wavgsq)
  CLOSE(UNIT = 10)		  
 end subroutine		
