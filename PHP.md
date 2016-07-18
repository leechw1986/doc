API
===================

# Cache

### memcache
    $memcache = \CCacheManager_Memcached::GetInstance();
    $return[$key]['cn'] = $memcache->smart_get_entry($key, $timeout, array(
    $this->product,
      'getCategoryNameById'
    ) , array(
      $c[0]
    ));

### file log
    file_put_contents("/home/jm/logs/search_excption.log", $e->getMessage(), FILE_APPEND);

### string togger
    
