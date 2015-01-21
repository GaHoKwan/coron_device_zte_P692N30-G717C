.class public Lcom/itextpdf/text/pdf/Barcode128;
.super Lcom/itextpdf/text/pdf/Barcode;
.source "Barcode128.java"


# static fields
.field private static final BARS:[[B = null

.field private static final BARS_STOP:[B = null

.field public static final CODE_A:C = '\u00c8'

.field public static final CODE_AB_TO_C:C = 'c'

.field public static final CODE_AC_TO_B:C = 'd'

.field public static final CODE_BC_TO_A:C = 'e'

.field public static final CODE_C:C = '\u00c7'

.field public static final DEL:C = '\u00c3'

.field public static final FNC1:C = '\u00ca'

.field public static final FNC1_INDEX:C = 'f'

.field public static final FNC2:C = '\u00c5'

.field public static final FNC3:C = '\u00c4'

.field public static final FNC4:C = '\u00c8'

.field public static final SHIFT:C = '\u00c6'

.field public static final STARTA:C = '\u00cb'

.field public static final STARTB:C = '\u00cc'

.field public static final STARTC:C = '\u00cd'

.field public static final START_A:C = 'g'

.field public static final START_B:C = 'h'

.field public static final START_C:C = 'i'

.field private static final ais:Lcom/itextpdf/text/pdf/IntHashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x6

    .line 77
    const/16 v1, 0x6a

    new-array v1, v1, [[B

    const/4 v2, 0x0

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v3, v4, [B

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-array v3, v4, [B

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v3, v4, [B

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-array v3, v4, [B

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v4, [B

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    new-array v2, v4, [B

    fill-array-data v2, :array_6

    aput-object v2, v1, v4

    const/4 v2, 0x7

    new-array v3, v4, [B

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    new-array v2, v4, [B

    fill-array-data v2, :array_8

    aput-object v2, v1, v6

    const/16 v2, 0x9

    new-array v3, v4, [B

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    new-array v2, v4, [B

    fill-array-data v2, :array_a

    aput-object v2, v1, v7

    const/16 v2, 0xb

    new-array v3, v4, [B

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v4, [B

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v4, [B

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v4, [B

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-array v3, v4, [B

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    new-array v2, v4, [B

    fill-array-data v2, :array_10

    aput-object v2, v1, v8

    const/16 v2, 0x11

    new-array v3, v4, [B

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-array v3, v4, [B

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-array v3, v4, [B

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-array v3, v4, [B

    fill-array-data v3, :array_14

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-array v3, v4, [B

    fill-array-data v3, :array_15

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-array v3, v4, [B

    fill-array-data v3, :array_16

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-array v3, v4, [B

    fill-array-data v3, :array_17

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-array v3, v4, [B

    fill-array-data v3, :array_18

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-array v3, v4, [B

    fill-array-data v3, :array_19

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-array v3, v4, [B

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-array v3, v4, [B

    fill-array-data v3, :array_1b

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-array v3, v4, [B

    fill-array-data v3, :array_1c

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-array v3, v4, [B

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-array v3, v4, [B

    fill-array-data v3, :array_1e

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-array v3, v4, [B

    fill-array-data v3, :array_1f

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-array v3, v4, [B

    fill-array-data v3, :array_20

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-array v3, v4, [B

    fill-array-data v3, :array_21

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-array v3, v4, [B

    fill-array-data v3, :array_22

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-array v3, v4, [B

    fill-array-data v3, :array_23

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-array v3, v4, [B

    fill-array-data v3, :array_24

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-array v3, v4, [B

    fill-array-data v3, :array_25

    aput-object v3, v1, v2

    const/16 v2, 0x26

    new-array v3, v4, [B

    fill-array-data v3, :array_26

    aput-object v3, v1, v2

    const/16 v2, 0x27

    new-array v3, v4, [B

    fill-array-data v3, :array_27

    aput-object v3, v1, v2

    const/16 v2, 0x28

    new-array v3, v4, [B

    fill-array-data v3, :array_28

    aput-object v3, v1, v2

    const/16 v2, 0x29

    new-array v3, v4, [B

    fill-array-data v3, :array_29

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    new-array v3, v4, [B

    fill-array-data v3, :array_2a

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    new-array v3, v4, [B

    fill-array-data v3, :array_2b

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    new-array v3, v4, [B

    fill-array-data v3, :array_2c

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    new-array v3, v4, [B

    fill-array-data v3, :array_2d

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    new-array v3, v4, [B

    fill-array-data v3, :array_2e

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    new-array v3, v4, [B

    fill-array-data v3, :array_2f

    aput-object v3, v1, v2

    const/16 v2, 0x30

    new-array v3, v4, [B

    fill-array-data v3, :array_30

    aput-object v3, v1, v2

    const/16 v2, 0x31

    new-array v3, v4, [B

    fill-array-data v3, :array_31

    aput-object v3, v1, v2

    const/16 v2, 0x32

    new-array v3, v4, [B

    fill-array-data v3, :array_32

    aput-object v3, v1, v2

    const/16 v2, 0x33

    new-array v3, v4, [B

    fill-array-data v3, :array_33

    aput-object v3, v1, v2

    const/16 v2, 0x34

    new-array v3, v4, [B

    fill-array-data v3, :array_34

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-array v3, v4, [B

    fill-array-data v3, :array_35

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-array v3, v4, [B

    fill-array-data v3, :array_36

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-array v3, v4, [B

    fill-array-data v3, :array_37

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-array v3, v4, [B

    fill-array-data v3, :array_38

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-array v3, v4, [B

    fill-array-data v3, :array_39

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-array v3, v4, [B

    fill-array-data v3, :array_3a

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-array v3, v4, [B

    fill-array-data v3, :array_3b

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-array v3, v4, [B

    fill-array-data v3, :array_3c

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-array v3, v4, [B

    fill-array-data v3, :array_3d

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-array v3, v4, [B

    fill-array-data v3, :array_3e

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-array v3, v4, [B

    fill-array-data v3, :array_3f

    aput-object v3, v1, v2

    const/16 v2, 0x40

    new-array v3, v4, [B

    fill-array-data v3, :array_40

    aput-object v3, v1, v2

    const/16 v2, 0x41

    new-array v3, v4, [B

    fill-array-data v3, :array_41

    aput-object v3, v1, v2

    const/16 v2, 0x42

    new-array v3, v4, [B

    fill-array-data v3, :array_42

    aput-object v3, v1, v2

    const/16 v2, 0x43

    new-array v3, v4, [B

    fill-array-data v3, :array_43

    aput-object v3, v1, v2

    const/16 v2, 0x44

    new-array v3, v4, [B

    fill-array-data v3, :array_44

    aput-object v3, v1, v2

    const/16 v2, 0x45

    new-array v3, v4, [B

    fill-array-data v3, :array_45

    aput-object v3, v1, v2

    const/16 v2, 0x46

    new-array v3, v4, [B

    fill-array-data v3, :array_46

    aput-object v3, v1, v2

    const/16 v2, 0x47

    new-array v3, v4, [B

    fill-array-data v3, :array_47

    aput-object v3, v1, v2

    const/16 v2, 0x48

    new-array v3, v4, [B

    fill-array-data v3, :array_48

    aput-object v3, v1, v2

    const/16 v2, 0x49

    new-array v3, v4, [B

    fill-array-data v3, :array_49

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    new-array v3, v4, [B

    fill-array-data v3, :array_4a

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    new-array v3, v4, [B

    fill-array-data v3, :array_4b

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    new-array v3, v4, [B

    fill-array-data v3, :array_4c

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    new-array v3, v4, [B

    fill-array-data v3, :array_4d

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    new-array v3, v4, [B

    fill-array-data v3, :array_4e

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    new-array v3, v4, [B

    fill-array-data v3, :array_4f

    aput-object v3, v1, v2

    const/16 v2, 0x50

    new-array v3, v4, [B

    fill-array-data v3, :array_50

    aput-object v3, v1, v2

    const/16 v2, 0x51

    new-array v3, v4, [B

    fill-array-data v3, :array_51

    aput-object v3, v1, v2

    const/16 v2, 0x52

    new-array v3, v4, [B

    fill-array-data v3, :array_52

    aput-object v3, v1, v2

    const/16 v2, 0x53

    new-array v3, v4, [B

    fill-array-data v3, :array_53

    aput-object v3, v1, v2

    const/16 v2, 0x54

    new-array v3, v4, [B

    fill-array-data v3, :array_54

    aput-object v3, v1, v2

    const/16 v2, 0x55

    new-array v3, v4, [B

    fill-array-data v3, :array_55

    aput-object v3, v1, v2

    const/16 v2, 0x56

    new-array v3, v4, [B

    fill-array-data v3, :array_56

    aput-object v3, v1, v2

    const/16 v2, 0x57

    new-array v3, v4, [B

    fill-array-data v3, :array_57

    aput-object v3, v1, v2

    const/16 v2, 0x58

    new-array v3, v4, [B

    fill-array-data v3, :array_58

    aput-object v3, v1, v2

    const/16 v2, 0x59

    new-array v3, v4, [B

    fill-array-data v3, :array_59

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    new-array v3, v4, [B

    fill-array-data v3, :array_5a

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    new-array v3, v4, [B

    fill-array-data v3, :array_5b

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    new-array v3, v4, [B

    fill-array-data v3, :array_5c

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    new-array v3, v4, [B

    fill-array-data v3, :array_5d

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    new-array v3, v4, [B

    fill-array-data v3, :array_5e

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    new-array v3, v4, [B

    fill-array-data v3, :array_5f

    aput-object v3, v1, v2

    const/16 v2, 0x60

    new-array v3, v4, [B

    fill-array-data v3, :array_60

    aput-object v3, v1, v2

    const/16 v2, 0x61

    new-array v3, v4, [B

    fill-array-data v3, :array_61

    aput-object v3, v1, v2

    const/16 v2, 0x62

    new-array v3, v4, [B

    fill-array-data v3, :array_62

    aput-object v3, v1, v2

    const/16 v2, 0x63

    new-array v3, v4, [B

    fill-array-data v3, :array_63

    aput-object v3, v1, v2

    const/16 v2, 0x64

    new-array v3, v4, [B

    fill-array-data v3, :array_64

    aput-object v3, v1, v2

    const/16 v2, 0x65

    new-array v3, v4, [B

    fill-array-data v3, :array_65

    aput-object v3, v1, v2

    const/16 v2, 0x66

    new-array v3, v4, [B

    fill-array-data v3, :array_66

    aput-object v3, v1, v2

    const/16 v2, 0x67

    new-array v3, v4, [B

    fill-array-data v3, :array_67

    aput-object v3, v1, v2

    const/16 v2, 0x68

    new-array v3, v4, [B

    fill-array-data v3, :array_68

    aput-object v3, v1, v2

    const/16 v2, 0x69

    new-array v3, v4, [B

    fill-array-data v3, :array_69

    aput-object v3, v1, v2

    sput-object v1, Lcom/itextpdf/text/pdf/Barcode128;->BARS:[[B

    .line 189
    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_6a

    sput-object v1, Lcom/itextpdf/text/pdf/Barcode128;->BARS_STOP:[B

    .line 224
    new-instance v1, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    sput-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 716
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 717
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 718
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 719
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v1, v7, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 720
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0xb

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 721
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v6}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 722
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v6}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 723
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v6}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 724
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v6}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 725
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x14

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 726
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 727
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 728
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 729
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0xf0

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 730
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0xf1

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 731
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 732
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0xfb

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 733
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0xfc

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 734
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 735
    const/16 v0, 0xc1c

    .local v0, k:I
    :goto_0
    const/16 v1, 0xe74

    if-ge v0, v1, :cond_0

    .line 736
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v1, v0, v7}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x25

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 738
    const/16 v0, 0xf3c

    :goto_1
    const/16 v1, 0xf64

    if-ge v0, v1, :cond_1

    .line 739
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v1, v0, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 740
    :cond_1
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x190

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 741
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x191

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 742
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x192

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 743
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x193

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 744
    const/16 v0, 0x19a

    :goto_2
    const/16 v1, 0x1a0

    if-ge v0, v1, :cond_2

    .line 745
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v1, v0, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 746
    :cond_2
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1a4

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 747
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1a5

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 748
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1a6

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 749
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1a7

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 750
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1a8

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 751
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1a9

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 752
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1aa

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 753
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1b59

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 754
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1b5a

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 755
    const/16 v0, 0x1b76

    :goto_3
    const/16 v1, 0x1b80

    if-ge v0, v1, :cond_3

    .line 756
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v1, v0, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 757
    :cond_3
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1f41

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 758
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1f42

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 759
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1f43

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 760
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1f44

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 761
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1f45

    invoke-virtual {v1, v2, v7}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 762
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1f46

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 763
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1f47

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 764
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1f48

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 765
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1f52

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 766
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1f54

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 767
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1fa4

    invoke-virtual {v1, v2, v7}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 768
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1fa5

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 769
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v2, 0x1fa6

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 770
    const/16 v0, 0x5a

    :goto_4
    const/16 v1, 0x64

    if-ge v0, v1, :cond_4

    .line 771
    sget-object v1, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v1, v0, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 772
    :cond_4
    return-void

    .line 77
    nop

    :array_0
    .array-data 0x1
        0x2t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x2t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x1t
        0x2t
        0x1t
        0x2t
        0x2t
        0x3t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x1t
        0x2t
        0x1t
        0x3t
        0x2t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 0x1
        0x1t
        0x3t
        0x1t
        0x2t
        0x2t
        0x2t
    .end array-data

    nop

    :array_6
    .array-data 0x1
        0x1t
        0x2t
        0x2t
        0x2t
        0x1t
        0x3t
    .end array-data

    nop

    :array_7
    .array-data 0x1
        0x1t
        0x2t
        0x2t
        0x3t
        0x1t
        0x2t
    .end array-data

    nop

    :array_8
    .array-data 0x1
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_9
    .array-data 0x1
        0x2t
        0x2t
        0x1t
        0x2t
        0x1t
        0x3t
    .end array-data

    nop

    :array_a
    .array-data 0x1
        0x2t
        0x2t
        0x1t
        0x3t
        0x1t
        0x2t
    .end array-data

    nop

    :array_b
    .array-data 0x1
        0x2t
        0x3t
        0x1t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_c
    .array-data 0x1
        0x1t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
    .end array-data

    nop

    :array_d
    .array-data 0x1
        0x1t
        0x2t
        0x2t
        0x1t
        0x3t
        0x2t
    .end array-data

    nop

    :array_e
    .array-data 0x1
        0x1t
        0x2t
        0x2t
        0x2t
        0x3t
        0x1t
    .end array-data

    nop

    :array_f
    .array-data 0x1
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x2t
    .end array-data

    nop

    :array_10
    .array-data 0x1
        0x1t
        0x2t
        0x3t
        0x1t
        0x2t
        0x2t
    .end array-data

    nop

    :array_11
    .array-data 0x1
        0x1t
        0x2t
        0x3t
        0x2t
        0x2t
        0x1t
    .end array-data

    nop

    :array_12
    .array-data 0x1
        0x2t
        0x2t
        0x3t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_13
    .array-data 0x1
        0x2t
        0x2t
        0x1t
        0x1t
        0x3t
        0x2t
    .end array-data

    nop

    :array_14
    .array-data 0x1
        0x2t
        0x2t
        0x1t
        0x2t
        0x3t
        0x1t
    .end array-data

    nop

    :array_15
    .array-data 0x1
        0x2t
        0x1t
        0x3t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_16
    .array-data 0x1
        0x2t
        0x2t
        0x3t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_17
    .array-data 0x1
        0x3t
        0x1t
        0x2t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_18
    .array-data 0x1
        0x3t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
    .end array-data

    nop

    :array_19
    .array-data 0x1
        0x3t
        0x2t
        0x1t
        0x1t
        0x2t
        0x2t
    .end array-data

    nop

    :array_1a
    .array-data 0x1
        0x3t
        0x2t
        0x1t
        0x2t
        0x2t
        0x1t
    .end array-data

    nop

    :array_1b
    .array-data 0x1
        0x3t
        0x1t
        0x2t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_1c
    .array-data 0x1
        0x3t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_1d
    .array-data 0x1
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1e
    .array-data 0x1
        0x2t
        0x1t
        0x2t
        0x1t
        0x2t
        0x3t
    .end array-data

    nop

    :array_1f
    .array-data 0x1
        0x2t
        0x1t
        0x2t
        0x3t
        0x2t
        0x1t
    .end array-data

    nop

    :array_20
    .array-data 0x1
        0x2t
        0x3t
        0x2t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_21
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x3t
        0x2t
        0x3t
    .end array-data

    nop

    :array_22
    .array-data 0x1
        0x1t
        0x3t
        0x1t
        0x1t
        0x2t
        0x3t
    .end array-data

    nop

    :array_23
    .array-data 0x1
        0x1t
        0x3t
        0x1t
        0x3t
        0x2t
        0x1t
    .end array-data

    nop

    :array_24
    .array-data 0x1
        0x1t
        0x1t
        0x2t
        0x3t
        0x1t
        0x3t
    .end array-data

    nop

    :array_25
    .array-data 0x1
        0x1t
        0x3t
        0x2t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_26
    .array-data 0x1
        0x1t
        0x3t
        0x2t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_27
    .array-data 0x1
        0x2t
        0x1t
        0x1t
        0x3t
        0x1t
        0x3t
    .end array-data

    nop

    :array_28
    .array-data 0x1
        0x2t
        0x3t
        0x1t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_29
    .array-data 0x1
        0x2t
        0x3t
        0x1t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_2a
    .array-data 0x1
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x3t
    .end array-data

    nop

    :array_2b
    .array-data 0x1
        0x1t
        0x1t
        0x2t
        0x3t
        0x3t
        0x1t
    .end array-data

    nop

    :array_2c
    .array-data 0x1
        0x1t
        0x3t
        0x2t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_2d
    .array-data 0x1
        0x1t
        0x1t
        0x3t
        0x1t
        0x2t
        0x3t
    .end array-data

    nop

    :array_2e
    .array-data 0x1
        0x1t
        0x1t
        0x3t
        0x3t
        0x2t
        0x1t
    .end array-data

    nop

    :array_2f
    .array-data 0x1
        0x1t
        0x3t
        0x3t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_30
    .array-data 0x1
        0x3t
        0x1t
        0x3t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_31
    .array-data 0x1
        0x2t
        0x1t
        0x1t
        0x3t
        0x3t
        0x1t
    .end array-data

    nop

    :array_32
    .array-data 0x1
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_33
    .array-data 0x1
        0x2t
        0x1t
        0x3t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_34
    .array-data 0x1
        0x2t
        0x1t
        0x3t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_35
    .array-data 0x1
        0x2t
        0x1t
        0x3t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_36
    .array-data 0x1
        0x3t
        0x1t
        0x1t
        0x1t
        0x2t
        0x3t
    .end array-data

    nop

    :array_37
    .array-data 0x1
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x1t
    .end array-data

    nop

    :array_38
    .array-data 0x1
        0x3t
        0x3t
        0x1t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_39
    .array-data 0x1
        0x3t
        0x1t
        0x2t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_3a
    .array-data 0x1
        0x3t
        0x1t
        0x2t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3b
    .array-data 0x1
        0x3t
        0x3t
        0x2t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3c
    .array-data 0x1
        0x3t
        0x1t
        0x4t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3d
    .array-data 0x1
        0x2t
        0x2t
        0x1t
        0x4t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3e
    .array-data 0x1
        0x4t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3f
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x4t
    .end array-data

    nop

    :array_40
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x4t
        0x2t
        0x2t
    .end array-data

    nop

    :array_41
    .array-data 0x1
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x4t
    .end array-data

    nop

    :array_42
    .array-data 0x1
        0x1t
        0x2t
        0x1t
        0x4t
        0x2t
        0x1t
    .end array-data

    nop

    :array_43
    .array-data 0x1
        0x1t
        0x4t
        0x1t
        0x1t
        0x2t
        0x2t
    .end array-data

    nop

    :array_44
    .array-data 0x1
        0x1t
        0x4t
        0x1t
        0x2t
        0x2t
        0x1t
    .end array-data

    nop

    :array_45
    .array-data 0x1
        0x1t
        0x1t
        0x2t
        0x2t
        0x1t
        0x4t
    .end array-data

    nop

    :array_46
    .array-data 0x1
        0x1t
        0x1t
        0x2t
        0x4t
        0x1t
        0x2t
    .end array-data

    nop

    :array_47
    .array-data 0x1
        0x1t
        0x2t
        0x2t
        0x1t
        0x1t
        0x4t
    .end array-data

    nop

    :array_48
    .array-data 0x1
        0x1t
        0x2t
        0x2t
        0x4t
        0x1t
        0x1t
    .end array-data

    nop

    :array_49
    .array-data 0x1
        0x1t
        0x4t
        0x2t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_4a
    .array-data 0x1
        0x1t
        0x4t
        0x2t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_4b
    .array-data 0x1
        0x2t
        0x4t
        0x1t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_4c
    .array-data 0x1
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x4t
    .end array-data

    nop

    :array_4d
    .array-data 0x1
        0x4t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_4e
    .array-data 0x1
        0x2t
        0x4t
        0x1t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_4f
    .array-data 0x1
        0x1t
        0x3t
        0x4t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_50
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x2t
        0x4t
        0x2t
    .end array-data

    nop

    :array_51
    .array-data 0x1
        0x1t
        0x2t
        0x1t
        0x1t
        0x4t
        0x2t
    .end array-data

    nop

    :array_52
    .array-data 0x1
        0x1t
        0x2t
        0x1t
        0x2t
        0x4t
        0x1t
    .end array-data

    nop

    :array_53
    .array-data 0x1
        0x1t
        0x1t
        0x4t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_54
    .array-data 0x1
        0x1t
        0x2t
        0x4t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_55
    .array-data 0x1
        0x1t
        0x2t
        0x4t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_56
    .array-data 0x1
        0x4t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_57
    .array-data 0x1
        0x4t
        0x2t
        0x1t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_58
    .array-data 0x1
        0x4t
        0x2t
        0x1t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_59
    .array-data 0x1
        0x2t
        0x1t
        0x2t
        0x1t
        0x4t
        0x1t
    .end array-data

    nop

    :array_5a
    .array-data 0x1
        0x2t
        0x1t
        0x4t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_5b
    .array-data 0x1
        0x4t
        0x1t
        0x2t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_5c
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x3t
    .end array-data

    nop

    :array_5d
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x3t
        0x4t
        0x1t
    .end array-data

    nop

    :array_5e
    .array-data 0x1
        0x1t
        0x3t
        0x1t
        0x1t
        0x4t
        0x1t
    .end array-data

    nop

    :array_5f
    .array-data 0x1
        0x1t
        0x1t
        0x4t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_60
    .array-data 0x1
        0x1t
        0x1t
        0x4t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_61
    .array-data 0x1
        0x4t
        0x1t
        0x1t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_62
    .array-data 0x1
        0x4t
        0x1t
        0x1t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_63
    .array-data 0x1
        0x1t
        0x1t
        0x3t
        0x1t
        0x4t
        0x1t
    .end array-data

    nop

    :array_64
    .array-data 0x1
        0x1t
        0x1t
        0x4t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_65
    .array-data 0x1
        0x3t
        0x1t
        0x1t
        0x1t
        0x4t
        0x1t
    .end array-data

    nop

    :array_66
    .array-data 0x1
        0x4t
        0x1t
        0x1t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_67
    .array-data 0x1
        0x2t
        0x1t
        0x1t
        0x4t
        0x1t
        0x2t
    .end array-data

    nop

    :array_68
    .array-data 0x1
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x4t
    .end array-data

    nop

    :array_69
    .array-data 0x1
        0x2t
        0x1t
        0x1t
        0x2t
        0x3t
        0x2t
    .end array-data

    .line 189
    nop

    :array_6a
    .array-data 0x1
        0x2t
        0x3t
        0x3t
        0x1t
        0x1t
        0x1t
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/Barcode;-><init>()V

    .line 228
    const v1, 0x3f4ccccd

    :try_start_0
    iput v1, p0, Lcom/itextpdf/text/pdf/Barcode128;->x:F

    .line 229
    const-string v1, "Helvetica"

    const-string v2, "winansi"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/Barcode128;->font:Lcom/itextpdf/text/pdf/BaseFont;

    .line 230
    const/high16 v1, 0x4100

    iput v1, p0, Lcom/itextpdf/text/pdf/Barcode128;->size:F

    .line 231
    iget v1, p0, Lcom/itextpdf/text/pdf/Barcode128;->size:F

    iput v1, p0, Lcom/itextpdf/text/pdf/Barcode128;->baseline:F

    .line 232
    iget v1, p0, Lcom/itextpdf/text/pdf/Barcode128;->size:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/Barcode128;->barHeight:F

    .line 233
    const/4 v1, 0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/Barcode128;->textAlignment:I

    .line 234
    const/16 v1, 0x9

    iput v1, p0, Lcom/itextpdf/text/pdf/Barcode128;->codeType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getBarsCode128Raw(Ljava/lang/String;)[B
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 497
    const v4, 0xffff

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 498
    .local v2, idx:I
    if-ltz v2, :cond_0

    .line 499
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 500
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 501
    .local v1, chk:I
    const/4 v3, 0x1

    .local v3, k:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 502
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v1, v4

    .line 501
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 503
    :cond_1
    rem-int/lit8 v1, v1, 0x67

    .line 504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 505
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x7

    new-array v0, v4, [B

    .line 507
    .local v0, bars:[B
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 508
    sget-object v4, Lcom/itextpdf/text/pdf/Barcode128;->BARS:[[B

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-object v4, v4, v5

    mul-int/lit8 v5, v3, 0x6

    const/4 v6, 0x6

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 509
    :cond_2
    sget-object v4, Lcom/itextpdf/text/pdf/Barcode128;->BARS_STOP:[B

    mul-int/lit8 v5, v3, 0x6

    const/4 v6, 0x7

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    return-object v0
.end method

.method public static getHumanReadableUCCEAN(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "code"

    .prologue
    const/16 v6, 0xca

    .line 263
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, fnc1:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 268
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 269
    goto :goto_0

    .line 271
    :cond_0
    const/4 v5, 0x0

    .line 272
    .local v5, n:I
    const/4 v2, 0x0

    .line 273
    .local v2, idlen:I
    const/4 v4, 0x2

    .local v4, k:I
    :goto_1
    const/4 v6, 0x5

    if-ge v4, v6, :cond_1

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ge v6, v4, :cond_3

    .line 281
    :cond_1
    :goto_2
    if-nez v2, :cond_5

    .line 304
    .end local v2           #idlen:I
    .end local v4           #k:I
    .end local v5           #n:I
    :cond_2
    :goto_3
    invoke-static {p0}, Lcom/itextpdf/text/pdf/Barcode128;->removeFNC1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 276
    .restart local v2       #idlen:I
    .restart local v4       #k:I
    .restart local v5       #n:I
    :cond_3
    :try_start_1
    sget-object v6, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v5

    if-eqz v5, :cond_4

    .line 277
    move v2, v4

    .line 278
    goto :goto_2

    .line 273
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 283
    :cond_5
    const/16 v6, 0x28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 284
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 285
    if-lez v5, :cond_6

    .line 286
    sub-int/2addr v5, v2

    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_2

    .line 289
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/Barcode128;->removeFNC1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 293
    :cond_6
    const/16 v6, 0xca

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 294
    .local v3, idx:I
    if-ltz v3, :cond_2

    .line 296
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 301
    .end local v2           #idlen:I
    .end local v3           #idx:I
    .end local v4           #k:I
    .end local v5           #n:I
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method static getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .parameter "text"
    .parameter "textIndex"
    .parameter "numDigits"

    .prologue
    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .local v2, out:Ljava/lang/StringBuilder;
    move v3, p1

    .local v3, start:I
    move v4, p1

    .line 345
    .end local p1
    .local v4, textIndex:I
    :goto_0
    if-lez p2, :cond_1

    .line 346
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xca

    if-ne v5, v6, :cond_0

    .line 347
    const/16 v5, 0x66

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    add-int/lit8 p1, v4, 0x1

    .end local v4           #textIndex:I
    .restart local p1
    move v4, p1

    .line 349
    .end local p1
    .restart local v4       #textIndex:I
    goto :goto_0

    .line 351
    :cond_0
    add-int/lit8 p2, p2, -0x2

    .line 352
    add-int/lit8 p1, v4, 0x1

    .end local v4           #textIndex:I
    .restart local p1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v0, v5, -0x30

    .line 353
    .local v0, c1:I
    add-int/lit8 v4, p1, 0x1

    .end local p1
    .restart local v4       #textIndex:I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v1, v5, -0x30

    .line 354
    .local v1, c2:I
    mul-int/lit8 v5, v0, 0xa

    add-int/2addr v5, v1

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 356
    .end local v0           #c1:I
    .end local v1           #c2:I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v6, v4, v3

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getRawText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .parameter "text"
    .parameter "ucc"

    .prologue
    .line 367
    const-string v5, ""

    .line 368
    .local v5, out:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 369
    .local v8, tLen:I
    if-nez v8, :cond_1

    .line 370
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x68

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 371
    if-eqz p1, :cond_0

    .line 372
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    move-object v6, v5

    .line 488
    .end local v5           #out:Ljava/lang/String;
    .local v6, out:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 375
    .end local v6           #out:Ljava/lang/String;
    .restart local v5       #out:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 376
    .local v0, c:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    if-ge v4, v8, :cond_3

    .line 377
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 378
    const/16 v9, 0x7f

    if-le v0, v9, :cond_2

    const/16 v9, 0xca

    if-eq v0, v9, :cond_2

    .line 379
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "there.are.illegal.characters.for.barcode.128.in.1"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 376
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 381
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 382
    const/16 v1, 0x68

    .line 383
    .local v1, currentCode:C
    const/4 v2, 0x0

    .line 384
    .local v2, index:I
    const/4 v9, 0x2

    invoke-static {p0, v2, v9}, Lcom/itextpdf/text/pdf/Barcode128;->isNextDigits(Ljava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 385
    const/16 v1, 0x69

    .line 386
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 387
    if-eqz p1, :cond_4

    .line 388
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 389
    :cond_4
    const/4 v9, 0x2

    invoke-static {p0, v2, v9}, Lcom/itextpdf/text/pdf/Barcode128;->getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 390
    .local v7, out2:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v2, v9

    .line 391
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v3, v2

    .line 411
    .end local v2           #index:I
    .end local v7           #out2:Ljava/lang/String;
    .local v3, index:I
    :goto_2
    if-ge v3, v8, :cond_14

    .line 412
    packed-switch v1, :pswitch_data_0

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    :goto_3
    move v3, v2

    .line 485
    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_2

    .line 393
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_5
    const/16 v9, 0x20

    if-ge v0, v9, :cond_7

    .line 394
    const/16 v1, 0x67

    .line 395
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 396
    if-eqz p1, :cond_6

    .line 397
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 398
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v0, 0x40

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 399
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_2

    .line 402
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 403
    if-eqz p1, :cond_8

    .line 404
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 405
    :cond_8
    const/16 v9, 0xca

    if-ne v0, v9, :cond_9

    .line 406
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 409
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto/16 :goto_2

    .line 408
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v0, -0x20

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 415
    .end local v2           #index:I
    .restart local v3       #index:I
    :pswitch_0
    const/4 v9, 0x4

    invoke-static {p0, v3, v9}, Lcom/itextpdf/text/pdf/Barcode128;->isNextDigits(Ljava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 416
    const/16 v1, 0x69

    .line 417
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x63

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 418
    const/4 v9, 0x4

    invoke-static {p0, v3, v9}, Lcom/itextpdf/text/pdf/Barcode128;->getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 419
    .restart local v7       #out2:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int v2, v3, v9

    .line 420
    .end local v3           #index:I
    .restart local v2       #index:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 421
    goto/16 :goto_3

    .line 423
    .end local v2           #index:I
    .end local v7           #out2:Ljava/lang/String;
    .restart local v3       #index:I
    :cond_a
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 424
    const/16 v9, 0xca

    if-ne v0, v9, :cond_b

    .line 425
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 426
    :cond_b
    const/16 v9, 0x5f

    if-le v0, v9, :cond_c

    .line 427
    const/16 v1, 0x68

    .line 428
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 429
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v0, -0x20

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 431
    :cond_c
    const/16 v9, 0x20

    if-ge v0, v9, :cond_d

    .line 432
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v0, 0x40

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 434
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v0, -0x20

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 437
    goto/16 :goto_3

    .line 440
    .end local v2           #index:I
    .restart local v3       #index:I
    :pswitch_1
    const/4 v9, 0x4

    invoke-static {p0, v3, v9}, Lcom/itextpdf/text/pdf/Barcode128;->isNextDigits(Ljava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 441
    const/16 v1, 0x69

    .line 442
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x63

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 443
    const/4 v9, 0x4

    invoke-static {p0, v3, v9}, Lcom/itextpdf/text/pdf/Barcode128;->getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 444
    .restart local v7       #out2:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int v2, v3, v9

    .line 445
    .end local v3           #index:I
    .restart local v2       #index:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 446
    goto/16 :goto_3

    .line 448
    .end local v2           #index:I
    .end local v7           #out2:Ljava/lang/String;
    .restart local v3       #index:I
    :cond_e
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 449
    const/16 v9, 0xca

    if-ne v0, v9, :cond_f

    .line 450
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 451
    :cond_f
    const/16 v9, 0x20

    if-ge v0, v9, :cond_10

    .line 452
    const/16 v1, 0x67

    .line 453
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 454
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v0, 0x40

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 457
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v0, -0x20

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 461
    goto/16 :goto_3

    .line 464
    .end local v2           #index:I
    .restart local v3       #index:I
    :pswitch_2
    const/4 v9, 0x2

    invoke-static {p0, v3, v9}, Lcom/itextpdf/text/pdf/Barcode128;->isNextDigits(Ljava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 465
    const/4 v9, 0x2

    invoke-static {p0, v3, v9}, Lcom/itextpdf/text/pdf/Barcode128;->getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 466
    .restart local v7       #out2:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int v2, v3, v9

    .line 467
    .end local v3           #index:I
    .restart local v2       #index:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 468
    goto/16 :goto_3

    .line 470
    .end local v2           #index:I
    .end local v7           #out2:Ljava/lang/String;
    .restart local v3       #index:I
    :cond_11
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 471
    const/16 v9, 0xca

    if-ne v0, v9, :cond_12

    .line 472
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 473
    :cond_12
    const/16 v9, 0x20

    if-ge v0, v9, :cond_13

    .line 474
    const/16 v1, 0x67

    .line 475
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 476
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v0, 0x40

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 479
    :cond_13
    const/16 v1, 0x68

    .line 480
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 481
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v0, -0x20

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_14
    move-object v6, v5

    .line 488
    .end local v5           #out:Ljava/lang/String;
    .restart local v6       #out:Ljava/lang/String;
    goto/16 :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static isNextDigits(Ljava/lang/String;II)Z
    .locals 8
    .parameter "text"
    .parameter "textIndex"
    .parameter "numDigits"

    .prologue
    const/4 v5, 0x0

    .line 316
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 317
    .local v1, len:I
    :goto_0
    if-ge p1, v1, :cond_4

    if-lez p2, :cond_4

    .line 318
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xca

    if-ne v6, v7, :cond_0

    .line 319
    add-int/lit8 p1, p1, 0x1

    .line 320
    goto :goto_0

    .line 322
    :cond_0
    const/4 v6, 0x2

    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 323
    .local v2, n:I
    add-int v6, p1, v2

    if-le v6, v1, :cond_5

    .line 332
    .end local v2           #n:I
    :cond_1
    :goto_1
    return v5

    .line 329
    .local v0, c:C
    .restart local v2       #n:I
    :cond_2
    add-int/lit8 p2, p2, -0x1

    move v3, v2

    .end local v2           #n:I
    .local v3, n:I
    move v4, p1

    .line 325
    .end local v0           #c:C
    .end local p1
    .local v4, textIndex:I
    :goto_2
    add-int/lit8 v2, v3, -0x1

    .end local v3           #n:I
    .restart local v2       #n:I
    if-lez v3, :cond_3

    .line 326
    add-int/lit8 p1, v4, 0x1

    .end local v4           #textIndex:I
    .restart local p1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 327
    .restart local v0       #c:C
    const/16 v6, 0x30

    if-lt v0, v6, :cond_1

    const/16 v6, 0x39

    if-le v0, v6, :cond_2

    goto :goto_1

    .end local v0           #c:C
    .end local p1
    .restart local v4       #textIndex:I
    :cond_3
    move p1, v4

    .line 331
    .end local v4           #textIndex:I
    .restart local p1
    goto :goto_0

    .line 332
    .end local v2           #n:I
    :cond_4
    if-nez p2, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    .restart local v2       #n:I
    :cond_5
    move v3, v2

    .end local v2           #n:I
    .restart local v3       #n:I
    move v4, p1

    .end local p1
    .restart local v4       #textIndex:I
    goto :goto_2
.end method

.method public static removeFNC1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "code"

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 248
    .local v3, len:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 249
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 250
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 251
    .local v1, c:C
    const/16 v4, 0x20

    if-lt v1, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v1, v4, :cond_0

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 249
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    .end local v1           #c:C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 22
    .parameter "foreground"
    .parameter "background"

    .prologue
    .line 783
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v11

    .line 784
    .local v11, f:I
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v12

    .line 785
    .local v12, g:I
    new-instance v10, Ljava/awt/Canvas;

    invoke-direct {v10}, Ljava/awt/Canvas;-><init>()V

    .line 787
    .local v10, canvas:Ljava/awt/Canvas;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/Barcode128;->codeType:I

    const/16 v5, 0xb

    if-ne v1, v5, :cond_2

    .line 788
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    const v5, 0xffff

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 789
    .local v13, idx:I
    if-ltz v13, :cond_1

    .line 790
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 797
    .end local v13           #idx:I
    .local v7, bCode:Ljava/lang/String;
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    .line 798
    .local v17, len:I
    add-int/lit8 v1, v17, 0x2

    mul-int/lit8 v1, v1, 0xb

    add-int/lit8 v2, v1, 0x2

    .line 799
    .local v2, fullWidth:I
    invoke-static {v7}, Lcom/itextpdf/text/pdf/Barcode128;->getBarsCode128Raw(Ljava/lang/String;)[B

    move-result-object v8

    .line 801
    .local v8, bars:[B
    const/16 v18, 0x1

    .line 802
    .local v18, print:Z
    const/16 v19, 0x0

    .line 803
    .local v19, ptr:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/Barcode128;->barHeight:F

    float-to-int v3, v1

    .line 804
    .local v3, height:I
    mul-int v1, v2, v3

    new-array v4, v1, [I

    .line 805
    .local v4, pix:[I
    const/16 v16, 0x0

    .local v16, k:I
    :goto_1
    array-length v1, v8

    move/from16 v0, v16

    if-ge v0, v1, :cond_6

    .line 806
    aget-byte v21, v8, v16

    .line 807
    .local v21, w:I
    move v9, v12

    .line 808
    .local v9, c:I
    if-eqz v18, :cond_0

    .line 809
    move v9, v11

    .line 810
    :cond_0
    if-nez v18, :cond_4

    const/16 v18, 0x1

    .line 811
    :goto_2
    const/4 v15, 0x0

    .local v15, j:I
    move/from16 v20, v19

    .end local v19           #ptr:I
    .local v20, ptr:I
    :goto_3
    move/from16 v0, v21

    if-ge v15, v0, :cond_5

    .line 812
    add-int/lit8 v19, v20, 0x1

    .end local v20           #ptr:I
    .restart local v19       #ptr:I
    aput v9, v4, v20

    .line 811
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19           #ptr:I
    .restart local v20       #ptr:I
    goto :goto_3

    .line 792
    .end local v2           #fullWidth:I
    .end local v3           #height:I
    .end local v4           #pix:[I
    .end local v7           #bCode:Ljava/lang/String;
    .end local v8           #bars:[B
    .end local v9           #c:I
    .end local v15           #j:I
    .end local v16           #k:I
    .end local v17           #len:I
    .end local v18           #print:Z
    .end local v20           #ptr:I
    .end local v21           #w:I
    .restart local v13       #idx:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    .restart local v7       #bCode:Ljava/lang/String;
    goto :goto_0

    .line 795
    .end local v7           #bCode:Ljava/lang/String;
    .end local v13           #idx:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/Barcode128;->codeType:I

    const/16 v6, 0xa

    if-ne v1, v6, :cond_3

    const/4 v1, 0x1

    :goto_4
    invoke-static {v5, v1}, Lcom/itextpdf/text/pdf/Barcode128;->getRawText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #bCode:Ljava/lang/String;
    goto :goto_0

    .end local v7           #bCode:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 810
    .restart local v2       #fullWidth:I
    .restart local v3       #height:I
    .restart local v4       #pix:[I
    .restart local v7       #bCode:Ljava/lang/String;
    .restart local v8       #bars:[B
    .restart local v9       #c:I
    .restart local v16       #k:I
    .restart local v17       #len:I
    .restart local v18       #print:Z
    .restart local v19       #ptr:I
    .restart local v21       #w:I
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 805
    .end local v19           #ptr:I
    .restart local v15       #j:I
    .restart local v20       #ptr:I
    :cond_5
    add-int/lit8 v16, v16, 0x1

    move/from16 v19, v20

    .end local v20           #ptr:I
    .restart local v19       #ptr:I
    goto :goto_1

    .line 814
    .end local v9           #c:I
    .end local v15           #j:I
    .end local v21           #w:I
    :cond_6
    move/from16 v16, v2

    :goto_5
    array-length v1, v4

    move/from16 v0, v16

    if-ge v0, v1, :cond_7

    .line 815
    const/4 v1, 0x0

    move/from16 v0, v16

    invoke-static {v4, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    add-int v16, v16, v2

    goto :goto_5

    .line 817
    :cond_7
    new-instance v1, Ljava/awt/image/MemoryImageSource;

    const/4 v5, 0x0

    move v6, v2

    invoke-direct/range {v1 .. v6}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v10, v1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v14

    .line 819
    .local v14, img:Ljava/awt/Image;
    return-object v14
.end method

.method public getBarcodeSize()Lcom/itextpdf/text/Rectangle;
    .locals 15

    .prologue
    const v14, 0xffff

    const/16 v13, 0xb

    const/16 v12, 0xa

    const/4 v7, 0x0

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, fontX:F
    const/4 v1, 0x0

    .line 521
    .local v1, fontY:F
    iget-object v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v8, :cond_1

    .line 522
    iget v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->baseline:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 523
    iget v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->baseline:F

    iget-object v9, p0, Lcom/itextpdf/text/pdf/Barcode128;->font:Lcom/itextpdf/text/pdf/BaseFont;

    const/4 v10, 0x3

    iget v11, p0, Lcom/itextpdf/text/pdf/Barcode128;->size:F

    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v9

    sub-float v1, v8, v9

    .line 526
    :goto_0
    iget v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->codeType:I

    if-ne v8, v13, :cond_4

    .line 527
    iget-object v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 528
    .local v5, idx:I
    if-gez v5, :cond_3

    .line 529
    const-string v2, ""

    .line 537
    .end local v5           #idx:I
    .local v2, fullCode:Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->font:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/Barcode128;->altText:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/Barcode128;->altText:Ljava/lang/String;

    .end local v2           #fullCode:Ljava/lang/String;
    :cond_0
    iget v9, p0, Lcom/itextpdf/text/pdf/Barcode128;->size:F

    invoke-virtual {v8, v2, v9}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v0

    .line 539
    :cond_1
    iget v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->codeType:I

    if-ne v8, v13, :cond_7

    .line 540
    iget-object v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 541
    .restart local v5       #idx:I
    if-ltz v5, :cond_6

    .line 542
    iget-object v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v8, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 549
    .end local v5           #idx:I
    .restart local v2       #fullCode:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    .line 550
    .local v6, len:I
    add-int/lit8 v7, v6, 0x2

    mul-int/lit8 v7, v7, 0xb

    int-to-float v7, v7

    iget v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->x:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    iget v9, p0, Lcom/itextpdf/text/pdf/Barcode128;->x:F

    mul-float/2addr v8, v9

    add-float v4, v7, v8

    .line 551
    .local v4, fullWidth:F
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 552
    iget v7, p0, Lcom/itextpdf/text/pdf/Barcode128;->barHeight:F

    add-float v3, v7, v1

    .line 553
    .local v3, fullHeight:F
    new-instance v7, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v7, v4, v3}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    return-object v7

    .line 525
    .end local v2           #fullCode:Ljava/lang/String;
    .end local v3           #fullHeight:F
    .end local v4           #fullWidth:F
    .end local v6           #len:I
    :cond_2
    iget v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->baseline:F

    neg-float v8, v8

    iget v9, p0, Lcom/itextpdf/text/pdf/Barcode128;->size:F

    add-float v1, v8, v9

    goto :goto_0

    .line 531
    .restart local v5       #idx:I
    :cond_3
    iget-object v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #fullCode:Ljava/lang/String;
    goto :goto_1

    .line 533
    .end local v2           #fullCode:Ljava/lang/String;
    .end local v5           #idx:I
    :cond_4
    iget v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->codeType:I

    if-ne v8, v12, :cond_5

    .line 534
    iget-object v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    invoke-static {v8}, Lcom/itextpdf/text/pdf/Barcode128;->getHumanReadableUCCEAN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #fullCode:Ljava/lang/String;
    goto :goto_1

    .line 536
    .end local v2           #fullCode:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    invoke-static {v8}, Lcom/itextpdf/text/pdf/Barcode128;->removeFNC1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #fullCode:Ljava/lang/String;
    goto :goto_1

    .line 544
    .end local v2           #fullCode:Ljava/lang/String;
    .restart local v5       #idx:I
    :cond_6
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    .restart local v2       #fullCode:Ljava/lang/String;
    goto :goto_2

    .line 547
    .end local v2           #fullCode:Ljava/lang/String;
    .end local v5           #idx:I
    :cond_7
    iget-object v8, p0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    iget v9, p0, Lcom/itextpdf/text/pdf/Barcode128;->codeType:I

    if-ne v9, v12, :cond_8

    const/4 v7, 0x1

    :cond_8
    invoke-static {v8, v7}, Lcom/itextpdf/text/pdf/Barcode128;->getRawText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #fullCode:Ljava/lang/String;
    goto :goto_2
.end method

.method public placeBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Rectangle;
    .locals 20
    .parameter "cb"
    .parameter "barColor"
    .parameter "textColor"

    .prologue
    .line 594
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->codeType:I

    move/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    move-object/from16 v17, v0

    const v18, 0xffff

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 596
    .local v10, idx:I
    if-gez v10, :cond_5

    .line 597
    const-string v8, ""

    .line 605
    .end local v10           #idx:I
    .local v8, fullCode:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 606
    .local v7, fontX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->altText:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/itextpdf/text/pdf/Barcode128;->altText:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->size:F

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v7

    .line 610
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->codeType:I

    move/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    move-object/from16 v17, v0

    const v18, 0xffff

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 612
    .restart local v10       #idx:I
    if-ltz v10, :cond_8

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 620
    .end local v10           #idx:I
    .local v3, bCode:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    .line 621
    .local v12, len:I
    add-int/lit8 v17, v12, 0x2

    mul-int/lit8 v17, v17, 0xb

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->x:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->x:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v9, v17, v18

    .line 622
    .local v9, fullWidth:F
    const/4 v4, 0x0

    .line 623
    .local v4, barStartX:F
    const/4 v14, 0x0

    .line 624
    .local v14, textStartX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->textAlignment:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 634
    :pswitch_0
    cmpl-float v17, v7, v9

    if-lez v17, :cond_c

    .line 635
    sub-float v17, v7, v9

    const/high16 v18, 0x4000

    div-float v4, v17, v18

    .line 640
    :goto_2
    :pswitch_1
    const/4 v5, 0x0

    .line 641
    .local v5, barStartY:F
    const/4 v15, 0x0

    .line 642
    .local v15, textStartY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->baseline:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_d

    .line 644
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->barHeight:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->baseline:F

    move/from16 v18, v0

    sub-float v15, v17, v18

    .line 650
    :cond_2
    :goto_3
    invoke-static {v3}, Lcom/itextpdf/text/pdf/Barcode128;->getBarsCode128Raw(Ljava/lang/String;)[B

    move-result-object v6

    .line 651
    .local v6, bars:[B
    const/4 v13, 0x1

    .line 652
    .local v13, print:Z
    if-eqz p2, :cond_3

    .line 653
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 654
    :cond_3
    const/4 v11, 0x0

    .local v11, k:I
    :goto_4
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_f

    .line 655
    aget-byte v17, v6, v11

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->x:F

    move/from16 v18, v0

    mul-float v16, v17, v18

    .line 656
    .local v16, w:F
    if-eqz v13, :cond_4

    .line 657
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->inkSpreading:F

    move/from16 v17, v0

    sub-float v17, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->barHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 658
    :cond_4
    if-nez v13, :cond_e

    const/4 v13, 0x1

    .line 659
    :goto_5
    add-float v4, v4, v16

    .line 654
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 599
    .end local v3           #bCode:Ljava/lang/String;
    .end local v4           #barStartX:F
    .end local v5           #barStartY:F
    .end local v6           #bars:[B
    .end local v7           #fontX:F
    .end local v8           #fullCode:Ljava/lang/String;
    .end local v9           #fullWidth:F
    .end local v11           #k:I
    .end local v12           #len:I
    .end local v13           #print:Z
    .end local v14           #textStartX:F
    .end local v15           #textStartY:F
    .end local v16           #w:F
    .restart local v10       #idx:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #fullCode:Ljava/lang/String;
    goto/16 :goto_0

    .line 601
    .end local v8           #fullCode:Ljava/lang/String;
    .end local v10           #idx:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->codeType:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/Barcode128;->getHumanReadableUCCEAN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #fullCode:Ljava/lang/String;
    goto/16 :goto_0

    .line 604
    .end local v8           #fullCode:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/Barcode128;->removeFNC1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #fullCode:Ljava/lang/String;
    goto/16 :goto_0

    .line 615
    .restart local v7       #fontX:F
    .restart local v10       #idx:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    .restart local v3       #bCode:Ljava/lang/String;
    goto/16 :goto_1

    .line 618
    .end local v3           #bCode:Ljava/lang/String;
    .end local v10           #idx:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->codeType:I

    move/from16 v17, v0

    const/16 v19, 0xa

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/Barcode128;->getRawText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #bCode:Ljava/lang/String;
    goto/16 :goto_1

    .end local v3           #bCode:Ljava/lang/String;
    :cond_a
    const/16 v17, 0x0

    goto :goto_6

    .line 628
    .restart local v3       #bCode:Ljava/lang/String;
    .restart local v4       #barStartX:F
    .restart local v9       #fullWidth:F
    .restart local v12       #len:I
    .restart local v14       #textStartX:F
    :pswitch_2
    cmpl-float v17, v7, v9

    if-lez v17, :cond_b

    .line 629
    sub-float v4, v7, v9

    goto/16 :goto_2

    .line 631
    :cond_b
    sub-float v14, v9, v7

    .line 632
    goto/16 :goto_2

    .line 637
    :cond_c
    sub-float v17, v9, v7

    const/high16 v18, 0x4000

    div-float v14, v17, v18

    goto/16 :goto_2

    .line 646
    .restart local v5       #barStartY:F
    .restart local v15       #textStartY:F
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->size:F

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v17

    move/from16 v0, v17

    neg-float v15, v0

    .line 647
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->baseline:F

    move/from16 v17, v0

    add-float v5, v15, v17

    goto/16 :goto_3

    .line 658
    .restart local v6       #bars:[B
    .restart local v11       #k:I
    .restart local v13       #print:Z
    .restart local v16       #w:F
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 661
    .end local v16           #w:F
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    .line 663
    if-eqz p3, :cond_10

    .line 664
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 665
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/Barcode128;->size:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 667
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 668
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 671
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/Barcode128;->getBarcodeSize()Lcom/itextpdf/text/Rectangle;

    move-result-object v17

    return-object v17

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 11
    .parameter "code"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 682
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/Barcode128;->getCodeType()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_8

    const-string v7, "("

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 683
    const/4 v2, 0x0

    .line 684
    .local v2, idx:I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    .local v5, ret:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    if-ltz v2, :cond_7

    .line 686
    const/16 v7, 0x29

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 687
    .local v1, end:I
    if-gez v1, :cond_1

    .line 688
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "badly.formed.ucc.string.1"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 689
    :cond_1
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 690
    .local v6, sai:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_2

    .line 691
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "ai.too.short.1"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 692
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 693
    .local v0, ai:I
    sget-object v7, Lcom/itextpdf/text/pdf/Barcode128;->ais:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v3

    .line 694
    .local v3, len:I
    if-nez v3, :cond_3

    .line 695
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "ai.not.found.1"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 696
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 697
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 698
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 699
    :cond_4
    const/16 v7, 0x28

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 700
    if-gez v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 701
    .local v4, next:I
    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    if-gez v3, :cond_6

    .line 703
    if-ltz v2, :cond_0

    .line 704
    const/16 v7, 0xca

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .end local v4           #next:I
    :cond_5
    move v4, v2

    .line 700
    goto :goto_1

    .line 706
    .restart local v4       #next:I
    :cond_6
    sub-int v7, v4, v1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-eq v7, v3, :cond_0

    .line 707
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid.ai.length.1"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 709
    .end local v0           #ai:I
    .end local v1           #end:I
    .end local v3           #len:I
    .end local v4           #next:I
    .end local v6           #sai:Ljava/lang/String;
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-super {p0, v7}, Lcom/itextpdf/text/pdf/Barcode;->setCode(Ljava/lang/String;)V

    .line 713
    .end local v2           #idx:I
    .end local v5           #ret:Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 712
    :cond_8
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/Barcode;->setCode(Ljava/lang/String;)V

    goto :goto_2
.end method
