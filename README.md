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
            +- giving INT
            +- slot_days INT
            +- requesting
</pre>
