.class public Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;
.super Ljava/lang/Object;
.source "CCITTG4Encoder.java"


# static fields
.field private static final CODE:I = 0x1

.field private static final EOL:I = 0x1

.field private static final G3CODE_EOF:I = -0x3

.field private static final G3CODE_EOL:I = -0x1

.field private static final G3CODE_INCOMP:I = -0x4

.field private static final G3CODE_INVALID:I = -0x2

.field private static final LENGTH:I = 0x0

.field private static final RUNLEN:I = 0x2

.field private static oneruns:[B

.field private static zeroruns:[B


# instance fields
.field private TIFFFaxBlackCodes:[[I

.field private TIFFFaxWhiteCodes:[[I

.field private bit:I

.field private data:I

.field private dataBp:[B

.field private horizcode:[I

.field private msbmask:[I

.field private offsetData:I

.field private outBuf:Lcom/itextpdf/text/pdf/ByteBuffer;

.field private passcode:[I

.field private refline:[B

.field private rowbytes:I

.field private rowpixels:I

.field private sizeData:I

.field private vcodes:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 306
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->zeroruns:[B

    .line 325
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->oneruns:[B

    return-void

    .line 306
    nop

    :array_0
    .array-data 0x1
        0x8t
        0x7t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 325
    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 8
    .parameter "width"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x8

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->bit:I

    .line 57
    new-instance v0, Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 356
    const/16 v0, 0x6d

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [I

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [I

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [I

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [I

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [I

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [I

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [I

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [I

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [I

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [I

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v3, [I

    fill-array-data v2, :array_45

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v3, [I

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v3, [I

    fill-array-data v2, :array_47

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [I

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [I

    fill-array-data v2, :array_49

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v3, [I

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v3, [I

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v3, [I

    fill-array-data v2, :array_4c

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v3, [I

    fill-array-data v2, :array_4d

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v3, [I

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v3, [I

    fill-array-data v2, :array_4f

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v3, [I

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v3, [I

    fill-array-data v2, :array_51

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v3, [I

    fill-array-data v2, :array_52

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v3, [I

    fill-array-data v2, :array_53

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v3, [I

    fill-array-data v2, :array_54

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v3, [I

    fill-array-data v2, :array_55

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v3, [I

    fill-array-data v2, :array_56

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v3, [I

    fill-array-data v2, :array_57

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v3, [I

    fill-array-data v2, :array_58

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v3, [I

    fill-array-data v2, :array_59

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v3, [I

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v3, [I

    fill-array-data v2, :array_5b

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v3, [I

    fill-array-data v2, :array_5c

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v3, [I

    fill-array-data v2, :array_5d

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v3, [I

    fill-array-data v2, :array_5e

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v3, [I

    fill-array-data v2, :array_5f

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v3, [I

    fill-array-data v2, :array_60

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v3, [I

    fill-array-data v2, :array_61

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v3, [I

    fill-array-data v2, :array_62

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v3, [I

    fill-array-data v2, :array_63

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v3, [I

    fill-array-data v2, :array_64

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v3, [I

    fill-array-data v2, :array_65

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v3, [I

    fill-array-data v2, :array_66

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v3, [I

    fill-array-data v2, :array_67

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v3, [I

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v3, [I

    fill-array-data v2, :array_69

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v3, [I

    fill-array-data v2, :array_6a

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v3, [I

    fill-array-data v2, :array_6b

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v3, [I

    fill-array-data v2, :array_6c

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->TIFFFaxWhiteCodes:[[I

    .line 468
    const/16 v0, 0x6d

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_6e

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_6f

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_70

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_71

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_72

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_73

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_74

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_75

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_76

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_77

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_78

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_79

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_7a

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_7b

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_7c

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_7d

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_7e

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_7f

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_80

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_81

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_82

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_83

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_84

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_85

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_86

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_87

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_88

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_89

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_8a

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_8b

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_8c

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_8d

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_8e

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_8f

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_90

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_91

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_92

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_93

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_94

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [I

    fill-array-data v2, :array_95

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [I

    fill-array-data v2, :array_96

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [I

    fill-array-data v2, :array_97

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [I

    fill-array-data v2, :array_98

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [I

    fill-array-data v2, :array_99

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [I

    fill-array-data v2, :array_9a

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [I

    fill-array-data v2, :array_9b

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [I

    fill-array-data v2, :array_9c

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [I

    fill-array-data v2, :array_9d

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [I

    fill-array-data v2, :array_9e

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [I

    fill-array-data v2, :array_9f

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [I

    fill-array-data v2, :array_a0

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [I

    fill-array-data v2, :array_a1

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [I

    fill-array-data v2, :array_a2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [I

    fill-array-data v2, :array_a3

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [I

    fill-array-data v2, :array_a4

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [I

    fill-array-data v2, :array_a5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [I

    fill-array-data v2, :array_a6

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [I

    fill-array-data v2, :array_a7

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [I

    fill-array-data v2, :array_a8

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [I

    fill-array-data v2, :array_a9

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [I

    fill-array-data v2, :array_aa

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [I

    fill-array-data v2, :array_ab

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [I

    fill-array-data v2, :array_ac

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [I

    fill-array-data v2, :array_ad

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [I

    fill-array-data v2, :array_ae

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [I

    fill-array-data v2, :array_af

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [I

    fill-array-data v2, :array_b0

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [I

    fill-array-data v2, :array_b1

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v3, [I

    fill-array-data v2, :array_b2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v3, [I

    fill-array-data v2, :array_b3

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v3, [I

    fill-array-data v2, :array_b4

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [I

    fill-array-data v2, :array_b5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [I

    fill-array-data v2, :array_b6

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v3, [I

    fill-array-data v2, :array_b7

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v3, [I

    fill-array-data v2, :array_b8

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v3, [I

    fill-array-data v2, :array_b9

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v3, [I

    fill-array-data v2, :array_ba

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v3, [I

    fill-array-data v2, :array_bb

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v3, [I

    fill-array-data v2, :array_bc

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v3, [I

    fill-array-data v2, :array_bd

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v3, [I

    fill-array-data v2, :array_be

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v3, [I

    fill-array-data v2, :array_bf

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v3, [I

    fill-array-data v2, :array_c0

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v3, [I

    fill-array-data v2, :array_c1

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v3, [I

    fill-array-data v2, :array_c2

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v3, [I

    fill-array-data v2, :array_c3

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v3, [I

    fill-array-data v2, :array_c4

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v3, [I

    fill-array-data v2, :array_c5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v3, [I

    fill-array-data v2, :array_c6

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v3, [I

    fill-array-data v2, :array_c7

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v3, [I

    fill-array-data v2, :array_c8

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v3, [I

    fill-array-data v2, :array_c9

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v3, [I

    fill-array-data v2, :array_ca

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v3, [I

    fill-array-data v2, :array_cb

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v3, [I

    fill-array-data v2, :array_cc

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v3, [I

    fill-array-data v2, :array_cd

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v3, [I

    fill-array-data v2, :array_ce

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v3, [I

    fill-array-data v2, :array_cf

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v3, [I

    fill-array-data v2, :array_d0

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v3, [I

    fill-array-data v2, :array_d1

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v3, [I

    fill-array-data v2, :array_d2

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v3, [I

    fill-array-data v2, :array_d3

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v3, [I

    fill-array-data v2, :array_d4

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v3, [I

    fill-array-data v2, :array_d5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v3, [I

    fill-array-data v2, :array_d6

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v3, [I

    fill-array-data v2, :array_d7

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v3, [I

    fill-array-data v2, :array_d8

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v3, [I

    fill-array-data v2, :array_d9

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->TIFFFaxBlackCodes:[[I

    .line 580
    new-array v0, v3, [I

    fill-array-data v0, :array_da

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->horizcode:[I

    .line 582
    new-array v0, v3, [I

    fill-array-data v0, :array_db

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->passcode:[I

    .line 584
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_dc

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_dd

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_de

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_df

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_e0

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_e1

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_e2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->vcodes:[[I

    .line 593
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_e3

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->msbmask:[I

    .line 67
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowpixels:I

    .line 68
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowpixels:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowbytes:I

    .line 69
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowbytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->refline:[B

    .line 70
    return-void

    .line 356
    nop

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    :array_20
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_21
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
    .end array-data

    :array_22
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
    .end array-data

    :array_24
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
    .end array-data

    :array_25
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    :array_26
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
    .end array-data

    :array_27
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_28
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    :array_29
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
    .end array-data

    :array_2a
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data

    :array_2b
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data

    :array_2c
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_2d
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    :array_2e
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    :array_2f
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
    .end array-data

    :array_30
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    :array_31
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    :array_32
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data

    :array_33
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
    .end array-data

    :array_34
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
    .end array-data

    :array_35
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
    .end array-data

    :array_36
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
    .end array-data

    :array_37
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
    .end array-data

    :array_38
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
    .end array-data

    :array_39
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
    .end array-data

    :array_3a
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
    .end array-data

    :array_3b
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
    .end array-data

    :array_3c
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_3d
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
    .end array-data

    :array_3e
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
    .end array-data

    :array_3f
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
    .end array-data

    :array_40
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
    .end array-data

    :array_41
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data

    :array_42
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
    .end array-data

    :array_43
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data

    :array_44
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
    .end array-data

    :array_45
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
    .end array-data

    :array_46
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc0t 0x1t 0x0t 0x0t
    .end array-data

    :array_47
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
    .end array-data

    :array_48
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x40t 0x2t 0x0t 0x0t
    .end array-data

    :array_49
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x80t 0x2t 0x0t 0x0t
    .end array-data

    :array_4a
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
        0xc0t 0x2t 0x0t 0x0t
    .end array-data

    :array_4b
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0x0t 0x3t 0x0t 0x0t
    .end array-data

    :array_4c
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0x40t 0x3t 0x0t 0x0t
    .end array-data

    :array_4d
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0x80t 0x3t 0x0t 0x0t
    .end array-data

    :array_4e
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xc0t 0x3t 0x0t 0x0t
    .end array-data

    :array_4f
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
    .end array-data

    :array_50
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0x40t 0x4t 0x0t 0x0t
    .end array-data

    :array_51
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xd7t 0x0t 0x0t 0x0t
        0x80t 0x4t 0x0t 0x0t
    .end array-data

    :array_52
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xc0t 0x4t 0x0t 0x0t
    .end array-data

    :array_53
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xd9t 0x0t 0x0t 0x0t
        0x0t 0x5t 0x0t 0x0t
    .end array-data

    :array_54
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xdat 0x0t 0x0t 0x0t
        0x40t 0x5t 0x0t 0x0t
    .end array-data

    :array_55
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xdbt 0x0t 0x0t 0x0t
        0x80t 0x5t 0x0t 0x0t
    .end array-data

    :array_56
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xc0t 0x5t 0x0t 0x0t
    .end array-data

    :array_57
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0x0t 0x6t 0x0t 0x0t
    .end array-data

    :array_58
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data

    :array_59
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x80t 0x6t 0x0t 0x0t
    .end array-data

    :array_5a
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
        0xc0t 0x6t 0x0t 0x0t
    .end array-data

    :array_5b
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x7t 0x0t 0x0t
    .end array-data

    :array_5c
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x40t 0x7t 0x0t 0x0t
    .end array-data

    :array_5d
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x80t 0x7t 0x0t 0x0t
    .end array-data

    :array_5e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xc0t 0x7t 0x0t 0x0t
    .end array-data

    :array_5f
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
    .end array-data

    :array_60
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x40t 0x8t 0x0t 0x0t
    .end array-data

    :array_61
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x80t 0x8t 0x0t 0x0t
    .end array-data

    :array_62
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0xc0t 0x8t 0x0t 0x0t
    .end array-data

    :array_63
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x0t 0x9t 0x0t 0x0t
    .end array-data

    :array_64
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x40t 0x9t 0x0t 0x0t
    .end array-data

    :array_65
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x80t 0x9t 0x0t 0x0t
    .end array-data

    :array_66
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xc0t 0x9t 0x0t 0x0t
    .end array-data

    :array_67
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0xat 0x0t 0x0t
    .end array-data

    :array_68
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_69
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_6a
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_6b
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_6c
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    .line 468
    :array_6d
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6e
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6f
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_70
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_71
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_72
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_73
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_74
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_75
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_76
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    :array_77
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    :array_78
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_79
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_7a
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_7b
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    :array_7c
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_7d
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_7e
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    :array_7f
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    :array_80
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    :array_81
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    :array_82
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    :array_83
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    :array_84
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
    .end array-data

    :array_85
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    :array_86
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_87
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data

    :array_88
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
    .end array-data

    :array_89
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    :array_8a
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
    .end array-data

    :array_8b
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_8c
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    :array_8d
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_8e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
    .end array-data

    :array_8f
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    :array_90
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
    .end array-data

    :array_91
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
    .end array-data

    :array_92
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    :array_93
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
    .end array-data

    :array_94
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xd7t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_95
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    :array_96
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
    .end array-data

    :array_97
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xdat 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data

    :array_98
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xdbt 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data

    :array_99
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_9a
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    :array_9b
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    :array_9c
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
    .end array-data

    :array_9d
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    :array_9e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    :array_9f
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data

    :array_a0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
    .end array-data

    :array_a1
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
    .end array-data

    :array_a2
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
    .end array-data

    :array_a3
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
    .end array-data

    :array_a4
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
    .end array-data

    :array_a5
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
    .end array-data

    :array_a6
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
    .end array-data

    :array_a7
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
    .end array-data

    :array_a8
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
    .end array-data

    :array_a9
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_aa
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
    .end array-data

    :array_ab
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
    .end array-data

    :array_ac
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
    .end array-data

    :array_ad
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
    .end array-data

    :array_ae
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data

    :array_af
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
    .end array-data

    :array_b0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data

    :array_b1
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
    .end array-data

    :array_b2
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
    .end array-data

    :array_b3
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0xc0t 0x1t 0x0t 0x0t
    .end array-data

    :array_b4
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
    .end array-data

    :array_b5
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x40t 0x2t 0x0t 0x0t
    .end array-data

    :array_b6
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x80t 0x2t 0x0t 0x0t
    .end array-data

    :array_b7
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0xc0t 0x2t 0x0t 0x0t
    .end array-data

    :array_b8
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x0t 0x3t 0x0t 0x0t
    .end array-data

    :array_b9
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x40t 0x3t 0x0t 0x0t
    .end array-data

    :array_ba
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x80t 0x3t 0x0t 0x0t
    .end array-data

    :array_bb
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0xc0t 0x3t 0x0t 0x0t
    .end array-data

    :array_bc
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
    .end array-data

    :array_bd
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x40t 0x4t 0x0t 0x0t
    .end array-data

    :array_be
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x80t 0x4t 0x0t 0x0t
    .end array-data

    :array_bf
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0xc0t 0x4t 0x0t 0x0t
    .end array-data

    :array_c0
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x0t 0x5t 0x0t 0x0t
    .end array-data

    :array_c1
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x40t 0x5t 0x0t 0x0t
    .end array-data

    :array_c2
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x80t 0x5t 0x0t 0x0t
    .end array-data

    :array_c3
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0xc0t 0x5t 0x0t 0x0t
    .end array-data

    :array_c4
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x0t 0x6t 0x0t 0x0t
    .end array-data

    :array_c5
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data

    :array_c6
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x80t 0x6t 0x0t 0x0t
    .end array-data

    :array_c7
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xc0t 0x6t 0x0t 0x0t
    .end array-data

    :array_c8
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x7t 0x0t 0x0t
    .end array-data

    :array_c9
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x40t 0x7t 0x0t 0x0t
    .end array-data

    :array_ca
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x80t 0x7t 0x0t 0x0t
    .end array-data

    :array_cb
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xc0t 0x7t 0x0t 0x0t
    .end array-data

    :array_cc
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
    .end array-data

    :array_cd
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x40t 0x8t 0x0t 0x0t
    .end array-data

    :array_ce
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x80t 0x8t 0x0t 0x0t
    .end array-data

    :array_cf
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0xc0t 0x8t 0x0t 0x0t
    .end array-data

    :array_d0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x0t 0x9t 0x0t 0x0t
    .end array-data

    :array_d1
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x40t 0x9t 0x0t 0x0t
    .end array-data

    :array_d2
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x80t 0x9t 0x0t 0x0t
    .end array-data

    :array_d3
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xc0t 0x9t 0x0t 0x0t
    .end array-data

    :array_d4
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0xat 0x0t 0x0t
    .end array-data

    :array_d5
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_d6
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_d7
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_d8
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_d9
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    .line 580
    :array_da
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 582
    :array_db
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 584
    :array_dc
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_dd
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_de
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_df
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_e0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_e1
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_e2
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 593
    :array_e3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private Fax3Encode2DRow()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, a0:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->dataBp:[B

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v7, v8, v6}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v7

    if-eqz v7, :cond_2

    move v1, v6

    .line 159
    .local v1, a1:I
    :goto_0
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->refline:[B

    invoke-direct {p0, v7, v6, v6}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v7

    if-eqz v7, :cond_3

    move v3, v6

    .line 163
    .local v3, b1:I
    :goto_1
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->refline:[B

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowpixels:I

    iget-object v9, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->refline:[B

    invoke-direct {p0, v9, v6, v3}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v9

    invoke-static {v7, v6, v3, v8, v9}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->finddiff2([BIIII)I

    move-result v4

    .line 164
    .local v4, b2:I
    if-lt v4, v1, :cond_6

    .line 165
    sub-int v5, v3, v1

    .line 166
    .local v5, d:I
    const/4 v7, -0x3

    if-gt v7, v5, :cond_0

    const/4 v7, 0x3

    if-le v5, v7, :cond_5

    .line 167
    :cond_0
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->dataBp:[B

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->offsetData:I

    iget v9, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowpixels:I

    iget-object v10, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->dataBp:[B

    iget v11, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v10, v11, v1}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v10

    invoke-static {v7, v8, v1, v9, v10}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->finddiff2([BIIII)I

    move-result v2

    .line 168
    .local v2, a2:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->horizcode:[I

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->putcode([I)V

    .line 169
    add-int v7, v0, v1

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->dataBp:[B

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v7, v8, v0}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v7

    if-nez v7, :cond_4

    .line 170
    :cond_1
    sub-int v7, v1, v0

    iget-object v8, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->TIFFFaxWhiteCodes:[[I

    invoke-direct {p0, v7, v8}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->putspan(I[[I)V

    .line 171
    sub-int v7, v2, v1

    iget-object v8, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->TIFFFaxBlackCodes:[[I

    invoke-direct {p0, v7, v8}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->putspan(I[[I)V

    .line 176
    :goto_2
    move v0, v2

    .line 185
    .end local v2           #a2:I
    .end local v5           #d:I
    :goto_3
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowpixels:I

    if-lt v0, v7, :cond_7

    .line 191
    return-void

    .line 158
    .end local v1           #a1:I
    .end local v3           #b1:I
    .end local v4           #b2:I
    :cond_2
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->dataBp:[B

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->offsetData:I

    iget v9, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowpixels:I

    invoke-static {v7, v8, v6, v9, v6}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v1

    goto :goto_0

    .line 159
    .restart local v1       #a1:I
    :cond_3
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->refline:[B

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowpixels:I

    invoke-static {v7, v6, v6, v8, v6}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v3

    goto :goto_1

    .line 173
    .restart local v2       #a2:I
    .restart local v3       #b1:I
    .restart local v4       #b2:I
    .restart local v5       #d:I
    :cond_4
    sub-int v7, v1, v0

    iget-object v8, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->TIFFFaxBlackCodes:[[I

    invoke-direct {p0, v7, v8}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->putspan(I[[I)V

    .line 174
    sub-int v7, v2, v1

    iget-object v8, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->TIFFFaxWhiteCodes:[[I

    invoke-direct {p0, v7, v8}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->putspan(I[[I)V

    goto :goto_2

    .line 178
    .end local v2           #a2:I
    :cond_5
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->vcodes:[[I

    add-int/lit8 v8, v5, 0x3

    aget-object v7, v7, v8

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->putcode([I)V

    .line 179
    move v0, v1

    goto :goto_3

    .line 182
    .end local v5           #d:I
    :cond_6
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->passcode:[I

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->putcode([I)V

    .line 183
    move v0, v4

    goto :goto_3

    .line 187
    :cond_7
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->dataBp:[B

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->offsetData:I

    iget v9, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowpixels:I

    iget-object v10, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->dataBp:[B

    iget v11, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v10, v11, v0}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v10

    invoke-static {v7, v8, v0, v9, v10}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v1

    .line 188
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->refline:[B

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowpixels:I

    iget-object v9, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->dataBp:[B

    iget v10, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v9, v10, v0}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    invoke-static {v7, v6, v0, v8, v9}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v3

    .line 189
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->refline:[B

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowpixels:I

    iget-object v9, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->dataBp:[B

    iget v10, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v9, v10, v0}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v9

    invoke-static {v7, v6, v3, v8, v9}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v3

    goto/16 :goto_1
.end method

.method private Fax4PostEncode()V
    .locals 3

    .prologue
    const/16 v1, 0xc

    const/16 v2, 0x8

    const/4 v0, 0x1

    .line 194
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->putBits(II)V

    .line 195
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->putBits(II)V

    .line 196
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->bit:I

    if-eq v0, v2, :cond_0

    .line 197
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/text/pdf/ByteBuffer;

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->data:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->data:I

    .line 199
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->bit:I

    .line 201
    :cond_0
    return-void
.end method

.method public static compress([BII)[B
    .locals 3
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 99
    new-instance v0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;-><init>(I)V

    .line 100
    .local v0, g4:Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;
    const/4 v1, 0x0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowbytes:I

    mul-int/2addr v2, p2

    invoke-virtual {v0, p0, v1, v2}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->fax4Encode([BII)V

    .line 101
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->close()[B

    move-result-object v1

    return-object v1
.end method

.method private static find0span([BIII)I
    .locals 7
    .parameter "bp"
    .parameter "offset"
    .parameter "bs"
    .parameter "be"

    .prologue
    const/16 v6, 0x8

    .line 259
    sub-int v0, p3, p2

    .line 262
    .local v0, bits:I
    shr-int/lit8 v4, p2, 0x3

    add-int v2, p1, v4

    .line 266
    .local v2, pos:I
    if-lez v0, :cond_3

    and-int/lit8 v1, p2, 0x7

    .local v1, n:I
    if-eqz v1, :cond_3

    .line 267
    sget-object v4, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->zeroruns:[B

    aget-byte v5, p0, v2

    shl-int/2addr v5, v1

    and-int/lit16 v5, v5, 0xff

    aget-byte v3, v4, v5

    .line 268
    .local v3, span:I
    rsub-int/lit8 v4, v1, 0x8

    if-le v3, v4, :cond_0

    .line 269
    rsub-int/lit8 v3, v1, 0x8

    .line 270
    :cond_0
    if-le v3, v0, :cond_1

    .line 271
    move v3, v0

    .line 272
    :cond_1
    add-int v4, v1, v3

    if-ge v4, v6, :cond_2

    move v4, v3

    .line 295
    .end local v1           #n:I
    :goto_0
    return v4

    .line 274
    .restart local v1       #n:I
    :cond_2
    sub-int/2addr v0, v3

    .line 275
    add-int/lit8 v2, v2, 0x1

    .line 281
    .end local v1           #n:I
    :goto_1
    if-lt v0, v6, :cond_5

    .line 282
    aget-byte v4, p0, v2

    if-eqz v4, :cond_4

    .line 283
    sget-object v4, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->zeroruns:[B

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    add-int/2addr v4, v3

    goto :goto_0

    .line 277
    .end local v3           #span:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #span:I
    goto :goto_1

    .line 284
    :cond_4
    add-int/lit8 v3, v3, 0x8

    .line 285
    add-int/lit8 v0, v0, -0x8

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    :cond_5
    if-lez v0, :cond_7

    .line 292
    sget-object v4, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->zeroruns:[B

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    aget-byte v1, v4, v5

    .line 293
    .restart local v1       #n:I
    if-le v1, v0, :cond_6

    move v1, v0

    .end local v1           #n:I
    :cond_6
    add-int/2addr v3, v1

    :cond_7
    move v4, v3

    .line 295
    goto :goto_0
.end method

.method private static find1span([BIII)I
    .locals 7
    .parameter "bp"
    .parameter "offset"
    .parameter "bs"
    .parameter "be"

    .prologue
    const/16 v6, 0x8

    .line 219
    sub-int v0, p3, p2

    .line 222
    .local v0, bits:I
    shr-int/lit8 v4, p2, 0x3

    add-int v2, p1, v4

    .line 226
    .local v2, pos:I
    if-lez v0, :cond_3

    and-int/lit8 v1, p2, 0x7

    .local v1, n:I
    if-eqz v1, :cond_3

    .line 227
    sget-object v4, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->oneruns:[B

    aget-byte v5, p0, v2

    shl-int/2addr v5, v1

    and-int/lit16 v5, v5, 0xff

    aget-byte v3, v4, v5

    .line 228
    .local v3, span:I
    rsub-int/lit8 v4, v1, 0x8

    if-le v3, v4, :cond_0

    .line 229
    rsub-int/lit8 v3, v1, 0x8

    .line 230
    :cond_0
    if-le v3, v0, :cond_1

    .line 231
    move v3, v0

    .line 232
    :cond_1
    add-int v4, v1, v3

    if-ge v4, v6, :cond_2

    move v4, v3

    .line 255
    .end local v1           #n:I
    :goto_0
    return v4

    .line 234
    .restart local v1       #n:I
    :cond_2
    sub-int/2addr v0, v3

    .line 235
    add-int/lit8 v2, v2, 0x1

    .line 241
    .end local v1           #n:I
    :goto_1
    if-lt v0, v6, :cond_5

    .line 242
    aget-byte v4, p0, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 243
    sget-object v4, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->oneruns:[B

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    add-int/2addr v4, v3

    goto :goto_0

    .line 237
    .end local v3           #span:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #span:I
    goto :goto_1

    .line 244
    :cond_4
    add-int/lit8 v3, v3, 0x8

    .line 245
    add-int/lit8 v0, v0, -0x8

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    :cond_5
    if-lez v0, :cond_7

    .line 252
    sget-object v4, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->oneruns:[B

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    aget-byte v1, v4, v5

    .line 253
    .restart local v1       #n:I
    if-le v1, v0, :cond_6

    move v1, v0

    .end local v1           #n:I
    :cond_6
    add-int/2addr v3, v1

    :cond_7
    move v4, v3

    .line 255
    goto :goto_0
.end method

.method private static finddiff([BIIII)I
    .locals 1
    .parameter "bp"
    .parameter "offset"
    .parameter "bs"
    .parameter "be"
    .parameter "color"

    .prologue
    .line 299
    if-eqz p4, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->find1span([BIII)I

    move-result v0

    :goto_0
    add-int/2addr v0, p2

    return v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->find0span([BIII)I

    move-result v0

    goto :goto_0
.end method

.method private static finddiff2([BIIII)I
    .locals 0
    .parameter "bp"
    .parameter "offset"
    .parameter "bs"
    .parameter "be"
    .parameter "color"

    .prologue
    .line 303
    if-ge p2, p3, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result p3

    .end local p3
    :cond_0
    return p3
.end method

.method private pixel([BII)I
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "bit"

    .prologue
    .line 213
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowpixels:I

    if-lt p3, v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    :cond_0
    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, p3, 0x7

    rsub-int/lit8 v1, v1, 0x7

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private putBits(II)V
    .locals 5
    .parameter "bits"
    .parameter "length"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 140
    :goto_0
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->bit:I

    if-le p2, v0, :cond_0

    .line 141
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->data:I

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->bit:I

    sub-int v1, p2, v1

    shr-int v1, p1, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->data:I

    .line 142
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->bit:I

    sub-int/2addr p2, v0

    .line 143
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/text/pdf/ByteBuffer;

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->data:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 144
    iput v3, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->data:I

    .line 145
    iput v4, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->bit:I

    goto :goto_0

    .line 147
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->data:I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->msbmask:[I

    aget v1, v1, p2

    and-int/2addr v1, p1

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->bit:I

    sub-int/2addr v2, p2

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->data:I

    .line 148
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->bit:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->bit:I

    .line 149
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->bit:I

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/text/pdf/ByteBuffer;

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->data:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 151
    iput v3, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->data:I

    .line 152
    iput v4, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->bit:I

    .line 154
    :cond_1
    return-void
.end method

.method private putcode([I)V
    .locals 2
    .parameter "table"

    .prologue
    .line 114
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->putBits(II)V

    .line 115
    return-void
.end method

.method private putspan(I[[I)V
    .locals 7
    .parameter "span"
    .parameter "tab"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    :goto_0
    const/16 v3, 0xa40

    if-lt p1, v3, :cond_0

    .line 121
    const/16 v3, 0x67

    aget-object v2, p2, v3

    .line 122
    .local v2, te:[I
    aget v0, v2, v5

    .line 123
    .local v0, code:I
    aget v1, v2, v4

    .line 124
    .local v1, length:I
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->putBits(II)V

    .line 125
    aget v3, v2, v6

    sub-int/2addr p1, v3

    .line 126
    goto :goto_0

    .line 127
    .end local v0           #code:I
    .end local v1           #length:I
    .end local v2           #te:[I
    :cond_0
    const/16 v3, 0x40

    if-lt p1, v3, :cond_1

    .line 128
    shr-int/lit8 v3, p1, 0x6

    add-int/lit8 v3, v3, 0x3f

    aget-object v2, p2, v3

    .line 129
    .restart local v2       #te:[I
    aget v0, v2, v5

    .line 130
    .restart local v0       #code:I
    aget v1, v2, v4

    .line 131
    .restart local v1       #length:I
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->putBits(II)V

    .line 132
    aget v3, v2, v6

    sub-int/2addr p1, v3

    .line 134
    .end local v0           #code:I
    .end local v1           #length:I
    .end local v2           #te:[I
    :cond_1
    aget-object v3, p2, p1

    aget v0, v3, v5

    .line 135
    .restart local v0       #code:I
    aget-object v3, p2, p1

    aget v1, v3, v4

    .line 136
    .restart local v1       #length:I
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->putBits(II)V

    .line 137
    return-void
.end method


# virtual methods
.method public close()[B
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->Fax4PostEncode()V

    .line 209
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public fax4Encode([BI)V
    .locals 2
    .parameter "data"
    .parameter "height"

    .prologue
    .line 110
    const/4 v0, 0x0

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowbytes:I

    mul-int/2addr v1, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->fax4Encode([BII)V

    .line 111
    return-void
.end method

.method public fax4Encode([BII)V
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->dataBp:[B

    .line 80
    iput p2, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->offsetData:I

    .line 81
    iput p3, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->sizeData:I

    .line 82
    :goto_0
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->sizeData:I

    if-lez v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->Fax3Encode2DRow()V

    .line 84
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->dataBp:[B

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->offsetData:I

    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->refline:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowbytes:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->offsetData:I

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowbytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->offsetData:I

    .line 86
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->sizeData:I

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->rowbytes:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->sizeData:I

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method
