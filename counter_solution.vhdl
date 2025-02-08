```vhdl
ENTITY counter IS
    PORT (
        clk : IN  STD_LOGIC;
        rst : IN  STD_LOGIC;
        en  : IN  STD_LOGIC;
        count : OUT INTEGER RANGE 0 TO 15
    );
END ENTITY;

ARCHITECTURE behavioral OF counter IS
    SIGNAL temp_count : INTEGER RANGE 0 TO 15 := 0;
BEGIN
    PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            temp_count <= 0;
        ELSIF rising_edge(clk) THEN
            IF en = '1' THEN
                IF temp_count < 15 THEN
                    temp_count <= temp_count + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    count <= temp_count;
END ARCHITECTURE;
```