select str, regexp_replace(str, '[aeiou]', '', 'ig') as res
from disemvowel