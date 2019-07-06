    
<?php
use PHPUnit\Framework\TestCase;

require "./functions.php";
require "./config.php";

class SampleTest extends TestCase
{
    public function testSiteName()
    {
        $value = config('name');
        $current = siteName();
        $this->expectOutputString($value);
    }

    public function testSiteVersion()
    {
        $value = config('version');
        $current = siteVersion();
        $this->expectOutputString($value);
    }

    public function testPhpVersion() 
    {
        $php_version = phpversion();
        $php_required_version = config('php_version');
        $this->assertContains($php_required_version, $php_version, 'Wrong PHP version');
    }
}
