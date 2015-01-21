.class public Lcom/itextpdf/text/pdf/BarcodeDatamatrix;
.super Ljava/lang/Object;
.source "BarcodeDatamatrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/BarcodeDatamatrix$ReedSolomon;,
        Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;,
        Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;
    }
.end annotation


# static fields
.field public static final DM_ASCII:I = 0x1

.field public static final DM_AUTO:I = 0x0

.field public static final DM_B256:I = 0x4

.field public static final DM_C40:I = 0x2

.field public static final DM_EDIFACT:I = 0x6

.field public static final DM_ERROR_EXTENSION:I = 0x5

.field public static final DM_ERROR_INVALID_SQUARE:I = 0x3

.field public static final DM_ERROR_TEXT_TOO_BIG:I = 0x1

.field public static final DM_EXTENSION:I = 0x20

.field public static final DM_NO_ERROR:I = 0x0

.field public static final DM_RAW:I = 0x7

.field public static final DM_TEST:I = 0x40

.field public static final DM_TEXT:I = 0x3

.field public static final DM_X21:I = 0x5

.field private static final dmSizes:[Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams; = null

.field private static final x12:Ljava/lang/String; = "\r*> 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"


# instance fields
.field private extOut:I

.field private height:I

.field private image:[B

.field private options:I

.field private place:[S

.field private width:I

.field private ws:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/16 v14, 0xc

    const/16 v13, 0x18

    const/16 v12, 0x16

    const/16 v11, 0x10

    const/16 v10, 0x12

    .line 117
    const/16 v0, 0x1e

    new-array v8, v0, [Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/4 v9, 0x0

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/4 v5, 0x3

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x7

    move v1, v14

    move v2, v14

    move v3, v14

    move v4, v14

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x8

    const/16 v3, 0x8

    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x7

    move v2, v10

    move v4, v10

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0xe

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xe

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x8

    const/16 v2, 0x20

    const/16 v3, 0x8

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xb

    move v4, v11

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v14

    move v6, v14

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v2, 0x1a

    const/16 v4, 0x1a

    const/16 v7, 0xe

    move v1, v14

    move v3, v14

    move v5, v11

    move v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x7

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v7, 0xe

    move v1, v10

    move v2, v10

    move v3, v10

    move v4, v10

    move v5, v10

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x8

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x14

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x14

    move v5, v12

    move v6, v12

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x9

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v2, 0x24

    move v1, v14

    move v3, v14

    move v4, v10

    move v5, v12

    move v6, v12

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xa

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v5, 0x1e

    const/16 v6, 0x1e

    const/16 v7, 0x14

    move v1, v12

    move v2, v12

    move v3, v12

    move v4, v12

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xb

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v2, 0x24

    const/16 v5, 0x20

    const/16 v6, 0x20

    move v1, v11

    move v3, v11

    move v4, v10

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v5, 0x24

    const/16 v6, 0x24

    move v1, v13

    move v2, v13

    move v3, v13

    move v4, v13

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v14

    const/16 v9, 0xd

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    const/16 v5, 0x2c

    const/16 v6, 0x2c

    const/16 v7, 0x1c

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xe

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v2, 0x30

    const/16 v5, 0x31

    const/16 v6, 0x31

    const/16 v7, 0x1c

    move v1, v11

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xf

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x20

    const/16 v2, 0x20

    const/16 v5, 0x3e

    const/16 v6, 0x3e

    const/16 v7, 0x24

    move v3, v11

    move v4, v11

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x24

    const/16 v2, 0x24

    const/16 v5, 0x56

    const/16 v6, 0x56

    const/16 v7, 0x2a

    move v3, v10

    move v4, v10

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v11

    const/16 v9, 0x11

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x28

    const/16 v2, 0x28

    const/16 v3, 0x14

    const/16 v4, 0x14

    const/16 v5, 0x72

    const/16 v6, 0x72

    const/16 v7, 0x30

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x2c

    const/16 v2, 0x2c

    const/16 v5, 0x90

    const/16 v6, 0x90

    const/16 v7, 0x38

    move v3, v12

    move v4, v12

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v10

    const/16 v9, 0x13

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v5, 0xae

    const/16 v6, 0xae

    const/16 v7, 0x44

    move v3, v13

    move v4, v13

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x14

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x34

    const/16 v2, 0x34

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    const/16 v5, 0xcc

    const/16 v6, 0x66

    const/16 v7, 0x2a

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x15

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x40

    const/16 v2, 0x40

    const/16 v5, 0x118

    const/16 v6, 0x8c

    const/16 v7, 0x38

    move v3, v11

    move v4, v11

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x48

    const/16 v2, 0x48

    const/16 v5, 0x170

    const/16 v6, 0x5c

    const/16 v7, 0x24

    move v3, v10

    move v4, v10

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v12

    const/16 v9, 0x17

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x50

    const/16 v2, 0x50

    const/16 v3, 0x14

    const/16 v4, 0x14

    const/16 v5, 0x1c8

    const/16 v6, 0x72

    const/16 v7, 0x30

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x58

    const/16 v2, 0x58

    const/16 v5, 0x240

    const/16 v6, 0x90

    const/16 v7, 0x38

    move v3, v12

    move v4, v12

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v13

    const/16 v9, 0x19

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x60

    const/16 v2, 0x60

    const/16 v5, 0x2b8

    const/16 v6, 0xae

    const/16 v7, 0x44

    move v3, v13

    move v4, v13

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1a

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x68

    const/16 v2, 0x68

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    const/16 v5, 0x330

    const/16 v6, 0x88

    const/16 v7, 0x38

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1b

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x78

    const/16 v2, 0x78

    const/16 v3, 0x14

    const/16 v4, 0x14

    const/16 v5, 0x41a

    const/16 v6, 0xaf

    const/16 v7, 0x44

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1c

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x84

    const/16 v2, 0x84

    const/16 v5, 0x518

    const/16 v6, 0xa3

    const/16 v7, 0x3e

    move v3, v12

    move v4, v12

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1d

    new-instance v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    const/16 v1, 0x90

    const/16 v2, 0x90

    const/16 v5, 0x616

    const/16 v6, 0x9c

    const/16 v7, 0x3e

    move v3, v13

    move v4, v13

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;-><init>(IIIIIII)V

    aput-object v0, v8, v9

    sput-object v8, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->dmSizes:[Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method private static C40OrTextEncodation([BII[BIIZ)I
    .locals 22
    .parameter "text"
    .parameter "textOffset"
    .parameter "textLength"
    .parameter "data"
    .parameter "dataOffset"
    .parameter "dataLength"
    .parameter "c40"

    .prologue
    .line 428
    if-nez p2, :cond_1

    .line 429
    const/4 v14, 0x0

    .line 494
    :cond_0
    :goto_0
    return v14

    .line 430
    :cond_1
    const/4 v3, 0x0

    .line 431
    .local v3, ptrIn:I
    const/4 v6, 0x0

    .line 432
    .local v6, ptrOut:I
    if-eqz p6, :cond_5

    .line 433
    add-int/lit8 v19, v6, 0x1

    .end local v6           #ptrOut:I
    .local v19, ptrOut:I
    add-int v2, p4, v6

    const/16 v4, -0x1a

    aput-byte v4, p3, v2

    move/from16 v6, v19

    .line 436
    .end local v19           #ptrOut:I
    .restart local v6       #ptrOut:I
    :goto_1
    const-string v20, "!\"#$%&\'()*+,-./:;<=>?@[\\]^_"

    .line 437
    .local v20, shift2:Ljava/lang/String;
    if-eqz p6, :cond_6

    .line 438
    const-string v9, " 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 439
    .local v9, basic:Ljava/lang/String;
    const-string v21, "`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

    .line 445
    .local v21, shift3:Ljava/lang/String;
    :goto_2
    mul-int/lit8 v2, p2, 0x4

    add-int/lit8 v2, v2, 0xa

    new-array v11, v2, [I

    .line 446
    .local v11, enc:[I
    const/4 v12, 0x0

    .line 447
    .local v12, encPtr:I
    const/16 v16, 0x0

    .line 448
    .local v16, last0:I
    const/16 v17, 0x0

    .local v17, last1:I
    move v13, v12

    .end local v12           #encPtr:I
    .local v13, encPtr:I
    move/from16 v18, v3

    .line 449
    .end local v3           #ptrIn:I
    .local v18, ptrIn:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_a

    .line 450
    rem-int/lit8 v2, v13, 0x3

    if-nez v2, :cond_2

    .line 451
    move/from16 v16, v18

    .line 452
    move/from16 v17, v13

    .line 454
    :cond_2
    add-int/lit8 v3, v18, 0x1

    .end local v18           #ptrIn:I
    .restart local v3       #ptrIn:I
    add-int v2, p1, v18

    aget-byte v2, p0, v2

    and-int/lit16 v10, v2, 0xff

    .line 455
    .local v10, c:I
    const/16 v2, 0x7f

    if-le v10, v2, :cond_3

    .line 456
    add-int/lit8 v10, v10, -0x80

    .line 457
    add-int/lit8 v12, v13, 0x1

    .end local v13           #encPtr:I
    .restart local v12       #encPtr:I
    const/4 v2, 0x1

    aput v2, v11, v13

    .line 458
    add-int/lit8 v13, v12, 0x1

    .end local v12           #encPtr:I
    .restart local v13       #encPtr:I
    const/16 v2, 0x1e

    aput v2, v11, v12

    :cond_3
    move v12, v13

    .line 460
    .end local v13           #encPtr:I
    .restart local v12       #encPtr:I
    int-to-char v2, v10

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 461
    .local v15, idx:I
    if-ltz v15, :cond_7

    .line 462
    add-int/lit8 v13, v12, 0x1

    .end local v12           #encPtr:I
    .restart local v13       #encPtr:I
    add-int/lit8 v2, v15, 0x3

    aput v2, v11, v12

    move v12, v13

    .end local v13           #encPtr:I
    .restart local v12       #encPtr:I
    :cond_4
    :goto_4
    move v13, v12

    .end local v12           #encPtr:I
    .restart local v13       #encPtr:I
    move/from16 v18, v3

    .line 476
    .end local v3           #ptrIn:I
    .restart local v18       #ptrIn:I
    goto :goto_3

    .line 435
    .end local v9           #basic:Ljava/lang/String;
    .end local v10           #c:I
    .end local v11           #enc:[I
    .end local v13           #encPtr:I
    .end local v15           #idx:I
    .end local v16           #last0:I
    .end local v17           #last1:I
    .end local v18           #ptrIn:I
    .end local v20           #shift2:Ljava/lang/String;
    .end local v21           #shift3:Ljava/lang/String;
    .restart local v3       #ptrIn:I
    :cond_5
    add-int/lit8 v19, v6, 0x1

    .end local v6           #ptrOut:I
    .restart local v19       #ptrOut:I
    add-int v2, p4, v6

    const/16 v4, -0x11

    aput-byte v4, p3, v2

    move/from16 v6, v19

    .end local v19           #ptrOut:I
    .restart local v6       #ptrOut:I
    goto :goto_1

    .line 442
    .restart local v20       #shift2:Ljava/lang/String;
    :cond_6
    const-string v9, " 0123456789abcdefghijklmnopqrstuvwxyz"

    .line 443
    .restart local v9       #basic:Ljava/lang/String;
    const-string v21, "`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\u007f"

    .restart local v21       #shift3:Ljava/lang/String;
    goto :goto_2

    .line 464
    .restart local v10       #c:I
    .restart local v11       #enc:[I
    .restart local v12       #encPtr:I
    .restart local v15       #idx:I
    .restart local v16       #last0:I
    .restart local v17       #last1:I
    :cond_7
    const/16 v2, 0x20

    if-ge v10, v2, :cond_8

    .line 465
    add-int/lit8 v13, v12, 0x1

    .end local v12           #encPtr:I
    .restart local v13       #encPtr:I
    const/4 v2, 0x0

    aput v2, v11, v12

    .line 466
    add-int/lit8 v12, v13, 0x1

    .end local v13           #encPtr:I
    .restart local v12       #encPtr:I
    aput v10, v11, v13

    goto :goto_4

    .line 468
    :cond_8
    int-to-char v2, v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_9

    .line 469
    add-int/lit8 v13, v12, 0x1

    .end local v12           #encPtr:I
    .restart local v13       #encPtr:I
    const/4 v2, 0x1

    aput v2, v11, v12

    .line 470
    add-int/lit8 v12, v13, 0x1

    .end local v13           #encPtr:I
    .restart local v12       #encPtr:I
    aput v15, v11, v13

    goto :goto_4

    .line 472
    :cond_9
    int-to-char v2, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_4

    .line 473
    add-int/lit8 v13, v12, 0x1

    .end local v12           #encPtr:I
    .restart local v13       #encPtr:I
    const/4 v2, 0x2

    aput v2, v11, v12

    .line 474
    add-int/lit8 v12, v13, 0x1

    .end local v13           #encPtr:I
    .restart local v12       #encPtr:I
    aput v15, v11, v13

    goto :goto_4

    .line 477
    .end local v3           #ptrIn:I
    .end local v10           #c:I
    .end local v12           #encPtr:I
    .end local v15           #idx:I
    .restart local v13       #encPtr:I
    .restart local v18       #ptrIn:I
    :cond_a
    rem-int/lit8 v2, v13, 0x3

    if-eqz v2, :cond_d

    .line 478
    move/from16 v3, v16

    .line 479
    .end local v18           #ptrIn:I
    .restart local v3       #ptrIn:I
    move/from16 v12, v17

    .line 481
    .end local v13           #encPtr:I
    .restart local v12       #encPtr:I
    :goto_5
    div-int/lit8 v2, v12, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, p5, -0x2

    if-le v2, v4, :cond_b

    .line 482
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 484
    :cond_b
    const/4 v14, 0x0

    .local v14, i:I
    move/from16 v19, v6

    .line 485
    .end local v6           #ptrOut:I
    .restart local v19       #ptrOut:I
    :goto_6
    if-ge v14, v12, :cond_c

    .line 486
    aget v2, v11, v14

    mul-int/lit16 v2, v2, 0x640

    add-int/lit8 v4, v14, 0x1

    aget v4, v11, v4

    mul-int/lit8 v4, v4, 0x28

    add-int/2addr v2, v4

    add-int/lit8 v4, v14, 0x2

    aget v4, v11, v4

    add-int/2addr v2, v4

    add-int/lit8 v8, v2, 0x1

    .line 487
    .local v8, a:I
    add-int/lit8 v6, v19, 0x1

    .end local v19           #ptrOut:I
    .restart local v6       #ptrOut:I
    add-int v2, p4, v19

    div-int/lit16 v4, v8, 0x100

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    .line 488
    add-int/lit8 v19, v6, 0x1

    .end local v6           #ptrOut:I
    .restart local v19       #ptrOut:I
    add-int v2, p4, v6

    int-to-byte v4, v8

    aput-byte v4, p3, v2

    .line 485
    add-int/lit8 v14, v14, 0x3

    goto :goto_6

    .line 490
    .end local v8           #a:I
    :cond_c
    add-int/lit8 v6, v19, 0x1

    .end local v19           #ptrOut:I
    .restart local v6       #ptrOut:I
    const/4 v2, -0x2

    aput-byte v2, p3, v19

    .line 491
    sub-int v4, p2, v3

    sub-int v7, p5, v6

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    invoke-static/range {v2 .. v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->asciiEncodation([BII[BII)I

    move-result v14

    .line 492
    if-ltz v14, :cond_0

    .line 494
    add-int/2addr v14, v6

    goto/16 :goto_0

    .end local v3           #ptrIn:I
    .end local v12           #encPtr:I
    .end local v14           #i:I
    .restart local v13       #encPtr:I
    .restart local v18       #ptrIn:I
    :cond_d
    move v12, v13

    .end local v13           #encPtr:I
    .restart local v12       #encPtr:I
    move/from16 v3, v18

    .end local v18           #ptrIn:I
    .restart local v3       #ptrIn:I
    goto :goto_5
.end method

.method private static EdifactEncodation([BII[BII)I
    .locals 9
    .parameter "text"
    .parameter "textOffset"
    .parameter "textLength"
    .parameter "data"
    .parameter "dataOffset"
    .parameter "dataLength"

    .prologue
    .line 355
    if-nez p2, :cond_0

    .line 356
    const/4 v5, 0x0

    .line 422
    :goto_0
    return v5

    .line 357
    :cond_0
    const/4 v4, 0x0

    .line 358
    .local v4, ptrIn:I
    const/4 v5, 0x0

    .line 359
    .local v5, ptrOut:I
    const/4 v2, 0x0

    .line 360
    .local v2, edi:I
    const/16 v3, 0x12

    .line 361
    .local v3, pedi:I
    const/4 v0, 0x1

    .local v0, ascii:Z
    move v6, v5

    .line 362
    .end local v5           #ptrOut:I
    .local v6, ptrOut:I
    :goto_1
    if-ge v4, p2, :cond_2

    .line 363
    add-int v7, v4, p1

    aget-byte v7, p0, v7

    and-int/lit16 v1, v7, 0xff

    .line 364
    .local v1, c:I
    and-int/lit16 v7, v1, 0xe0

    const/16 v8, 0x40

    if-eq v7, v8, :cond_1

    and-int/lit16 v7, v1, 0xe0

    const/16 v8, 0x20

    if-ne v7, v8, :cond_6

    :cond_1
    const/16 v7, 0x5f

    if-eq v1, v7, :cond_6

    .line 365
    if-eqz v0, :cond_4

    .line 366
    add-int/lit8 v7, v6, 0x1

    if-le v7, p5, :cond_3

    .line 410
    .end local v1           #c:I
    :cond_2
    if-eq v4, p2, :cond_9

    .line 411
    const/4 v5, -0x1

    goto :goto_0

    .line 368
    .restart local v1       #c:I
    :cond_3
    add-int/lit8 v5, v6, 0x1

    .end local v6           #ptrOut:I
    .restart local v5       #ptrOut:I
    add-int v7, p4, v6

    const/16 v8, -0x10

    aput-byte v8, p3, v7

    .line 369
    const/4 v0, 0x0

    move v6, v5

    .line 371
    .end local v5           #ptrOut:I
    .restart local v6       #ptrOut:I
    :cond_4
    and-int/lit8 v1, v1, 0x3f

    .line 372
    shl-int v7, v1, v3

    or-int/2addr v2, v7

    .line 373
    if-nez v3, :cond_5

    .line 374
    add-int/lit8 v7, v6, 0x3

    if-gt v7, p5, :cond_2

    .line 376
    add-int/lit8 v5, v6, 0x1

    .end local v6           #ptrOut:I
    .restart local v5       #ptrOut:I
    add-int v7, p4, v6

    shr-int/lit8 v8, v2, 0x10

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    .line 377
    add-int/lit8 v6, v5, 0x1

    .end local v5           #ptrOut:I
    .restart local v6       #ptrOut:I
    add-int v7, p4, v5

    shr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    .line 378
    add-int/lit8 v5, v6, 0x1

    .end local v6           #ptrOut:I
    .restart local v5       #ptrOut:I
    add-int v7, p4, v6

    int-to-byte v8, v2

    aput-byte v8, p3, v7

    .line 379
    const/4 v2, 0x0

    .line 380
    const/16 v3, 0x12

    .line 362
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5           #ptrOut:I
    .restart local v6       #ptrOut:I
    goto :goto_1

    .line 383
    :cond_5
    add-int/lit8 v3, v3, -0x6

    move v5, v6

    .end local v6           #ptrOut:I
    .restart local v5       #ptrOut:I
    goto :goto_2

    .line 386
    .end local v5           #ptrOut:I
    .restart local v6       #ptrOut:I
    :cond_6
    if-nez v0, :cond_7

    .line 387
    const/16 v7, 0x1f

    shl-int/2addr v7, v3

    or-int/2addr v2, v7

    .line 388
    add-int/lit8 v7, v6, 0x3

    div-int/lit8 v8, v3, 0x8

    sub-int/2addr v7, v8

    if-gt v7, p5, :cond_2

    .line 390
    add-int/lit8 v5, v6, 0x1

    .end local v6           #ptrOut:I
    .restart local v5       #ptrOut:I
    add-int v7, p4, v6

    shr-int/lit8 v8, v2, 0x10

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    .line 391
    const/16 v7, 0xc

    if-gt v3, v7, :cond_e

    .line 392
    add-int/lit8 v6, v5, 0x1

    .end local v5           #ptrOut:I
    .restart local v6       #ptrOut:I
    add-int v7, p4, v5

    shr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    .line 393
    :goto_3
    const/4 v7, 0x6

    if-gt v3, v7, :cond_d

    .line 394
    add-int/lit8 v5, v6, 0x1

    .end local v6           #ptrOut:I
    .restart local v5       #ptrOut:I
    add-int v7, p4, v6

    int-to-byte v8, v2

    aput-byte v8, p3, v7

    .line 395
    :goto_4
    const/4 v0, 0x1

    .line 396
    const/16 v3, 0x12

    .line 397
    const/4 v2, 0x0

    move v6, v5

    .line 399
    .end local v5           #ptrOut:I
    .restart local v6       #ptrOut:I
    :cond_7
    const/16 v7, 0x7f

    if-le v1, v7, :cond_8

    .line 400
    if-ge v6, p5, :cond_2

    .line 402
    add-int/lit8 v5, v6, 0x1

    .end local v6           #ptrOut:I
    .restart local v5       #ptrOut:I
    add-int v7, p4, v6

    const/16 v8, -0x15

    aput-byte v8, p3, v7

    .line 403
    add-int/lit8 v1, v1, -0x80

    move v6, v5

    .line 405
    .end local v5           #ptrOut:I
    .restart local v6       #ptrOut:I
    :cond_8
    if-ge v6, p5, :cond_2

    .line 407
    add-int/lit8 v5, v6, 0x1

    .end local v6           #ptrOut:I
    .restart local v5       #ptrOut:I
    add-int v7, p4, v6

    add-int/lit8 v8, v1, 0x1

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    goto :goto_2

    .line 412
    .end local v1           #c:I
    .end local v5           #ptrOut:I
    .restart local v6       #ptrOut:I
    :cond_9
    if-nez v0, :cond_b

    .line 413
    const/16 v7, 0x1f

    shl-int/2addr v7, v3

    or-int/2addr v2, v7

    .line 414
    add-int/lit8 v7, v6, 0x3

    div-int/lit8 v8, v3, 0x8

    sub-int/2addr v7, v8

    if-le v7, p5, :cond_a

    .line 415
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 416
    :cond_a
    add-int/lit8 v5, v6, 0x1

    .end local v6           #ptrOut:I
    .restart local v5       #ptrOut:I
    add-int v7, p4, v6

    shr-int/lit8 v8, v2, 0x10

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    .line 417
    const/16 v7, 0xc

    if-gt v3, v7, :cond_c

    .line 418
    add-int/lit8 v6, v5, 0x1

    .end local v5           #ptrOut:I
    .restart local v6       #ptrOut:I
    add-int v7, p4, v5

    shr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    .line 419
    :goto_5
    const/4 v7, 0x6

    if-gt v3, v7, :cond_b

    .line 420
    add-int/lit8 v5, v6, 0x1

    .end local v6           #ptrOut:I
    .restart local v5       #ptrOut:I
    add-int v7, p4, v6

    int-to-byte v8, v2

    aput-byte v8, p3, v7

    goto/16 :goto_0

    .end local v5           #ptrOut:I
    .restart local v6       #ptrOut:I
    :cond_b
    move v5, v6

    .end local v6           #ptrOut:I
    .restart local v5       #ptrOut:I
    goto/16 :goto_0

    :cond_c
    move v6, v5

    .end local v5           #ptrOut:I
    .restart local v6       #ptrOut:I
    goto :goto_5

    .restart local v1       #c:I
    :cond_d
    move v5, v6

    .end local v6           #ptrOut:I
    .restart local v5       #ptrOut:I
    goto :goto_4

    :cond_e
    move v6, v5

    .end local v5           #ptrOut:I
    .restart local v6       #ptrOut:I
    goto :goto_3
.end method

.method private static X12Encodation([BII[BII)I
    .locals 13
    .parameter "text"
    .parameter "textOffset"
    .parameter "textLength"
    .parameter "data"
    .parameter "dataOffset"
    .parameter "dataLength"

    .prologue
    .line 289
    if-nez p2, :cond_0

    .line 290
    const/4 v8, 0x0

    .line 350
    :goto_0
    return v8

    .line 291
    :cond_0
    const/4 v7, 0x0

    .line 292
    .local v7, ptrIn:I
    const/4 v8, 0x0

    .line 293
    .local v8, ptrOut:I
    new-array v10, p2, [B

    .line 294
    .local v10, x:[B
    const/4 v3, 0x0

    .line 295
    .local v3, count:I
    :goto_1
    if-ge v7, p2, :cond_4

    .line 296
    const-string v11, "\r*> 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    add-int v12, v7, p1

    aget-byte v12, p0, v12

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 297
    .local v4, i:I
    if-ltz v4, :cond_1

    .line 298
    int-to-byte v11, v4

    aput-byte v11, v10, v7

    .line 299
    add-int/lit8 v3, v3, 0x1

    .line 295
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 302
    :cond_1
    const/16 v11, 0x64

    aput-byte v11, v10, v7

    .line 303
    const/4 v11, 0x6

    if-lt v3, v11, :cond_2

    .line 304
    div-int/lit8 v11, v3, 0x3

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v3, v11

    .line 305
    :cond_2
    const/4 v5, 0x0

    .local v5, k:I
    :goto_3
    if-ge v5, v3, :cond_3

    .line 306
    sub-int v11, v7, v5

    add-int/lit8 v11, v11, -0x1

    const/16 v12, 0x64

    aput-byte v12, v10, v11

    .line 305
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 307
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 310
    .end local v4           #i:I
    .end local v5           #k:I
    :cond_4
    const/4 v11, 0x6

    if-lt v3, v11, :cond_5

    .line 311
    div-int/lit8 v11, v3, 0x3

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v3, v11

    .line 312
    :cond_5
    const/4 v5, 0x0

    .restart local v5       #k:I
    :goto_4
    if-ge v5, v3, :cond_6

    .line 313
    sub-int v11, v7, v5

    add-int/lit8 v11, v11, -0x1

    const/16 v12, 0x64

    aput-byte v12, v10, v11

    .line 312
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 314
    :cond_6
    const/4 v7, 0x0

    .line 315
    const/4 v1, 0x0

    .local v1, c:B
    move v9, v8

    .line 316
    .end local v8           #ptrOut:I
    .local v9, ptrOut:I
    :goto_5
    if-ge v7, p2, :cond_7

    .line 317
    aget-byte v1, v10, v7

    .line 318
    move/from16 v0, p5

    if-lt v9, v0, :cond_a

    .line 343
    :cond_7
    const/16 v1, 0x64

    .line 344
    if-lez p2, :cond_8

    .line 345
    add-int/lit8 v11, p2, -0x1

    aget-byte v1, v10, v11

    .line 346
    :cond_8
    if-ne v7, p2, :cond_9

    const/16 v11, 0x28

    if-ge v1, v11, :cond_e

    move/from16 v0, p5

    if-lt v9, v0, :cond_e

    .line 347
    :cond_9
    const/4 v8, -0x1

    goto :goto_0

    .line 320
    :cond_a
    const/16 v11, 0x28

    if-ge v1, v11, :cond_d

    .line 321
    if-eqz v7, :cond_b

    if-lez v7, :cond_c

    add-int/lit8 v11, v7, -0x1

    aget-byte v11, v10, v11

    const/16 v12, 0x28

    if-le v11, v12, :cond_c

    .line 322
    :cond_b
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    add-int v11, p4, v9

    const/16 v12, -0x12

    aput-byte v12, p3, v11

    move v9, v8

    .line 323
    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    :cond_c
    add-int/lit8 v11, v9, 0x2

    move/from16 v0, p5

    if-gt v11, v0, :cond_7

    .line 325
    aget-byte v11, v10, v7

    mul-int/lit16 v11, v11, 0x640

    add-int/lit8 v12, v7, 0x1

    aget-byte v12, v10, v12

    mul-int/lit8 v12, v12, 0x28

    add-int/2addr v11, v12

    add-int/lit8 v12, v7, 0x2

    aget-byte v12, v10, v12

    add-int/2addr v11, v12

    add-int/lit8 v6, v11, 0x1

    .line 326
    .local v6, n:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    add-int v11, p4, v9

    div-int/lit16 v12, v6, 0x100

    int-to-byte v12, v12

    aput-byte v12, p3, v11

    .line 327
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    add-int v11, p4, v8

    int-to-byte v12, v6

    aput-byte v12, p3, v11

    .line 328
    add-int/lit8 v7, v7, 0x2

    move v8, v9

    .line 316
    .end local v6           #n:I
    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move v9, v8

    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    goto :goto_5

    .line 331
    :cond_d
    if-lez v7, :cond_11

    add-int/lit8 v11, v7, -0x1

    aget-byte v11, v10, v11

    const/16 v12, 0x28

    if-ge v11, v12, :cond_11

    .line 332
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    add-int v11, p4, v9

    const/4 v12, -0x2

    aput-byte v12, p3, v11

    .line 333
    :goto_7
    add-int v11, v7, p1

    aget-byte v11, p0, v11

    and-int/lit16 v2, v11, 0xff

    .line 334
    .local v2, ci:I
    const/16 v11, 0x7f

    if-le v2, v11, :cond_10

    .line 335
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    add-int v11, p4, v8

    const/16 v12, -0x15

    aput-byte v12, p3, v11

    .line 336
    add-int/lit8 v2, v2, -0x80

    .line 338
    :goto_8
    move/from16 v0, p5

    if-ge v9, v0, :cond_7

    .line 340
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    add-int v11, p4, v9

    add-int/lit8 v12, v2, 0x1

    int-to-byte v12, v12

    aput-byte v12, p3, v11

    goto :goto_6

    .line 348
    .end local v2           #ci:I
    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    :cond_e
    const/16 v11, 0x28

    if-ge v1, v11, :cond_f

    .line 349
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    add-int v11, p4, v9

    const/4 v12, -0x2

    aput-byte v12, p3, v11

    goto/16 :goto_0

    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    :cond_f
    move v8, v9

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    goto/16 :goto_0

    .restart local v2       #ci:I
    :cond_10
    move v9, v8

    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    goto :goto_8

    .end local v2           #ci:I
    :cond_11
    move v8, v9

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    goto :goto_7
.end method

.method private static asciiEncodation([BII[BII)I
    .locals 8
    .parameter "text"
    .parameter "textOffset"
    .parameter "textLength"
    .parameter "data"
    .parameter "dataOffset"
    .parameter "dataLength"

    .prologue
    const/4 v5, -0x1

    .line 230
    move v1, p1

    .line 231
    .local v1, ptrIn:I
    move v3, p4

    .line 232
    .local v3, ptrOut:I
    add-int/2addr p2, p1

    .line 233
    add-int/2addr p5, p4

    move v4, v3

    .end local v3           #ptrOut:I
    .local v4, ptrOut:I
    move v2, v1

    .line 234
    .end local v1           #ptrIn:I
    .local v2, ptrIn:I
    :goto_0
    if-ge v2, p2, :cond_4

    .line 235
    if-lt v4, p5, :cond_1

    move v1, v2

    .line 251
    .end local v2           #ptrIn:I
    .restart local v1       #ptrIn:I
    :cond_0
    :goto_1
    return v5

    .line 237
    .end local v1           #ptrIn:I
    .restart local v2       #ptrIn:I
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .end local v2           #ptrIn:I
    .restart local v1       #ptrIn:I
    aget-byte v6, p0, v2

    and-int/lit16 v0, v6, 0xff

    .line 238
    .local v0, c:I
    invoke-static {v0}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->isDigit(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ge v1, p2, :cond_2

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->isDigit(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    add-int/lit8 v3, v4, 0x1

    .end local v4           #ptrOut:I
    .restart local v3       #ptrOut:I
    add-int/lit8 v6, v0, -0x30

    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v2, v1, 0x1

    .end local v1           #ptrIn:I
    .restart local v2       #ptrIn:I
    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x30

    add-int/lit16 v6, v6, 0x82

    int-to-byte v6, v6

    aput-byte v6, p3, v4

    move v4, v3

    .end local v3           #ptrOut:I
    .restart local v4       #ptrOut:I
    goto :goto_0

    .line 241
    .end local v2           #ptrIn:I
    .restart local v1       #ptrIn:I
    :cond_2
    const/16 v6, 0x7f

    if-le v0, v6, :cond_3

    .line 242
    add-int/lit8 v6, v4, 0x1

    if-ge v6, p5, :cond_0

    .line 244
    add-int/lit8 v3, v4, 0x1

    .end local v4           #ptrOut:I
    .restart local v3       #ptrOut:I
    const/16 v6, -0x15

    aput-byte v6, p3, v4

    .line 245
    add-int/lit8 v4, v3, 0x1

    .end local v3           #ptrOut:I
    .restart local v4       #ptrOut:I
    add-int/lit8 v6, v0, -0x80

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, p3, v3

    move v2, v1

    .end local v1           #ptrIn:I
    .restart local v2       #ptrIn:I
    goto :goto_0

    .line 248
    .end local v2           #ptrIn:I
    .restart local v1       #ptrIn:I
    :cond_3
    add-int/lit8 v3, v4, 0x1

    .end local v4           #ptrOut:I
    .restart local v3       #ptrOut:I
    add-int/lit8 v6, v0, 0x1

    int-to-byte v6, v6

    aput-byte v6, p3, v4

    move v4, v3

    .end local v3           #ptrOut:I
    .restart local v4       #ptrOut:I
    move v2, v1

    .end local v1           #ptrIn:I
    .restart local v2       #ptrIn:I
    goto :goto_0

    .line 251
    .end local v0           #c:I
    :cond_4
    sub-int v5, v4, p4

    move v1, v2

    .end local v2           #ptrIn:I
    .restart local v1       #ptrIn:I
    goto :goto_1
.end method

.method private static b256Encodation([BII[BII)I
    .locals 8
    .parameter "text"
    .parameter "textOffset"
    .parameter "textLength"
    .parameter "data"
    .parameter "dataOffset"
    .parameter "dataLength"

    .prologue
    const/4 v5, -0x1

    const/16 v7, 0xfa

    .line 256
    if-nez p2, :cond_1

    .line 257
    const/4 v5, 0x0

    .line 283
    :cond_0
    :goto_0
    return v5

    .line 258
    :cond_1
    if-ge p2, v7, :cond_2

    add-int/lit8 v6, p2, 0x2

    if-gt v6, p5, :cond_0

    .line 260
    :cond_2
    if-lt p2, v7, :cond_3

    add-int/lit8 v6, p2, 0x3

    if-gt v6, p5, :cond_0

    .line 262
    :cond_3
    const/16 v5, -0x19

    aput-byte v5, p3, p4

    .line 263
    if-ge p2, v7, :cond_5

    .line 264
    add-int/lit8 v5, p4, 0x1

    int-to-byte v6, p2

    aput-byte v6, p3, v5

    .line 265
    const/4 v2, 0x2

    .line 272
    .local v2, k:I
    :goto_1
    add-int v5, v2, p4

    invoke-static {p0, p1, p3, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    add-int v5, p2, p4

    add-int/2addr v2, v5

    .line 274
    add-int/lit8 v1, p4, 0x1

    .local v1, j:I
    :goto_2
    if-ge v1, v2, :cond_6

    .line 275
    aget-byte v5, p3, v1

    and-int/lit16 v0, v5, 0xff

    .line 276
    .local v0, c:I
    add-int/lit8 v5, v1, 0x1

    mul-int/lit16 v5, v5, 0x95

    rem-int/lit16 v5, v5, 0xff

    add-int/lit8 v3, v5, 0x1

    .line 277
    .local v3, prn:I
    add-int v4, v0, v3

    .line 278
    .local v4, tv:I
    const/16 v5, 0xff

    if-le v4, v5, :cond_4

    .line 279
    add-int/lit16 v4, v4, -0x100

    .line 280
    :cond_4
    int-to-byte v5, v4

    aput-byte v5, p3, v1

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 268
    .end local v0           #c:I
    .end local v1           #j:I
    .end local v2           #k:I
    .end local v3           #prn:I
    .end local v4           #tv:I
    :cond_5
    add-int/lit8 v5, p4, 0x1

    div-int/lit16 v6, p2, 0xfa

    add-int/lit16 v6, v6, 0xf9

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 269
    add-int/lit8 v5, p4, 0x2

    rem-int/lit16 v6, p2, 0xfa

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 270
    const/4 v2, 0x3

    .restart local v2       #k:I
    goto :goto_1

    .line 283
    .restart local v1       #j:I
    :cond_6
    sub-int v5, v2, p4

    goto :goto_0
.end method

.method private draw([BILcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;)V
    .locals 14
    .parameter "data"
    .parameter "dataSize"
    .parameter "dm"

    .prologue
    .line 170
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->width:I

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x7

    div-int/lit8 v6, v11, 0x8

    .line 171
    .local v6, xByte:I
    iget-object v11, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->image:[B

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 174
    iget v1, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    .local v1, i:I
    :goto_0
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->height:I

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    add-int/2addr v11, v12

    if-ge v1, v11, :cond_1

    .line 175
    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    .local v2, j:I
    :goto_1
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->width:I

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    add-int/2addr v11, v12

    if-ge v2, v11, :cond_0

    .line 176
    invoke-direct {p0, v2, v1, v6}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->setBit(III)V

    .line 175
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 174
    :cond_0
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->heightSection:I

    add-int/2addr v1, v11

    goto :goto_0

    .line 180
    .end local v2           #j:I
    :cond_1
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->heightSection:I

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    add-int v1, v11, v12

    :goto_2
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->height:I

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    add-int/2addr v11, v12

    if-ge v1, v11, :cond_3

    .line 181
    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    .restart local v2       #j:I
    :goto_3
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->width:I

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    add-int/2addr v11, v12

    if-ge v2, v11, :cond_2

    .line 182
    invoke-direct {p0, v2, v1, v6}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->setBit(III)V

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 180
    :cond_2
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->heightSection:I

    add-int/2addr v1, v11

    goto :goto_2

    .line 186
    .end local v2           #j:I
    :cond_3
    iget v1, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    :goto_4
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->width:I

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    add-int/2addr v11, v12

    if-ge v1, v11, :cond_5

    .line 187
    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    .restart local v2       #j:I
    :goto_5
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->height:I

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    add-int/2addr v11, v12

    if-ge v2, v11, :cond_4

    .line 188
    invoke-direct {p0, v1, v2, v6}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->setBit(III)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 186
    :cond_4
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->widthSection:I

    add-int/2addr v1, v11

    goto :goto_4

    .line 192
    .end local v2           #j:I
    :cond_5
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->widthSection:I

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    add-int v1, v11, v12

    :goto_6
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->width:I

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    add-int/2addr v11, v12

    if-ge v1, v11, :cond_7

    .line 193
    iget v11, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    add-int/lit8 v2, v11, 0x1

    .restart local v2       #j:I
    :goto_7
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->height:I

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    add-int/2addr v11, v12

    if-ge v2, v11, :cond_6

    .line 194
    invoke-direct {p0, v1, v2, v6}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->setBit(III)V

    .line 193
    add-int/lit8 v2, v2, 0x2

    goto :goto_7

    .line 192
    :cond_6
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->widthSection:I

    add-int/2addr v1, v11

    goto :goto_6

    .line 197
    .end local v2           #j:I
    :cond_7
    const/4 v3, 0x0

    .line 198
    .local v3, p:I
    const/4 v9, 0x0

    .local v9, ys:I
    :goto_8
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->height:I

    if-ge v9, v11, :cond_d

    .line 199
    const/4 v8, 0x1

    .local v8, y:I
    :goto_9
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->heightSection:I

    add-int/lit8 v11, v11, -0x1

    if-ge v8, v11, :cond_c

    .line 200
    const/4 v7, 0x0

    .local v7, xs:I
    :goto_a
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->width:I

    if-ge v7, v11, :cond_b

    .line 201
    const/4 v5, 0x1

    .local v5, x:I
    :goto_b
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->widthSection:I

    add-int/lit8 v11, v11, -0x1

    if-ge v5, v11, :cond_a

    .line 202
    iget-object v11, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->place:[S

    add-int/lit8 v4, v3, 0x1

    .end local v3           #p:I
    .local v4, p:I
    aget-short v10, v11, v3

    .line 203
    .local v10, z:I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_8

    const/4 v11, 0x1

    if-le v10, v11, :cond_9

    div-int/lit8 v11, v10, 0x8

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0x80

    rem-int/lit8 v13, v10, 0x8

    shr-int/2addr v12, v13

    and-int/2addr v11, v12

    if-eqz v11, :cond_9

    .line 204
    :cond_8
    add-int v11, v5, v7

    iget v12, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    add-int/2addr v11, v12

    add-int v12, v8, v9

    iget v13, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    add-int/2addr v12, v13

    invoke-direct {p0, v11, v12, v6}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->setBit(III)V

    .line 201
    :cond_9
    add-int/lit8 v5, v5, 0x1

    move v3, v4

    .end local v4           #p:I
    .restart local v3       #p:I
    goto :goto_b

    .line 200
    .end local v10           #z:I
    :cond_a
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->widthSection:I

    add-int/2addr v7, v11

    goto :goto_a

    .line 199
    .end local v5           #x:I
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 198
    .end local v7           #xs:I
    :cond_c
    move-object/from16 v0, p3

    iget v11, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->heightSection:I

    add-int/2addr v9, v11

    goto :goto_8

    .line 209
    .end local v8           #y:I
    :cond_d
    return-void
.end method

.method private static getEncodation([BII[BIIIZ)I
    .locals 17
    .parameter "text"
    .parameter "textOffset"
    .parameter "textSize"
    .parameter "data"
    .parameter "dataOffset"
    .parameter "dataSize"
    .parameter "options"
    .parameter "firstMatch"

    .prologue
    .line 499
    const/4 v5, 0x6

    new-array v13, v5, [I

    .line 500
    .local v13, e1:[I
    if-gez p5, :cond_1

    .line 501
    const/4 v12, -0x1

    .line 565
    :cond_0
    :goto_0
    return v12

    .line 502
    :cond_1
    const/4 v12, -0x1

    .line 503
    .local v12, e:I
    and-int/lit8 p6, p6, 0x7

    .line 504
    if-nez p6, :cond_f

    .line 505
    const/4 v5, 0x0

    invoke-static/range {p0 .. p5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->asciiEncodation([BII[BII)I

    move-result v6

    aput v6, v13, v5

    .line 506
    if-eqz p7, :cond_2

    const/4 v5, 0x0

    aget v5, v13, v5

    if-ltz v5, :cond_2

    .line 507
    const/4 v5, 0x0

    aget v12, v13, v5

    goto :goto_0

    .line 508
    :cond_2
    const/16 v16, 0x1

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v11}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->C40OrTextEncodation([BII[BIIZ)I

    move-result v5

    aput v5, v13, v16

    .line 509
    if-eqz p7, :cond_3

    const/4 v5, 0x1

    aget v5, v13, v5

    if-ltz v5, :cond_3

    .line 510
    const/4 v5, 0x1

    aget v12, v13, v5

    goto :goto_0

    .line 511
    :cond_3
    const/16 v16, 0x2

    const/4 v11, 0x1

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v11}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->C40OrTextEncodation([BII[BIIZ)I

    move-result v5

    aput v5, v13, v16

    .line 512
    if-eqz p7, :cond_4

    const/4 v5, 0x2

    aget v5, v13, v5

    if-ltz v5, :cond_4

    .line 513
    const/4 v5, 0x2

    aget v12, v13, v5

    goto :goto_0

    .line 514
    :cond_4
    const/4 v5, 0x3

    invoke-static/range {p0 .. p5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->b256Encodation([BII[BII)I

    move-result v6

    aput v6, v13, v5

    .line 515
    if-eqz p7, :cond_5

    const/4 v5, 0x3

    aget v5, v13, v5

    if-ltz v5, :cond_5

    .line 516
    const/4 v5, 0x3

    aget v12, v13, v5

    goto :goto_0

    .line 517
    :cond_5
    const/4 v5, 0x4

    invoke-static/range {p0 .. p5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->X12Encodation([BII[BII)I

    move-result v6

    aput v6, v13, v5

    .line 518
    if-eqz p7, :cond_6

    const/4 v5, 0x4

    aget v5, v13, v5

    if-ltz v5, :cond_6

    .line 519
    const/4 v5, 0x4

    aget v12, v13, v5

    goto :goto_0

    .line 520
    :cond_6
    const/4 v5, 0x5

    invoke-static/range {p0 .. p5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->EdifactEncodation([BII[BII)I

    move-result v6

    aput v6, v13, v5

    .line 521
    if-eqz p7, :cond_7

    const/4 v5, 0x5

    aget v5, v13, v5

    if-ltz v5, :cond_7

    .line 522
    const/4 v5, 0x5

    aget v12, v13, v5

    goto/16 :goto_0

    .line 523
    :cond_7
    const/4 v5, 0x0

    aget v5, v13, v5

    if-gez v5, :cond_8

    const/4 v5, 0x1

    aget v5, v13, v5

    if-gez v5, :cond_8

    const/4 v5, 0x2

    aget v5, v13, v5

    if-gez v5, :cond_8

    const/4 v5, 0x3

    aget v5, v13, v5

    if-gez v5, :cond_8

    const/4 v5, 0x4

    aget v5, v13, v5

    if-gez v5, :cond_8

    const/4 v5, 0x5

    aget v5, v13, v5

    if-gez v5, :cond_8

    .line 524
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 526
    :cond_8
    const/4 v14, 0x0

    .line 527
    .local v14, j:I
    const v12, 0x1869f

    .line 528
    const/4 v15, 0x0

    .local v15, k:I
    :goto_1
    const/4 v5, 0x6

    if-ge v15, v5, :cond_a

    .line 529
    aget v5, v13, v15

    if-ltz v5, :cond_9

    aget v5, v13, v15

    if-ge v5, v12, :cond_9

    .line 530
    aget v12, v13, v15

    .line 531
    move v14, v15

    .line 528
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 534
    :cond_a
    if-nez v14, :cond_b

    .line 535
    invoke-static/range {p0 .. p5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->asciiEncodation([BII[BII)I

    move-result v12

    goto/16 :goto_0

    .line 536
    :cond_b
    const/4 v5, 0x1

    if-ne v14, v5, :cond_c

    .line 537
    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v11}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->C40OrTextEncodation([BII[BIIZ)I

    move-result v12

    goto/16 :goto_0

    .line 538
    :cond_c
    const/4 v5, 0x2

    if-ne v14, v5, :cond_d

    .line 539
    const/4 v11, 0x1

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v11}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->C40OrTextEncodation([BII[BIIZ)I

    move-result v12

    goto/16 :goto_0

    .line 540
    :cond_d
    const/4 v5, 0x3

    if-ne v14, v5, :cond_e

    .line 541
    invoke-static/range {p0 .. p5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->b256Encodation([BII[BII)I

    move-result v12

    goto/16 :goto_0

    .line 542
    :cond_e
    const/4 v5, 0x4

    if-ne v14, v5, :cond_0

    .line 543
    invoke-static/range {p0 .. p5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->X12Encodation([BII[BII)I

    move-result v12

    goto/16 :goto_0

    .line 546
    .end local v14           #j:I
    .end local v15           #k:I
    :cond_f
    packed-switch p6, :pswitch_data_0

    .line 565
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 548
    :pswitch_0
    invoke-static/range {p0 .. p5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->asciiEncodation([BII[BII)I

    move-result v12

    goto/16 :goto_0

    .line 550
    :pswitch_1
    const/4 v11, 0x1

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v11}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->C40OrTextEncodation([BII[BIIZ)I

    move-result v12

    goto/16 :goto_0

    .line 552
    :pswitch_2
    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v11}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->C40OrTextEncodation([BII[BIIZ)I

    move-result v12

    goto/16 :goto_0

    .line 554
    :pswitch_3
    invoke-static/range {p0 .. p5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->b256Encodation([BII[BII)I

    move-result v12

    goto/16 :goto_0

    .line 556
    :pswitch_4
    invoke-static/range {p0 .. p5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->X12Encodation([BII[BII)I

    move-result v12

    goto/16 :goto_0

    .line 558
    :pswitch_5
    invoke-static/range {p0 .. p5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->EdifactEncodation([BII[BII)I

    move-result v12

    goto/16 :goto_0

    .line 560
    :pswitch_6
    move/from16 v0, p2

    move/from16 v1, p5

    if-le v0, v1, :cond_10

    .line 561
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 562
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v12, p2

    .line 563
    goto/16 :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getNumber([BII)I
    .locals 5
    .parameter "text"
    .parameter "ptrIn"
    .parameter "n"

    .prologue
    .line 570
    const/4 v3, 0x0

    .line 571
    .local v3, v:I
    const/4 v1, 0x0

    .local v1, j:I
    move v2, p1

    .end local p1
    .local v2, ptrIn:I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 572
    add-int/lit8 p1, v2, 0x1

    .end local v2           #ptrIn:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v0, v4, 0xff

    .line 573
    .local v0, c:I
    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-le v0, v4, :cond_1

    .line 574
    :cond_0
    const/4 v3, -0x1

    .line 577
    .end local v0           #c:I
    .end local v3           #v:I
    :goto_1
    return v3

    .line 575
    .restart local v0       #c:I
    .restart local v3       #v:I
    :cond_1
    mul-int/lit8 v4, v3, 0xa

    add-int/2addr v4, v0

    add-int/lit8 v3, v4, -0x30

    .line 571
    add-int/lit8 v1, v1, 0x1

    move v2, p1

    .end local p1
    .restart local v2       #ptrIn:I
    goto :goto_0

    .end local v0           #c:I
    :cond_2
    move p1, v2

    .line 577
    .end local v2           #ptrIn:I
    .restart local p1
    goto :goto_1
.end method

.method private static isDigit(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 225
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makePadding([BII)V
    .locals 3
    .parameter "data"
    .parameter "position"
    .parameter "count"

    .prologue
    .line 213
    if-gtz p2, :cond_0

    .line 222
    :goto_0
    return-void

    .line 215
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, position:I
    const/16 v2, -0x7f

    aput-byte v2, p0, p1

    .line 216
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    .line 217
    add-int/lit8 v2, v0, 0x1

    mul-int/lit16 v2, v2, 0x95

    rem-int/lit16 v2, v2, 0xfd

    add-int/lit16 v2, v2, 0x81

    add-int/lit8 v1, v2, 0x1

    .line 218
    .local v1, t:I
    const/16 v2, 0xfe

    if-le v1, v2, :cond_1

    .line 219
    add-int/lit16 v1, v1, -0xfe

    .line 220
    :cond_1
    add-int/lit8 p1, v0, 0x1

    .end local v0           #position:I
    .restart local p1
    int-to-byte v2, v1

    aput-byte v2, p0, v0

    move v0, p1

    .line 221
    .end local p1
    .restart local v0       #position:I
    goto :goto_1

    .end local v1           #t:I
    :cond_2
    move p1, v0

    .line 222
    .end local v0           #position:I
    .restart local p1
    goto :goto_0
.end method

.method private processExtensions([BII[B)I
    .locals 12
    .parameter "text"
    .parameter "textOffset"
    .parameter "textSize"
    .parameter "data"

    .prologue
    .line 582
    iget v10, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->options:I

    and-int/lit8 v10, v10, 0x20

    if-nez v10, :cond_0

    .line 583
    const/4 v9, 0x0

    .line 660
    :goto_0
    return v9

    .line 584
    :cond_0
    const/4 v5, 0x0

    .line 585
    .local v5, order:I
    const/4 v6, 0x0

    .line 586
    .local v6, ptrIn:I
    const/4 v8, 0x0

    .local v8, ptrOut:I
    move v9, v8

    .end local v8           #ptrOut:I
    .local v9, ptrOut:I
    move v7, v6

    .line 587
    .end local v6           #ptrIn:I
    .local v7, ptrIn:I
    :goto_1
    if-ge v7, p3, :cond_15

    .line 588
    const/16 v10, 0x14

    if-le v5, v10, :cond_1

    .line 589
    const/4 v9, -0x1

    goto :goto_0

    .line 590
    :cond_1
    add-int/lit8 v6, v7, 0x1

    .end local v7           #ptrIn:I
    .restart local v6       #ptrIn:I
    add-int v10, p2, v7

    aget-byte v10, p1, v10

    and-int/lit16 v0, v10, 0xff

    .line 591
    .local v0, c:I
    add-int/lit8 v5, v5, 0x1

    .line 592
    sparse-switch v0, :sswitch_data_0

    move v8, v9

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    :goto_2
    move v9, v8

    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    move v7, v6

    .line 657
    .end local v6           #ptrIn:I
    .restart local v7       #ptrIn:I
    goto :goto_1

    .line 594
    .end local v7           #ptrIn:I
    .restart local v6       #ptrIn:I
    :sswitch_0
    iput v6, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->extOut:I

    goto :goto_0

    .line 597
    :sswitch_1
    add-int/lit8 v10, v6, 0x6

    if-le v10, p3, :cond_2

    .line 598
    const/4 v9, -0x1

    goto :goto_0

    .line 599
    :cond_2
    add-int v10, p2, v6

    const/4 v11, 0x6

    invoke-static {p1, v10, v11}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->getNumber([BII)I

    move-result v1

    .line 600
    .local v1, eci:I
    if-gez v1, :cond_3

    .line 601
    const/4 v9, -0x1

    goto :goto_0

    .line 602
    :cond_3
    add-int/lit8 v6, v6, 0x6

    .line 603
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    const/16 v10, -0xf

    aput-byte v10, p4, v9

    .line 604
    const/16 v10, 0x7f

    if-ge v1, v10, :cond_4

    .line 605
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    add-int/lit8 v10, v1, 0x1

    int-to-byte v10, v10

    aput-byte v10, p4, v8

    move v8, v9

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    goto :goto_2

    .line 606
    :cond_4
    const/16 v10, 0x3fff

    if-ge v1, v10, :cond_5

    .line 607
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    add-int/lit8 v10, v1, -0x7f

    div-int/lit16 v10, v10, 0xfe

    add-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, p4, v8

    .line 608
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    add-int/lit8 v10, v1, -0x7f

    rem-int/lit16 v10, v10, 0xfe

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, p4, v9

    goto :goto_2

    .line 611
    :cond_5
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    add-int/lit16 v10, v1, -0x3fff

    const v11, 0xfc04

    div-int/2addr v10, v11

    add-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, p4, v8

    .line 612
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    add-int/lit16 v10, v1, -0x3fff

    div-int/lit16 v10, v10, 0xfe

    rem-int/lit16 v10, v10, 0xfe

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, p4, v9

    .line 613
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    add-int/lit16 v10, v1, -0x3fff

    rem-int/lit16 v10, v10, 0xfe

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, p4, v8

    move v8, v9

    .line 615
    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    goto :goto_2

    .line 617
    .end local v1           #eci:I
    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    :sswitch_2
    const/4 v10, 0x1

    if-eq v5, v10, :cond_6

    .line 618
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 619
    :cond_6
    add-int/lit8 v10, v6, 0x9

    if-le v10, p3, :cond_7

    .line 620
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 621
    :cond_7
    add-int v10, p2, v6

    const/4 v11, 0x2

    invoke-static {p1, v10, v11}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->getNumber([BII)I

    move-result v3

    .line 622
    .local v3, fn:I
    if-lez v3, :cond_8

    const/16 v10, 0x10

    if-le v3, v10, :cond_9

    .line 623
    :cond_8
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 624
    :cond_9
    add-int/lit8 v6, v6, 0x2

    .line 625
    add-int v10, p2, v6

    const/4 v11, 0x2

    invoke-static {p1, v10, v11}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->getNumber([BII)I

    move-result v4

    .line 626
    .local v4, ft:I
    const/4 v10, 0x1

    if-le v4, v10, :cond_a

    const/16 v10, 0x10

    if-le v4, v10, :cond_b

    .line 627
    :cond_a
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 628
    :cond_b
    add-int/lit8 v6, v6, 0x2

    .line 629
    add-int v10, p2, v6

    const/4 v11, 0x5

    invoke-static {p1, v10, v11}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->getNumber([BII)I

    move-result v2

    .line 630
    .local v2, fi:I
    if-ltz v2, :cond_c

    const v10, 0xfc04

    if-lt v3, v10, :cond_d

    .line 631
    :cond_c
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 632
    :cond_d
    add-int/lit8 v6, v6, 0x5

    .line 633
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    const/16 v10, -0x17

    aput-byte v10, p4, v9

    .line 634
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    add-int/lit8 v10, v3, -0x1

    shl-int/lit8 v10, v10, 0x4

    rsub-int/lit8 v11, v4, 0x11

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p4, v8

    .line 635
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    div-int/lit16 v10, v2, 0xfe

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, p4, v9

    .line 636
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    rem-int/lit16 v10, v2, 0xfe

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, p4, v8

    move v8, v9

    .line 637
    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    goto/16 :goto_2

    .line 639
    .end local v2           #fi:I
    .end local v3           #fn:I
    .end local v4           #ft:I
    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    :sswitch_3
    const/4 v10, 0x1

    if-eq v5, v10, :cond_e

    .line 640
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 641
    :cond_e
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    const/16 v10, -0x16

    aput-byte v10, p4, v9

    goto/16 :goto_2

    .line 644
    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    :sswitch_4
    const/4 v10, 0x1

    if-eq v5, v10, :cond_f

    .line 645
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 646
    :cond_f
    add-int/lit8 v10, v6, 0x1

    if-le v10, p3, :cond_10

    .line 647
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 648
    :cond_10
    add-int/lit8 v7, v6, 0x1

    .end local v6           #ptrIn:I
    .restart local v7       #ptrIn:I
    add-int v10, p2, v6

    aget-byte v10, p1, v10

    and-int/lit16 v0, v10, 0xff

    .line 649
    const/16 v10, 0x35

    if-eq v0, v10, :cond_11

    const/16 v10, 0x35

    if-eq v0, v10, :cond_11

    .line 650
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 651
    :cond_11
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    const/16 v10, -0x16

    aput-byte v10, p4, v9

    .line 652
    add-int/lit8 v9, v8, 0x1

    .end local v8           #ptrOut:I
    .restart local v9       #ptrOut:I
    const/16 v10, 0x35

    if-ne v0, v10, :cond_12

    const/16 v10, 0xec

    :goto_3
    int-to-byte v10, v10

    aput-byte v10, p4, v8

    move v8, v9

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    move v6, v7

    .line 653
    .end local v7           #ptrIn:I
    .restart local v6       #ptrIn:I
    goto/16 :goto_2

    .line 652
    .end local v6           #ptrIn:I
    .end local v8           #ptrOut:I
    .restart local v7       #ptrIn:I
    .restart local v9       #ptrOut:I
    :cond_12
    const/16 v10, 0xed

    goto :goto_3

    .line 655
    .end local v7           #ptrIn:I
    .restart local v6       #ptrIn:I
    :sswitch_5
    const/4 v10, 0x1

    if-eq v5, v10, :cond_14

    const/4 v10, 0x2

    if-ne v5, v10, :cond_13

    aget-byte v10, p1, p2

    const/16 v11, 0x73

    if-eq v10, v11, :cond_14

    aget-byte v10, p1, p2

    const/16 v11, 0x6d

    if-eq v10, v11, :cond_14

    .line 656
    :cond_13
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 657
    :cond_14
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptrOut:I
    .restart local v8       #ptrOut:I
    const/16 v10, -0x18

    aput-byte v10, p4, v9

    goto/16 :goto_2

    .line 660
    .end local v0           #c:I
    .end local v6           #ptrIn:I
    .end local v8           #ptrOut:I
    .restart local v7       #ptrIn:I
    .restart local v9       #ptrOut:I
    :cond_15
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 592
    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_5
        0x6d -> :sswitch_4
        0x70 -> :sswitch_3
        0x73 -> :sswitch_2
    .end sparse-switch
.end method

.method private setBit(III)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "xByte"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->image:[B

    mul-int v1, p2, p3

    div-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    aget-byte v2, v0, v1

    const/16 v3, 0x80

    and-int/lit8 v4, p1, 0x7

    shr-int/2addr v3, v4

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 166
    return-void
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 18
    .parameter "foreground"
    .parameter "background"

    .prologue
    .line 1261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->image:[B

    if-nez v1, :cond_0

    .line 1262
    const/4 v11, 0x0

    .line 1281
    :goto_0
    return-object v11

    .line 1263
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v9

    .line 1264
    .local v9, f:I
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v10

    .line 1265
    .local v10, g:I
    new-instance v8, Ljava/awt/Canvas;

    invoke-direct {v8}, Ljava/awt/Canvas;-><init>()V

    .line 1267
    .local v8, canvas:Ljava/awt/Canvas;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    mul-int/lit8 v5, v5, 0x2

    add-int v2, v1, v5

    .line 1268
    .local v2, w:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->height:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    mul-int/lit8 v5, v5, 0x2

    add-int v3, v1, v5

    .line 1269
    .local v3, h:I
    mul-int v1, v2, v3

    new-array v4, v1, [I

    .line 1270
    .local v4, pix:[I
    add-int/lit8 v1, v2, 0x7

    div-int/lit8 v17, v1, 0x8

    .line 1271
    .local v17, stride:I
    const/4 v15, 0x0

    .line 1272
    .local v15, ptr:I
    const/4 v13, 0x0

    .local v13, k:I
    :goto_1
    if-ge v13, v3, :cond_3

    .line 1273
    mul-int v14, v13, v17

    .line 1274
    .local v14, p:I
    const/4 v12, 0x0

    .local v12, j:I
    move/from16 v16, v15

    .end local v15           #ptr:I
    .local v16, ptr:I
    :goto_2
    if-ge v12, v2, :cond_2

    .line 1275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->image:[B

    div-int/lit8 v5, v12, 0x8

    add-int/2addr v5, v14

    aget-byte v1, v1, v5

    and-int/lit16 v7, v1, 0xff

    .line 1276
    .local v7, b:I
    rem-int/lit8 v1, v12, 0x8

    shl-int/2addr v7, v1

    .line 1277
    add-int/lit8 v15, v16, 0x1

    .end local v16           #ptr:I
    .restart local v15       #ptr:I
    and-int/lit16 v1, v7, 0x80

    if-nez v1, :cond_1

    move v1, v10

    :goto_3
    aput v1, v4, v16

    .line 1274
    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v15

    .end local v15           #ptr:I
    .restart local v16       #ptr:I
    goto :goto_2

    .end local v16           #ptr:I
    .restart local v15       #ptr:I
    :cond_1
    move v1, v9

    .line 1277
    goto :goto_3

    .line 1272
    .end local v7           #b:I
    .end local v15           #ptr:I
    .restart local v16       #ptr:I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v16

    .end local v16           #ptr:I
    .restart local v15       #ptr:I
    goto :goto_1

    .line 1280
    .end local v12           #j:I
    .end local v14           #p:I
    :cond_3
    new-instance v1, Ljava/awt/image/MemoryImageSource;

    const/4 v5, 0x0

    move v6, v2

    invoke-direct/range {v1 .. v6}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v8, v1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v11

    .line 1281
    .local v11, img:Ljava/awt/Image;
    goto :goto_0
.end method

.method public createImage()Lcom/itextpdf/text/Image;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 749
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->image:[B

    if-nez v0, :cond_0

    .line 752
    :goto_0
    return-object v6

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->image:[B

    iget v1, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->width:I

    iget v3, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v3, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->height:I

    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v0, v1, v3}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->compress([BII)[B

    move-result-object v5

    .line 752
    .local v5, g4:[B
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->width:I

    iget v1, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->height:I

    iget v3, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    const/16 v3, 0x100

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/text/Image;->getInstance(IIZII[B[I)Lcom/itextpdf/text/Image;

    move-result-object v6

    goto :goto_0
.end method

.method public generate(Ljava/lang/String;)I
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 675
    const-string v1, "iso-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 676
    .local v0, t:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->generate([BII)I

    move-result v1

    return v1
.end method

.method public generate([BII)I
    .locals 17
    .parameter "text"
    .parameter "textOffset"
    .parameter "textSize"

    .prologue
    .line 694
    const/16 v4, 0x9c4

    new-array v7, v4, [B

    .line 695
    .local v7, data:[B
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->extOut:I

    .line 696
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->processExtensions([BII[B)I

    move-result v8

    .line 697
    .local v8, extCount:I
    if-gez v8, :cond_0

    .line 698
    const/4 v4, 0x5

    .line 740
    :goto_0
    return v4

    .line 700
    :cond_0
    const/4 v13, -0x1

    .line 701
    .local v13, e:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->height:I

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->width:I

    if-nez v4, :cond_5

    .line 702
    :cond_1
    sget-object v4, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->dmSizes:[Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    sget-object v5, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->dmSizes:[Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v16, v4, v5

    .line 703
    .local v16, last:Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->extOut:I

    add-int v5, p2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->extOut:I

    sub-int v6, p3, v4

    move-object/from16 v0, v16

    iget v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->dataSize:I

    sub-int v9, v4, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->options:I

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v11}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->getEncodation([BII[BIIIZ)I

    move-result v13

    .line 704
    if-gez v13, :cond_2

    .line 705
    const/4 v4, 0x1

    goto :goto_0

    .line 707
    :cond_2
    add-int/2addr v13, v8

    .line 708
    const/4 v15, 0x0

    .local v15, k:I
    :goto_1
    sget-object v4, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->dmSizes:[Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    array-length v4, v4

    if-ge v15, v4, :cond_3

    .line 709
    sget-object v4, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->dmSizes:[Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    aget-object v4, v4, v15

    iget v4, v4, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->dataSize:I

    if-lt v4, v13, :cond_4

    .line 712
    :cond_3
    sget-object v4, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->dmSizes:[Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    aget-object v12, v4, v15

    .line 713
    .local v12, dm:Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;
    iget v4, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->height:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->height:I

    .line 714
    iget v4, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->width:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->width:I

    .line 731
    .end local v16           #last:Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->options:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_a

    .line 732
    const/4 v4, 0x0

    goto :goto_0

    .line 708
    .end local v12           #dm:Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;
    .restart local v16       #last:Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 717
    .end local v15           #k:I
    .end local v16           #last:Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;
    :cond_5
    const/4 v15, 0x0

    .restart local v15       #k:I
    :goto_3
    sget-object v4, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->dmSizes:[Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    array-length v4, v4

    if-ge v15, v4, :cond_6

    .line 718
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->height:I

    sget-object v5, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->dmSizes:[Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    aget-object v5, v5, v15

    iget v5, v5, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->height:I

    if-ne v4, v5, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->width:I

    sget-object v5, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->dmSizes:[Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    aget-object v5, v5, v15

    iget v5, v5, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->width:I

    if-ne v4, v5, :cond_7

    .line 721
    :cond_6
    sget-object v4, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->dmSizes:[Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    array-length v4, v4

    if-ne v15, v4, :cond_8

    .line 722
    const/4 v4, 0x3

    goto/16 :goto_0

    .line 717
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 724
    :cond_8
    sget-object v4, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->dmSizes:[Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;

    aget-object v12, v4, v15

    .line 725
    .restart local v12       #dm:Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->extOut:I

    add-int v5, p2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->extOut:I

    sub-int v6, p3, v4

    iget v4, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->dataSize:I

    sub-int v9, v4, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->options:I

    const/4 v11, 0x1

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v11}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->getEncodation([BII[BIIIZ)I

    move-result v13

    .line 726
    if-gez v13, :cond_9

    .line 727
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 729
    :cond_9
    add-int/2addr v13, v8

    goto :goto_2

    .line 734
    :cond_a
    iget v4, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    iget v5, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->image:[B

    .line 735
    iget v4, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->dataSize:I

    sub-int/2addr v4, v13

    invoke-static {v7, v13, v4}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->makePadding([BII)V

    .line 736
    iget v4, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->height:I

    iget v5, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->height:I

    iget v6, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->heightSection:I

    div-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->width:I

    iget v6, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->width:I

    iget v9, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->widthSection:I

    div-int/2addr v6, v9

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$Placement;->doPlacement(II)[S

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->place:[S

    .line 737
    iget v4, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->dataSize:I

    iget v5, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->dataSize:I

    add-int/lit8 v5, v5, 0x2

    iget v6, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->dataBlock:I

    div-int/2addr v5, v6

    iget v6, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->errorBlock:I

    mul-int/2addr v5, v6

    add-int v14, v4, v5

    .line 738
    .local v14, full:I
    iget v4, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->dataSize:I

    iget v5, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->dataBlock:I

    iget v6, v12, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;->errorBlock:I

    invoke-static {v7, v4, v5, v6}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix$ReedSolomon;->generateECC([BIII)V

    .line 739
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14, v12}, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->draw([BILcom/itextpdf/text/pdf/BarcodeDatamatrix$DmParams;)V

    .line 740
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->height:I

    return v0
.end method

.method public getImage()[B
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->image:[B

    return-object v0
.end method

.method public getOptions()I
    .locals 1

    .prologue
    .line 905
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->options:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 841
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->width:I

    return v0
.end method

.method public getWs()I
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 832
    iput p1, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->height:I

    .line 833
    return-void
.end method

.method public setOptions(I)V
    .locals 0
    .parameter "options"

    .prologue
    .line 936
    iput p1, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->options:I

    .line 937
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 881
    iput p1, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->width:I

    .line 882
    return-void
.end method

.method public setWs(I)V
    .locals 0
    .parameter "ws"

    .prologue
    .line 897
    iput p1, p0, Lcom/itextpdf/text/pdf/BarcodeDatamatrix;->ws:I

    .line 898
    return-void
.end method
