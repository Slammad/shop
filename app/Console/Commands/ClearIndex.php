<?php
namespace App\Console\Commands;


use Illuminate\Console\Command;

class ClearIndex extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'scout:clear {model}';
    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Clear all data in search index, regardless of database';
    /**
     * Execute the console command.
     *
     * @return void
     */
   
}
