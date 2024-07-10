WITH 
###SSP Malaysia - Coffee Bean Tea Leaf - Kiosk
cbtlMYKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '931397515935744' as groupId, 
    '823516893966336' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435046823.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Malaysia - Burger King - Kiosk
bkMyKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '931397515935744' as groupId, 
    '932427557306368' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_434979638.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Malaysia - Hard Rock Cafe - Kiosk
hrMYKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '931397515935744' as groupId, 
    '738302850740224' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435237362.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Malaysia - Taco Bell - Kiosk
tbMYKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '931397515935744' as groupId, 
    '629385272659968' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_433662816.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Malaysia - Old Town White Cofee - Kiosk
otwcMYKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '931397515935744' as groupId, 
    '932251794997248' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435056213.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Malaysia - Jollibee - Kiosk
jbMYKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '931397515935744' as groupId, 
    '690454105026560' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435197362.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Malaysia - Jamie Oliver - Mobile
joMYMobilerawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '931397515935744' as groupId, 
    '570087514542080' as brandId, 
    user_id as userId, 
    "mobile" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435225752.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Thailand - IMM Rice and Noodle - Mobile
immRiceTHMobilerawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '70000' as groupId, 
    '894567709859840' as brandId, 
    user_id as userId, 
    "mobile" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435209204.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Australia - Red Rooster - Kiosk
rrAUKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '297810002' as groupId, 
    '2311475320' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435194137.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Australia - Chicken Treat - Kiosk
ctAUKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '297810002' as groupId, 
    '603897379606528' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435217275.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Australia - Motto Motto - Kiosk
mmAUKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '297810002' as groupId, 
    '633251495616512' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435192441.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Australia - Rolld - Kiosk
rollAUKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '297810002' as groupId, 
    '4955100136079360' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435215452.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Australia - Ze Pickle - Kiosk
zpAUKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '297810002' as groupId, 
    '5112430707343360' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435196668.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Australia - BaXa - Mobile
baxaAUMobilerawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '297810002' as groupId, 
    '590240770404352' as brandId, 
    user_id as userId, 
    "mobile" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435185887.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Australia - Two Johns - Mobile
twoJohnsAUMobilerawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '297810002' as groupId, 
    '5814096925556736' as brandId, 
    user_id as userId, 
    "mobile" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435198279.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Hong Kong - Ajisen - Kiosk
ajisenHKKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '70000' as groupId, 
    '785896772755456' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435218986.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Hong Kong - Burger King - Kiosk
bkHKKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '70000' as groupId, 
    '5700458253385728' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435207903.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Hong Kong - Popeyes - Kiosk
popeyesHKKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '70000' as groupId, 
    '5704894564532224' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435215456.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Hong Kong - Tai Hing - Kiosk
taihengHKKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '70000' as groupId, 
    '698624379748352' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435190921.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Hong Kong - Koh Hop Bar - Kiosk
kohhopHKKioskrawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '70000' as groupId, 
    '397504084312064' as brandId, 
    user_id as userId, 
    "kiosk" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435192639.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
), 
###SSP Hong Kong - Burger King - Mobile
bkHKMobilerawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '70000' as groupId, 
    '5700458253385728' as brandId, 
    user_id as userId, 
    "mobile" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435232123.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
),
###SSP Hong Kong - Yung Kee - Mobile
ykHKMobilerawData AS (
  SELECT 
    CAST(
      event_date AS DATE FORMAT "YYYYMMDD"
    ) As business, 
    TIMESTAMP_MICROS(event_timestamp) as eventTimestamp, 
    CASE WHEN Event_name = 'select_mode' 
    OR Event_name = 'start_order' THEN 1 WHEN Event_name = 'select_item' THEN 2 WHEN Event_name = 'add_to_cart' THEN 3 WHEN Event_name = 'view_cart' THEN 4 WHEN Event_name = 'begin_checkout' THEN 5 WHEN Event_name = 'purchase' THEN 6 ELSE NULL END AS step, 
    '70000' as groupId, 
    '5670296575016960' as brandId, 
    user_id as userId, 
    "mobile" as channel 
  FROM 
    `aigensstoreapp-analytics.analytics_435206654.events_*` 
  WHERE 
    _TABLE_SUFFIX = CAST(
      DATE_SUB(
        CURRENT_DATE('Asia/Hong_Kong'), 
        INTERVAL 3 day
      ) AS STRING FORMAT "YYYYMMDD"
    ) 
    AND event_name IN (
      'start_order', 'select_mode', 'select_item', 
      'add_to_cart', 'view_cart', 'begin_checkout', 
      'purchase'
    )
),
combinedDate AS (
    SELECT * FROM cbtlMYKioskrawData
    UNION ALL
    SELECT * FROM bkMYKioskrawData
    UNION ALL
    SELECT * FROM hrMYKioskrawData
    UNION ALL
    SELECT * FROM tbMYKioskrawData
    UNION ALL
    SELECT * FROM otwcMYKioskrawData
    UNION ALL
    SELECT * FROM jbMYKioskrawData
    UNION ALL
    SELECT * FROM joMYMobilerawData
    UNION ALL
    SELECT * FROM immRiceTHMobilerawData
    UNION ALL
    SELECT * FROM rrAUKioskrawData
    UNION ALL
    SELECT * FROM ctAUKioskrawData
    UNION ALL
    SELECT * FROM mmAUKioskrawData
    UNION ALL
    SELECT * FROM rollAUKioskrawData
    UNION ALL
    SELECT * FROM zpAUKioskrawData
    UNION ALL
    SELECT * FROM baxaAUMobilerawData
    UNION ALL
    SELECT * FROM twoJohnsAUMobilerawData
    UNION ALL
    SELECT * FROM ajisenHKKioskrawData
    UNION ALL
    SELECT * FROM bkHKKioskrawData
    UNION ALL
    SELECT * FROM popeyesHKKioskrawData
    UNION ALL
    SELECT * FROM taihengHKKioskrawData
    UNION ALL
    SELECT * FROM kohhopHKKioskrawData
    UNION ALL
    SELECT * FROM bkHKMobilerawData
    UNION ALL
    SELECT * FROM ykHKMobilerawData
), 
GA4AggData AS (
  SELECT 
    business, 
    groupId, 
    brandId, 
    userId, 
    GENERATE_ARRAY(
      1, 
      MAX(step) OVER (
        PARTITION by business, groupId, brandId, 
        userId
      )
    ) AS all_step, 
    LAST_VALUE(channel IGNORE NULLS) OVER (
      PARTITION by business, 
      groupId, 
      brandId, 
      userId 
      ORDER BY 
        eventTimestamp ROWS BETWEEN UNBOUNDED PRECEDING 
        AND UNBOUNDED FOLLOWING
    ) as channel 
  FROM 
    combinedDate
) 
SELECT 
  CONCAT(
    CAST(
      business AS STRING FORMAT "YYYYMMDD"
    ), 
    "-", 
    groupId, 
    "-", 
    brandid, 
    "-", 
    channel, 
    "-", 
    step
  ) AS id, 
  *, 
  CASE WHEN step = 1 THEN 'Start Order' WHEN step = 2 THEN 'Product Click' WHEN step = 3 THEN 'Add to Cart' WHEN step = 4 THEN "View Cart" WHEN step = 5 THEN "Checkout" WHEN step = 6 THEN "Successful Purchase" END AS event, 
  LEAD(userCount) OVER (
    PARTITION BY business, 
    groupid, 
    brandid, 
    channel 
    ORDER BY 
      step
  ) As nextUserCount, 
  MAX(userCount) OVER (
    PARTITION BY business, groupid, brandid, 
    channel
  ) as maxUserCount 
FROM 
  (
    SELECT 
      DISTINCT business, 
      groupId, 
      brandId, 
      channel, 
      step 
    FROM 
      GA4AggData, 
      UNNEST(
        GENERATE_ARRAY(1, 6)
      ) As step
  ) 
  LEFT JOIN (
    SELECT 
      business, 
      groupId, 
      brandId, 
      channel, 
      step, 
      COUNT(
        DISTINCT(userId)
      ) as userCount 
    FROM 
      GA4AggData, 
      UNNEST(all_step) as step 
    GROUP BY 
      1, 
      2, 
      3, 
      4, 
      5
  ) USING(
    business, groupId, brandId, channel, 
    step
  ) 
ORDER BY 
  1, 
  2, 
  3, 
  4, 
  5
