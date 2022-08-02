<?php
  
namespace App\Mail;
  
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
  
class sendemail extends Mailable
{
    use Queueable, SerializesModels;
  
    // public $details;
  
    // public function __construct($details)
    // {
    //     $this->details = $details;
    // }
  
    // public function build()
    // {
    //     return $this->subject('Mail from ItSolutionStuff.com')
    //                 ->view('email_template');
    // }

    public function index(){
        
        $details = [
            'title' => 'Mail from cartmycar2.com',
            'body' => 'This is for testing email using laravel..2'
        ];
       
    
        \Mail::to('nadeem@thetatech.org')->send(new \App\Mail\MyTestMail($details));
        dd("Email is Sent.");
    }
    

   
}