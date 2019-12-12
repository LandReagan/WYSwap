# wy_swap

WY Swapper

## Database structure
<pre>
users COLL
|
+-(staff_number) DOC
    |
    +- name STRING
    +- fleet STRING # A330 B787 B737 E190
    +- rank STRING # CPT FO
    |
    +- trades COLL
        |
        +- (uid) DOC
            |
            +- giving_slot_number INT
            +- slot_days INT
            +- requesting_slot_number
</pre>
