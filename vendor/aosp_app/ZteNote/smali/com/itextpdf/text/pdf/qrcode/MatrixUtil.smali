.class public final Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field private static final HORIZONTAL_SEPARATION_PATTERN:[[I = null

.field private static final POSITION_ADJUSTMENT_PATTERN:[[I = null

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I = null

.field private static final POSITION_DETECTION_PATTERN:[[I = null

.field private static final TYPE_INFO_COORDINATES:[[I = null

.field private static final TYPE_INFO_MASK_PATTERN:I = 0x5412

.field private static final TYPE_INFO_POLY:I = 0x537

.field private static final VERSION_INFO_POLY:I = 0x1f25

.field private static final VERTICAL_SEPARATION_PATTERN:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x7

    .line 30
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 40
    new-array v0, v6, [[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    .line 44
    new-array v0, v3, [[I

    new-array v1, v6, [I

    aput v4, v1, v4

    aput-object v1, v0, v4

    new-array v1, v6, [I

    aput v4, v1, v4

    aput-object v1, v0, v6

    new-array v1, v6, [I

    aput v4, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v6, [I

    aput v4, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [I

    aput v4, v2, v4

    aput-object v2, v0, v1

    new-array v1, v6, [I

    aput v4, v1, v4

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v2, v6, [I

    aput v4, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    .line 48
    new-array v0, v7, [[I

    new-array v1, v7, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    new-array v1, v7, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    new-array v1, v7, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v7, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    .line 57
    const/16 v0, 0x28

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v3

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    .line 101
    const/16 v0, 0xf

    new-array v0, v0, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_35

    aput-object v1, v0, v4

    new-array v1, v5, [I

    fill-array-data v1, :array_36

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_37

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v5, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    new-array v1, v5, [I

    fill-array-data v1, :array_3a

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v2, v5, [I

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    new-array v1, v5, [I

    fill-array-data v1, :array_3c

    aput-object v1, v0, v3

    const/16 v1, 0x8

    new-array v2, v5, [I

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [I

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [I

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [I

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [I

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [I

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void

    .line 30
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 40
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 48
    :array_8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 57
    :array_d
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_f
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_10
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_11
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_12
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_13
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_14
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_15
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_16
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_17
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_18
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_19
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1b
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1d
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1f
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_20
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_21
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_22
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_23
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_24
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_25
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_26
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_27
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_28
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_29
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2b
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x86t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2d
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x92t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2f
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
    .end array-data

    :array_30
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
    .end array-data

    :array_31
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
    .end array-data

    :array_32
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
    .end array-data

    :array_33
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
    .end array-data

    :array_34
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
    .end array-data

    .line 101
    :array_35
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_36
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_37
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_38
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_39
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_3a
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_3b
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_3c
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_3d
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_3e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_3f
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_40
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_41
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_42
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_43
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static buildMatrix(Lcom/itextpdf/text/pdf/qrcode/BitVector;Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 0
    .parameter "dataBits"
    .parameter "ecLevel"
    .parameter "version"
    .parameter "maskPattern"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p4}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->clearMatrix(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 139
    invoke-static {p2, p4}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedBasicPatterns(ILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 141
    invoke-static {p1, p3, p4}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedTypeInfo(Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 143
    invoke-static {p2, p4}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->maybeEmbedVersionInfo(ILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 145
    invoke-static {p0, p3, p4}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedDataBits(Lcom/itextpdf/text/pdf/qrcode/BitVector;ILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 146
    return-void
.end method

.method public static calculateBCHCode(II)I
    .locals 2
    .parameter "value"
    .parameter "poly"

    .prologue
    .line 313
    invoke-static {p1}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->findMSBSet(I)I

    move-result v0

    .line 314
    .local v0, msbSetInPoly:I
    add-int/lit8 v1, v0, -0x1

    shl-int/2addr p0, v1

    .line 316
    :goto_0
    invoke-static {p0}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->findMSBSet(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 317
    invoke-static {p0}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->findMSBSet(I)I

    move-result v1

    sub-int/2addr v1, v0

    shl-int v1, p1, v1

    xor-int/2addr p0, v1

    goto :goto_0

    .line 320
    :cond_0
    return p0
.end method

.method public static clearMatrix(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 1
    .parameter "matrix"

    .prologue
    .line 131
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->clear(B)V

    .line 132
    return-void
.end method

.method public static embedBasicPatterns(ILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 0
    .parameter "version"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {p1}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedPositionDetectionPatternsAndSeparators(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 158
    invoke-static {p1}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedDarkDotAtLeftBottomCorner(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 161
    invoke-static {p0, p1}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->maybeEmbedPositionAdjustmentPatterns(ILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 163
    invoke-static {p1}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedTimingPatterns(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 164
    return-void
.end method

.method private static embedDarkDotAtLeftBottomCorner(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 3
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 394
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->get(II)B

    move-result v0

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>()V

    throw v0

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->set(III)V

    .line 398
    return-void
.end method

.method public static embedDataBits(Lcom/itextpdf/text/pdf/qrcode/BitVector;ILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 10
    .parameter "dataBits"
    .parameter "maskPattern"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, bitIndex:I
    const/4 v2, -0x1

    .line 227
    .local v2, direction:I
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 228
    .local v4, x:I
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .line 229
    .local v6, y:I
    :goto_0
    if-lez v4, :cond_6

    .line 231
    const/4 v7, 0x6

    if-ne v4, v7, :cond_0

    .line 232
    add-int/lit8 v4, v4, -0x1

    .line 234
    :cond_0
    :goto_1
    if-ltz v6, :cond_5

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 235
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    const/4 v7, 0x2

    if-ge v3, v7, :cond_4

    .line 236
    sub-int v5, v4, v3

    .line 238
    .local v5, xx:I
    invoke-virtual {p2, v5, v6}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->get(II)B

    move-result v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->isEmpty(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 235
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 243
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->at(I)I

    move-result v0

    .line 244
    .local v0, bit:I
    add-int/lit8 v1, v1, 0x1

    .line 252
    :goto_4
    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    .line 253
    invoke-static {p1, v5, v6}, Lcom/itextpdf/text/pdf/qrcode/MaskUtil;->getDataMaskBit(III)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 254
    xor-int/lit8 v0, v0, 0x1

    .line 257
    :cond_2
    invoke-virtual {p2, v5, v6, v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->set(III)V

    goto :goto_3

    .line 248
    .end local v0           #bit:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #bit:I
    goto :goto_4

    .line 259
    .end local v0           #bit:I
    .end local v5           #xx:I
    :cond_4
    add-int/2addr v6, v2

    goto :goto_1

    .line 261
    .end local v3           #i:I
    :cond_5
    neg-int v2, v2

    .line 262
    add-int/2addr v6, v2

    .line 263
    add-int/lit8 v4, v4, -0x2

    goto :goto_0

    .line 266
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v7

    if-eq v1, v7, :cond_7

    .line 267
    new-instance v7, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not all bits consumed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 269
    :cond_7
    return-void
.end method

.method private static embedHorizontalSeparationPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 5
    .parameter "xStart"
    .parameter "yStart"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 403
    sget-object v1, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    aget-object v1, v1, v3

    array-length v1, v1

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    array-length v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 404
    :cond_0
    new-instance v1, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v2, "Bad horizontal separation pattern"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_1
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 407
    add-int v1, p0, v0

    invoke-virtual {p2, v1, p1}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->get(II)B

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->isEmpty(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 408
    new-instance v1, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>()V

    throw v1

    .line 410
    :cond_2
    add-int v1, p0, v0

    sget-object v2, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    aget-object v2, v2, v3

    aget v2, v2, v0

    invoke-virtual {p2, v1, p1, v2}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->set(III)V

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_3
    return-void
.end method

.method private static embedPositionAdjustmentPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 6
    .parameter "xStart"
    .parameter "yStart"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    .line 434
    sget-object v2, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    if-ne v2, v5, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    array-length v2, v2

    if-eq v2, v5, :cond_1

    .line 435
    :cond_0
    new-instance v2, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v3, "Bad position adjustment"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 437
    :cond_1
    const/4 v1, 0x0

    .local v1, y:I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 438
    const/4 v0, 0x0

    .local v0, x:I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 439
    add-int v2, p0, v0

    add-int v3, p1, v1

    invoke-virtual {p2, v2, v3}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 440
    new-instance v2, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>()V

    throw v2

    .line 442
    :cond_2
    add-int v2, p0, v0

    add-int v3, p1, v1

    sget-object v4, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-virtual {p2, v2, v3, v4}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->set(III)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 437
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v0           #x:I
    :cond_4
    return-void
.end method

.method private static embedPositionDetectionPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 6
    .parameter "xStart"
    .parameter "yStart"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x7

    .line 450
    sget-object v2, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    if-ne v2, v5, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    array-length v2, v2

    if-eq v2, v5, :cond_1

    .line 451
    :cond_0
    new-instance v2, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v3, "Bad position detection pattern"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 453
    :cond_1
    const/4 v1, 0x0

    .local v1, y:I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 454
    const/4 v0, 0x0

    .local v0, x:I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 455
    add-int v2, p0, v0

    add-int v3, p1, v1

    invoke-virtual {p2, v2, v3}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 456
    new-instance v2, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>()V

    throw v2

    .line 458
    :cond_2
    add-int v2, p0, v0

    add-int v3, p1, v1

    sget-object v4, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-virtual {p2, v2, v3, v4}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->set(III)V

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    .end local v0           #x:I
    :cond_4
    return-void
.end method

.method private static embedPositionDetectionPatternsAndSeparators(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 6
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 466
    sget-object v3, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v3, v3, v5

    array-length v1, v3

    .line 468
    .local v1, pdpWidth:I
    invoke-static {v5, v5, p0}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedPositionDetectionPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 470
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3, v5, p0}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedPositionDetectionPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 472
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v5, v3, p0}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedPositionDetectionPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 475
    sget-object v3, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    aget-object v3, v3, v5

    array-length v0, v3

    .line 477
    .local v0, hspWidth:I
    add-int/lit8 v3, v0, -0x1

    invoke-static {v5, v3, p0}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 479
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4, p0}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 482
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v5, v3, p0}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 485
    sget-object v3, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    array-length v2, v3

    .line 487
    .local v2, vspSize:I
    invoke-static {v2, v5, p0}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedVerticalSeparationPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 489
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v5, p0}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedVerticalSeparationPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 491
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v2, v3, p0}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedVerticalSeparationPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    .line 493
    return-void
.end method

.method private static embedTimingPatterns(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 4
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    .line 373
    const/16 v1, 0x8

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    if-ge v1, v2, :cond_4

    .line 374
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v0, v2, 0x2

    .line 376
    .local v0, bit:I
    invoke-virtual {p0, v1, v3}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->isValidValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    new-instance v2, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>()V

    throw v2

    .line 379
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {p0, v1, v3, v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->set(III)V

    .line 383
    :cond_1
    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->isValidValue(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 384
    new-instance v2, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>()V

    throw v2

    .line 386
    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 387
    invoke-virtual {p0, v3, v1, v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->set(III)V

    .line 373
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .end local v0           #bit:I
    :cond_4
    return-void
.end method

.method public static embedTypeInfo(Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 9
    .parameter "ecLevel"
    .parameter "maskPattern"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v2, Lcom/itextpdf/text/pdf/qrcode/BitVector;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/qrcode/BitVector;-><init>()V

    .line 170
    .local v2, typeInfoBits:Lcom/itextpdf/text/pdf/qrcode/BitVector;
    invoke-static {p0, p1, v2}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->makeTypeInfoBits(Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/text/pdf/qrcode/BitVector;)V

    .line 172
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 175
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v1

    invoke-virtual {v2, v7}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->at(I)I

    move-result v0

    .line 178
    .local v0, bit:I
    sget-object v7, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v7, v7, v1

    const/4 v8, 0x0

    aget v3, v7, v8

    .line 179
    .local v3, x1:I
    sget-object v7, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v7, v7, v1

    const/4 v8, 0x1

    aget v5, v7, v8

    .line 180
    .local v5, y1:I
    invoke-virtual {p2, v3, v5, v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->set(III)V

    .line 182
    const/16 v7, 0x8

    if-ge v1, v7, :cond_0

    .line 184
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    add-int/lit8 v4, v7, -0x1

    .line 185
    .local v4, x2:I
    const/16 v6, 0x8

    .line 186
    .local v6, y2:I
    invoke-virtual {p2, v4, v6, v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->set(III)V

    .line 172
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v4           #x2:I
    .end local v6           #y2:I
    :cond_0
    const/16 v4, 0x8

    .line 190
    .restart local v4       #x2:I
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x7

    add-int/lit8 v8, v1, -0x8

    add-int v6, v7, v8

    .line 191
    .restart local v6       #y2:I
    invoke-virtual {p2, v4, v6, v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->set(III)V

    goto :goto_1

    .line 194
    .end local v0           #bit:I
    .end local v3           #x1:I
    .end local v4           #x2:I
    .end local v5           #y1:I
    .end local v6           #y2:I
    :cond_1
    return-void
.end method

.method private static embedVerticalSeparationPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 5
    .parameter "xStart"
    .parameter "yStart"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 417
    sget-object v1, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    aget-object v1, v1, v3

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    array-length v1, v1

    if-eq v1, v4, :cond_1

    .line 418
    :cond_0
    new-instance v1, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v2, "Bad vertical separation pattern"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :cond_1
    const/4 v0, 0x0

    .local v0, y:I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 421
    add-int v1, p1, v0

    invoke-virtual {p2, p0, v1}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->get(II)B

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->isEmpty(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 422
    new-instance v1, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>()V

    throw v1

    .line 424
    :cond_2
    add-int v1, p1, v0

    sget-object v2, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    aget-object v2, v2, v0

    aget v2, v2, v3

    invoke-virtual {p2, p0, v1, v2}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->set(III)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_3
    return-void
.end method

.method public static findMSBSet(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, numDigits:I
    :goto_0
    if-eqz p0, :cond_0

    .line 279
    ushr-int/lit8 p0, p0, 0x1

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return v0
.end method

.method private static isEmpty(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 360
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidValue(I)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 365
    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeTypeInfoBits(Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/text/pdf/qrcode/BitVector;)V
    .locals 6
    .parameter "ecLevel"
    .parameter "maskPattern"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xf

    .line 328
    invoke-static {p1}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->isValidMaskPattern(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    new-instance v3, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    const-string v4, "Invalid mask pattern"

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->getBits()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    or-int v2, v3, p1

    .line 332
    .local v2, typeInfo:I
    const/4 v3, 0x5

    invoke-virtual {p2, v2, v3}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 334
    const/16 v3, 0x537

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    .line 335
    .local v0, bchCode:I
    const/16 v3, 0xa

    invoke-virtual {p2, v0, v3}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 337
    new-instance v1, Lcom/itextpdf/text/pdf/qrcode/BitVector;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;-><init>()V

    .line 338
    .local v1, maskBits:Lcom/itextpdf/text/pdf/qrcode/BitVector;
    const/16 v3, 0x5412

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 339
    invoke-virtual {p2, v1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->xor(Lcom/itextpdf/text/pdf/qrcode/BitVector;)V

    .line 341
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 342
    new-instance v3, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "should not happen but we got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 344
    :cond_1
    return-void
.end method

.method public static makeVersionInfoBits(ILcom/itextpdf/text/pdf/qrcode/BitVector;)V
    .locals 4
    .parameter "version"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 349
    const/4 v1, 0x6

    invoke-virtual {p1, p0, v1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 350
    const/16 v1, 0x1f25

    invoke-static {p0, v1}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    .line 351
    .local v0, bchCode:I
    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBits(II)V

    .line 353
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    .line 354
    new-instance v1, Lcom/itextpdf/text/pdf/qrcode/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "should not happen but we got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 356
    :cond_0
    return-void
.end method

.method private static maybeEmbedPositionAdjustmentPatterns(ILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 10
    .parameter "version"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 498
    const/4 v7, 0x2

    if-ge p0, v7, :cond_1

    .line 519
    :cond_0
    return-void

    .line 501
    :cond_1
    add-int/lit8 v2, p0, -0x1

    .line 502
    .local v2, index:I
    sget-object v7, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v0, v7, v2

    .line 503
    .local v0, coordinates:[I
    sget-object v7, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v7, v7, v2

    array-length v4, v7

    .line 504
    .local v4, numCoordinates:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 505
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 506
    aget v6, v0, v1

    .line 507
    .local v6, y:I
    aget v5, v0, v3

    .line 508
    .local v5, x:I
    if-eq v5, v9, :cond_2

    if-ne v6, v9, :cond_3

    .line 505
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 512
    :cond_3
    invoke-virtual {p1, v5, v6}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->get(II)B

    move-result v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->isEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 515
    add-int/lit8 v7, v5, -0x2

    add-int/lit8 v8, v6, -0x2

    invoke-static {v7, v8, p1}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->embedPositionAdjustmentPattern(IILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V

    goto :goto_2

    .line 504
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static maybeEmbedVersionInfo(ILcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 6
    .parameter "version"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/qrcode/WriterException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v5, 0x7

    if-ge p0, v5, :cond_1

    .line 217
    :cond_0
    return-void

    .line 202
    :cond_1
    new-instance v4, Lcom/itextpdf/text/pdf/qrcode/BitVector;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/qrcode/BitVector;-><init>()V

    .line 203
    .local v4, versionInfoBits:Lcom/itextpdf/text/pdf/qrcode/BitVector;
    invoke-static {p0, v4}, Lcom/itextpdf/text/pdf/qrcode/MatrixUtil;->makeVersionInfoBits(ILcom/itextpdf/text/pdf/qrcode/BitVector;)V

    .line 205
    const/16 v1, 0x11

    .line 206
    .local v1, bitIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x6

    if-ge v2, v5, :cond_0

    .line 207
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    const/4 v5, 0x3

    if-ge v3, v5, :cond_2

    .line 209
    invoke-virtual {v4, v1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->at(I)I

    move-result v0

    .line 210
    .local v0, bit:I
    add-int/lit8 v1, v1, -0x1

    .line 212
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5, v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->set(III)V

    .line 214
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v5, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->set(III)V

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    .end local v0           #bit:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
