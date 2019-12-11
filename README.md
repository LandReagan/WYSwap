# wy_swap

WY Swapper

## Database structure
<pre>
users COLL
|
+-(staff_number) DOC
    |
    +- name STRING
    |
    +- trades COLL
        |
        +- (uid) DOC
            |
            +- giving_slot_number INT
            +- slot_days INT
            +- requesting_slot_number
</pre>
