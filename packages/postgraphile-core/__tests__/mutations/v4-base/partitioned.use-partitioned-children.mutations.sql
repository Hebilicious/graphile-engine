SAVEPOINT graphql_mutation

with __local_0__ as (
  insert into "partitioned"."warehouse" (
    "id",
    "location"
  ) values(
    $1,
    $2
  ) returning *
)
select (
  (
    case when __local_0__ is null then null else __local_0__ end
  )
)::text
from __local_0__

with __local_0__ as (
  select (
    str::"partitioned"."warehouse"
  ).*
  from unnest(
    (
      $1
    )::text[]
  ) str
)
select to_json(
  (
    json_build_object(
      'id'::text,
      (__local_0__."id"),
      'location'::text,
      (__local_0__."location")
    )
  )
) as "@warehouse"
from __local_0__ as __local_0__
where (TRUE) and (TRUE)

RELEASE SAVEPOINT graphql_mutation

SAVEPOINT graphql_mutation

with __local_0__ as (
  insert into "partitioned"."item_2" (
    "id",
    "description"
  ) values(
    $1,
    $2
  ) returning *
)
select (
  (
    case when __local_0__ is null then null else __local_0__ end
  )
)::text
from __local_0__

with __local_0__ as (
  select (
    str::"partitioned"."item_2"
  ).*
  from unnest(
    (
      $1
    )::text[]
  ) str
)
select to_json(
  (
    json_build_object(
      'id'::text,
      (__local_0__."id"),
      'description'::text,
      (__local_0__."description")
    )
  )
) as "@item2"
from __local_0__ as __local_0__
where (TRUE) and (TRUE)

RELEASE SAVEPOINT graphql_mutation

SAVEPOINT graphql_mutation

with __local_0__ as (
  insert into "partitioned"."stock_4" (
    "item_id",
    "warehouse_id",
    "amount"
  ) values(
    $1,
    $2,
    $3
  ) returning *
)
select (
  (
    case when __local_0__ is null then null else __local_0__ end
  )
)::text
from __local_0__

with __local_0__ as (
  select (
    str::"partitioned"."stock_4"
  ).*
  from unnest(
    (
      $1
    )::text[]
  ) str
)
select to_json(
  (
    json_build_object(
      'itemId'::text,
      (__local_0__."item_id"),
      'amount'::text,
      (__local_0__."amount"),
      'warehouseId'::text,
      (__local_0__."warehouse_id")
    )
  )
) as "@stock4"
from __local_0__ as __local_0__
where (TRUE) and (TRUE)

RELEASE SAVEPOINT graphql_mutation

SAVEPOINT graphql_mutation

with __local_0__ as (
  update "partitioned"."warehouse" set "location" = $1
  where (
    "id" = $2
  ) returning *
)
select (
  (
    case when __local_0__ is null then null else __local_0__ end
  )
)::text
from __local_0__

with __local_0__ as (
  select (
    str::"partitioned"."warehouse"
  ).*
  from unnest(
    (
      $1
    )::text[]
  ) str
)
select to_json(
  (
    json_build_object(
      'id'::text,
      (__local_0__."id"),
      'location'::text,
      (__local_0__."location")
    )
  )
) as "@warehouse"
from __local_0__ as __local_0__
where (TRUE) and (TRUE)

RELEASE SAVEPOINT graphql_mutation

SAVEPOINT graphql_mutation

with __local_0__ as (
  update "partitioned"."item_2" set "description" = $1
  where (
    "id" = $2
  ) returning *
)
select (
  (
    case when __local_0__ is null then null else __local_0__ end
  )
)::text
from __local_0__

with __local_0__ as (
  select (
    str::"partitioned"."item_2"
  ).*
  from unnest(
    (
      $1
    )::text[]
  ) str
)
select to_json(
  (
    json_build_object(
      'id'::text,
      (__local_0__."id"),
      'description'::text,
      (__local_0__."description")
    )
  )
) as "@item2"
from __local_0__ as __local_0__
where (TRUE) and (TRUE)

RELEASE SAVEPOINT graphql_mutation

SAVEPOINT graphql_mutation

with __local_0__ as (
  update "partitioned"."stock_4" set "amount" = $1
  where (
    "item_id" = $2
  )
  and (
    "warehouse_id" = $3
  ) returning *
)
select (
  (
    case when __local_0__ is null then null else __local_0__ end
  )
)::text
from __local_0__

with __local_0__ as (
  select (
    str::"partitioned"."stock_4"
  ).*
  from unnest(
    (
      $1
    )::text[]
  ) str
)
select to_json(
  (
    json_build_object(
      'itemId'::text,
      (__local_0__."item_id"),
      'amount'::text,
      (__local_0__."amount"),
      'warehouseId'::text,
      (__local_0__."warehouse_id")
    )
  )
) as "@stock4"
from __local_0__ as __local_0__
where (TRUE) and (TRUE)

RELEASE SAVEPOINT graphql_mutation

SAVEPOINT graphql_mutation

with __local_0__ as (
  delete
  from "partitioned"."stock_4"
  where (
    "item_id" = $1
  )
  and (
    "warehouse_id" = $2
  ) returning *
)
select (
  (
    case when __local_0__ is null then null else __local_0__ end
  )
)::text
from __local_0__

with __local_0__ as (
  select (
    str::"partitioned"."stock_4"
  ).*
  from unnest(
    (
      $1
    )::text[]
  ) str
)
select to_json(
  (
    json_build_object(
      'itemId'::text,
      (__local_0__."item_id"),
      'amount'::text,
      (__local_0__."amount"),
      'warehouseId'::text,
      (__local_0__."warehouse_id")
    )
  )
) as "@stock4"
from __local_0__ as __local_0__
where (TRUE) and (TRUE)

RELEASE SAVEPOINT graphql_mutation

SAVEPOINT graphql_mutation

with __local_0__ as (
  delete
  from "partitioned"."warehouse"
  where (
    "id" = $1
  ) returning *
)
select (
  (
    case when __local_0__ is null then null else __local_0__ end
  )
)::text
from __local_0__

with __local_0__ as (
  select (
    str::"partitioned"."warehouse"
  ).*
  from unnest(
    (
      $1
    )::text[]
  ) str
)
select to_json(
  (
    json_build_object(
      'id'::text,
      (__local_0__."id"),
      'location'::text,
      (__local_0__."location")
    )
  )
) as "@warehouse"
from __local_0__ as __local_0__
where (TRUE) and (TRUE)

RELEASE SAVEPOINT graphql_mutation

SAVEPOINT graphql_mutation

with __local_0__ as (
  delete
  from "partitioned"."item_2"
  where (
    "id" = $1
  ) returning *
)
select (
  (
    case when __local_0__ is null then null else __local_0__ end
  )
)::text
from __local_0__

with __local_0__ as (
  select (
    str::"partitioned"."item_2"
  ).*
  from unnest(
    (
      $1
    )::text[]
  ) str
)
select to_json(
  (
    json_build_object(
      'id'::text,
      (__local_0__."id"),
      'description'::text,
      (__local_0__."description")
    )
  )
) as "@item2"
from __local_0__ as __local_0__
where (TRUE) and (TRUE)

RELEASE SAVEPOINT graphql_mutation