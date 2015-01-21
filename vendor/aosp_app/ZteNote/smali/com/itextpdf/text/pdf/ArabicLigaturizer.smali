.class public Lcom/itextpdf/text/pdf/ArabicLigaturizer;
.super Ljava/lang/Object;
.source "ArabicLigaturizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;
    }
.end annotation


# static fields
.field private static final ALEF:C = '\u0627'

.field private static final ALEFHAMZA:C = '\u0623'

.field private static final ALEFHAMZABELOW:C = '\u0625'

.field private static final ALEFMADDA:C = '\u0622'

.field private static final ALEFMAKSURA:C = '\u0649'

.field private static final DAMMA:C = '\u064f'

.field public static final DIGITS_AN2EN:I = 0x40

.field public static final DIGITS_EN2AN:I = 0x20

.field public static final DIGITS_EN2AN_INIT_AL:I = 0x80

.field public static final DIGITS_EN2AN_INIT_LR:I = 0x60

.field public static final DIGITS_MASK:I = 0xe0

.field private static final DIGITS_RESERVED:I = 0xa0

.field public static final DIGIT_TYPE_AN:I = 0x0

.field public static final DIGIT_TYPE_AN_EXTENDED:I = 0x100

.field public static final DIGIT_TYPE_MASK:I = 0x100

.field private static final FARSIYEH:C = '\u06cc'

.field private static final FATHA:C = '\u064e'

.field private static final HAMZA:C = '\u0621'

.field private static final HAMZAABOVE:C = '\u0654'

.field private static final HAMZABELOW:C = '\u0655'

.field private static final KASRA:C = '\u0650'

.field private static final LAM:C = '\u0644'

.field private static final LAM_ALEF:C = '\ufefb'

.field private static final LAM_ALEFHAMZA:C = '\ufef7'

.field private static final LAM_ALEFHAMZABELOW:C = '\ufef9'

.field private static final LAM_ALEFMADDA:C = '\ufef5'

.field private static final MADDA:C = '\u0653'

.field private static final SHADDA:C = '\u0651'

.field private static final TATWEEL:C = '\u0640'

.field private static final WAW:C = '\u0648'

.field private static final WAWHAMZA:C = '\u0624'

.field private static final YEH:C = '\u064a'

.field private static final YEHHAMZA:C = '\u0626'

.field private static final ZWJ:C = '\u200d'

.field public static final ar_composedtashkeel:I = 0x4

.field public static final ar_lig:I = 0x8

.field public static final ar_nothing:I = 0x0

.field public static final ar_novowel:I = 0x1

.field private static final chartable:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x5

    .line 623
    const/16 v0, 0x4c

    new-array v0, v0, [[C

    const/4 v1, 0x0

    new-array v2, v5, [C

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [C

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v4, [C

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v4, [C

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v4, [C

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v4, [C

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [C

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [C

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [C

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [C

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [C

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [C

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [C

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [C

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [C

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [C

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [C

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [C

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [C

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [C

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [C

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [C

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [C

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [C

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [C

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [C

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [C

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [C

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [C

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [C

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [C

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [C

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [C

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v4, [C

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [C

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [C

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v4, [C

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [C

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [C

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [C

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [C

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [C

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [C

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [C

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [C

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [C

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [C

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v4, [C

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v4, [C

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v4, [C

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v4, [C

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v4, [C

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v4, [C

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [C

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [C

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [C

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [C

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [C

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [C

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [C

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v4, [C

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [C

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [C

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v4, [C

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [C

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v4, [C

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v4, [C

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v4, [C

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v4, [C

    fill-array-data v2, :array_45

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v4, [C

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v4, [C

    fill-array-data v2, :array_47

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [C

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [C

    fill-array-data v2, :array_49

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v4, [C

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v4, [C

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->chartable:[[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x21t 0x6t
        0x80t 0xfet
    .end array-data

    :array_1
    .array-data 0x2
        0x22t 0x6t
        0x81t 0xfet
        0x82t 0xfet
    .end array-data

    nop

    :array_2
    .array-data 0x2
        0x23t 0x6t
        0x83t 0xfet
        0x84t 0xfet
    .end array-data

    nop

    :array_3
    .array-data 0x2
        0x24t 0x6t
        0x85t 0xfet
        0x86t 0xfet
    .end array-data

    nop

    :array_4
    .array-data 0x2
        0x25t 0x6t
        0x87t 0xfet
        0x88t 0xfet
    .end array-data

    nop

    :array_5
    .array-data 0x2
        0x26t 0x6t
        0x89t 0xfet
        0x8at 0xfet
        0x8bt 0xfet
        0x8ct 0xfet
    .end array-data

    nop

    :array_6
    .array-data 0x2
        0x27t 0x6t
        0x8dt 0xfet
        0x8et 0xfet
    .end array-data

    nop

    :array_7
    .array-data 0x2
        0x28t 0x6t
        0x8ft 0xfet
        0x90t 0xfet
        0x91t 0xfet
        0x92t 0xfet
    .end array-data

    nop

    :array_8
    .array-data 0x2
        0x29t 0x6t
        0x93t 0xfet
        0x94t 0xfet
    .end array-data

    nop

    :array_9
    .array-data 0x2
        0x2at 0x6t
        0x95t 0xfet
        0x96t 0xfet
        0x97t 0xfet
        0x98t 0xfet
    .end array-data

    nop

    :array_a
    .array-data 0x2
        0x2bt 0x6t
        0x99t 0xfet
        0x9at 0xfet
        0x9bt 0xfet
        0x9ct 0xfet
    .end array-data

    nop

    :array_b
    .array-data 0x2
        0x2ct 0x6t
        0x9dt 0xfet
        0x9et 0xfet
        0x9ft 0xfet
        0xa0t 0xfet
    .end array-data

    nop

    :array_c
    .array-data 0x2
        0x2dt 0x6t
        0xa1t 0xfet
        0xa2t 0xfet
        0xa3t 0xfet
        0xa4t 0xfet
    .end array-data

    nop

    :array_d
    .array-data 0x2
        0x2et 0x6t
        0xa5t 0xfet
        0xa6t 0xfet
        0xa7t 0xfet
        0xa8t 0xfet
    .end array-data

    nop

    :array_e
    .array-data 0x2
        0x2ft 0x6t
        0xa9t 0xfet
        0xaat 0xfet
    .end array-data

    nop

    :array_f
    .array-data 0x2
        0x30t 0x6t
        0xabt 0xfet
        0xact 0xfet
    .end array-data

    nop

    :array_10
    .array-data 0x2
        0x31t 0x6t
        0xadt 0xfet
        0xaet 0xfet
    .end array-data

    nop

    :array_11
    .array-data 0x2
        0x32t 0x6t
        0xaft 0xfet
        0xb0t 0xfet
    .end array-data

    nop

    :array_12
    .array-data 0x2
        0x33t 0x6t
        0xb1t 0xfet
        0xb2t 0xfet
        0xb3t 0xfet
        0xb4t 0xfet
    .end array-data

    nop

    :array_13
    .array-data 0x2
        0x34t 0x6t
        0xb5t 0xfet
        0xb6t 0xfet
        0xb7t 0xfet
        0xb8t 0xfet
    .end array-data

    nop

    :array_14
    .array-data 0x2
        0x35t 0x6t
        0xb9t 0xfet
        0xbat 0xfet
        0xbbt 0xfet
        0xbct 0xfet
    .end array-data

    nop

    :array_15
    .array-data 0x2
        0x36t 0x6t
        0xbdt 0xfet
        0xbet 0xfet
        0xbft 0xfet
        0xc0t 0xfet
    .end array-data

    nop

    :array_16
    .array-data 0x2
        0x37t 0x6t
        0xc1t 0xfet
        0xc2t 0xfet
        0xc3t 0xfet
        0xc4t 0xfet
    .end array-data

    nop

    :array_17
    .array-data 0x2
        0x38t 0x6t
        0xc5t 0xfet
        0xc6t 0xfet
        0xc7t 0xfet
        0xc8t 0xfet
    .end array-data

    nop

    :array_18
    .array-data 0x2
        0x39t 0x6t
        0xc9t 0xfet
        0xcat 0xfet
        0xcbt 0xfet
        0xcct 0xfet
    .end array-data

    nop

    :array_19
    .array-data 0x2
        0x3at 0x6t
        0xcdt 0xfet
        0xcet 0xfet
        0xcft 0xfet
        0xd0t 0xfet
    .end array-data

    nop

    :array_1a
    .array-data 0x2
        0x40t 0x6t
        0x40t 0x6t
        0x40t 0x6t
        0x40t 0x6t
        0x40t 0x6t
    .end array-data

    nop

    :array_1b
    .array-data 0x2
        0x41t 0x6t
        0xd1t 0xfet
        0xd2t 0xfet
        0xd3t 0xfet
        0xd4t 0xfet
    .end array-data

    nop

    :array_1c
    .array-data 0x2
        0x42t 0x6t
        0xd5t 0xfet
        0xd6t 0xfet
        0xd7t 0xfet
        0xd8t 0xfet
    .end array-data

    nop

    :array_1d
    .array-data 0x2
        0x43t 0x6t
        0xd9t 0xfet
        0xdat 0xfet
        0xdbt 0xfet
        0xdct 0xfet
    .end array-data

    nop

    :array_1e
    .array-data 0x2
        0x44t 0x6t
        0xddt 0xfet
        0xdet 0xfet
        0xdft 0xfet
        0xe0t 0xfet
    .end array-data

    nop

    :array_1f
    .array-data 0x2
        0x45t 0x6t
        0xe1t 0xfet
        0xe2t 0xfet
        0xe3t 0xfet
        0xe4t 0xfet
    .end array-data

    nop

    :array_20
    .array-data 0x2
        0x46t 0x6t
        0xe5t 0xfet
        0xe6t 0xfet
        0xe7t 0xfet
        0xe8t 0xfet
    .end array-data

    nop

    :array_21
    .array-data 0x2
        0x47t 0x6t
        0xe9t 0xfet
        0xeat 0xfet
        0xebt 0xfet
        0xect 0xfet
    .end array-data

    nop

    :array_22
    .array-data 0x2
        0x48t 0x6t
        0xedt 0xfet
        0xeet 0xfet
    .end array-data

    nop

    :array_23
    .array-data 0x2
        0x49t 0x6t
        0xeft 0xfet
        0xf0t 0xfet
        0xe8t 0xfbt
        0xe9t 0xfbt
    .end array-data

    nop

    :array_24
    .array-data 0x2
        0x4at 0x6t
        0xf1t 0xfet
        0xf2t 0xfet
        0xf3t 0xfet
        0xf4t 0xfet
    .end array-data

    nop

    :array_25
    .array-data 0x2
        0x71t 0x6t
        0x50t 0xfbt
        0x51t 0xfbt
    .end array-data

    nop

    :array_26
    .array-data 0x2
        0x79t 0x6t
        0x66t 0xfbt
        0x67t 0xfbt
        0x68t 0xfbt
        0x69t 0xfbt
    .end array-data

    nop

    :array_27
    .array-data 0x2
        0x7at 0x6t
        0x5et 0xfbt
        0x5ft 0xfbt
        0x60t 0xfbt
        0x61t 0xfbt
    .end array-data

    nop

    :array_28
    .array-data 0x2
        0x7bt 0x6t
        0x52t 0xfbt
        0x53t 0xfbt
        0x54t 0xfbt
        0x55t 0xfbt
    .end array-data

    nop

    :array_29
    .array-data 0x2
        0x7et 0x6t
        0x56t 0xfbt
        0x57t 0xfbt
        0x58t 0xfbt
        0x59t 0xfbt
    .end array-data

    nop

    :array_2a
    .array-data 0x2
        0x7ft 0x6t
        0x62t 0xfbt
        0x63t 0xfbt
        0x64t 0xfbt
        0x65t 0xfbt
    .end array-data

    nop

    :array_2b
    .array-data 0x2
        0x80t 0x6t
        0x5at 0xfbt
        0x5bt 0xfbt
        0x5ct 0xfbt
        0x5dt 0xfbt
    .end array-data

    nop

    :array_2c
    .array-data 0x2
        0x83t 0x6t
        0x76t 0xfbt
        0x77t 0xfbt
        0x78t 0xfbt
        0x79t 0xfbt
    .end array-data

    nop

    :array_2d
    .array-data 0x2
        0x84t 0x6t
        0x72t 0xfbt
        0x73t 0xfbt
        0x74t 0xfbt
        0x75t 0xfbt
    .end array-data

    nop

    :array_2e
    .array-data 0x2
        0x86t 0x6t
        0x7at 0xfbt
        0x7bt 0xfbt
        0x7ct 0xfbt
        0x7dt 0xfbt
    .end array-data

    nop

    :array_2f
    .array-data 0x2
        0x87t 0x6t
        0x7et 0xfbt
        0x7ft 0xfbt
        0x80t 0xfbt
        0x81t 0xfbt
    .end array-data

    nop

    :array_30
    .array-data 0x2
        0x88t 0x6t
        0x88t 0xfbt
        0x89t 0xfbt
    .end array-data

    nop

    :array_31
    .array-data 0x2
        0x8ct 0x6t
        0x84t 0xfbt
        0x85t 0xfbt
    .end array-data

    nop

    :array_32
    .array-data 0x2
        0x8dt 0x6t
        0x82t 0xfbt
        0x83t 0xfbt
    .end array-data

    nop

    :array_33
    .array-data 0x2
        0x8et 0x6t
        0x86t 0xfbt
        0x87t 0xfbt
    .end array-data

    nop

    :array_34
    .array-data 0x2
        0x91t 0x6t
        0x8ct 0xfbt
        0x8dt 0xfbt
    .end array-data

    nop

    :array_35
    .array-data 0x2
        0x98t 0x6t
        0x8at 0xfbt
        0x8bt 0xfbt
    .end array-data

    nop

    :array_36
    .array-data 0x2
        0xa4t 0x6t
        0x6at 0xfbt
        0x6bt 0xfbt
        0x6ct 0xfbt
        0x6dt 0xfbt
    .end array-data

    nop

    :array_37
    .array-data 0x2
        0xa6t 0x6t
        0x6et 0xfbt
        0x6ft 0xfbt
        0x70t 0xfbt
        0x71t 0xfbt
    .end array-data

    nop

    :array_38
    .array-data 0x2
        0xa9t 0x6t
        0x8et 0xfbt
        0x8ft 0xfbt
        0x90t 0xfbt
        0x91t 0xfbt
    .end array-data

    nop

    :array_39
    .array-data 0x2
        0xadt 0x6t
        0xd3t 0xfbt
        0xd4t 0xfbt
        0xd5t 0xfbt
        0xd6t 0xfbt
    .end array-data

    nop

    :array_3a
    .array-data 0x2
        0xaft 0x6t
        0x92t 0xfbt
        0x93t 0xfbt
        0x94t 0xfbt
        0x95t 0xfbt
    .end array-data

    nop

    :array_3b
    .array-data 0x2
        0xb1t 0x6t
        0x9at 0xfbt
        0x9bt 0xfbt
        0x9ct 0xfbt
        0x9dt 0xfbt
    .end array-data

    nop

    :array_3c
    .array-data 0x2
        0xb3t 0x6t
        0x96t 0xfbt
        0x97t 0xfbt
        0x98t 0xfbt
        0x99t 0xfbt
    .end array-data

    nop

    :array_3d
    .array-data 0x2
        0xbat 0x6t
        0x9et 0xfbt
        0x9ft 0xfbt
    .end array-data

    nop

    :array_3e
    .array-data 0x2
        0xbbt 0x6t
        0xa0t 0xfbt
        0xa1t 0xfbt
        0xa2t 0xfbt
        0xa3t 0xfbt
    .end array-data

    nop

    :array_3f
    .array-data 0x2
        0xbet 0x6t
        0xaat 0xfbt
        0xabt 0xfbt
        0xact 0xfbt
        0xadt 0xfbt
    .end array-data

    nop

    :array_40
    .array-data 0x2
        0xc0t 0x6t
        0xa4t 0xfbt
        0xa5t 0xfbt
    .end array-data

    nop

    :array_41
    .array-data 0x2
        0xc1t 0x6t
        0xa6t 0xfbt
        0xa7t 0xfbt
        0xa8t 0xfbt
        0xa9t 0xfbt
    .end array-data

    nop

    :array_42
    .array-data 0x2
        0xc5t 0x6t
        0xe0t 0xfbt
        0xe1t 0xfbt
    .end array-data

    nop

    :array_43
    .array-data 0x2
        0xc6t 0x6t
        0xd9t 0xfbt
        0xdat 0xfbt
    .end array-data

    nop

    :array_44
    .array-data 0x2
        0xc7t 0x6t
        0xd7t 0xfbt
        0xd8t 0xfbt
    .end array-data

    nop

    :array_45
    .array-data 0x2
        0xc8t 0x6t
        0xdbt 0xfbt
        0xdct 0xfbt
    .end array-data

    nop

    :array_46
    .array-data 0x2
        0xc9t 0x6t
        0xe2t 0xfbt
        0xe3t 0xfbt
    .end array-data

    nop

    :array_47
    .array-data 0x2
        0xcbt 0x6t
        0xdet 0xfbt
        0xdft 0xfbt
    .end array-data

    nop

    :array_48
    .array-data 0x2
        0xcct 0x6t
        0xfct 0xfbt
        0xfdt 0xfbt
        0xfet 0xfbt
        0xfft 0xfbt
    .end array-data

    nop

    :array_49
    .array-data 0x2
        0xd0t 0x6t
        0xe4t 0xfbt
        0xe5t 0xfbt
        0xe6t 0xfbt
        0xe7t 0xfbt
    .end array-data

    nop

    :array_4a
    .array-data 0x2
        0xd2t 0x6t
        0xaet 0xfbt
        0xaft 0xfbt
    .end array-data

    nop

    :array_4b
    .array-data 0x2
        0xd3t 0x6t
        0xb0t 0xfbt
        0xb1t 0xfbt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    return-void
.end method

.method static arabic_shape([CII[CIII)I
    .locals 6
    .parameter "src"
    .parameter "srcoffset"
    .parameter "srclength"
    .parameter "dest"
    .parameter "destoffset"
    .parameter "destlength"
    .parameter "level"

    .prologue
    .line 501
    new-array v1, p2, [C

    .line 502
    .local v1, str:[C
    add-int v3, p2, p1

    add-int/lit8 v0, v3, -0x1

    .local v0, k:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 503
    sub-int v3, v0, p1

    aget-char v4, p0, v0

    aput-char v4, v1, v3

    .line 502
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 504
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 505
    .local v2, string:Ljava/lang/StringBuffer;
    invoke-static {v1, v2, p6}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->shape([CLjava/lang/StringBuffer;I)V

    .line 506
    and-int/lit8 v3, p6, 0xc

    if-eqz v3, :cond_1

    .line 507
    invoke-static {v2, p6}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->doublelig(Ljava/lang/StringBuffer;I)V

    .line 509
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-static {v3, v4, p3, p4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    return v3
.end method

.method static charshape(CI)C
    .locals 5
    .parameter "s"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 63
    const/16 v3, 0x621

    if-lt p0, v3, :cond_3

    const/16 v3, 0x6d3

    if-gt p0, v3, :cond_3

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, l:I
    sget-object v3, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->chartable:[[C

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 66
    .local v2, r:I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 67
    add-int v3, v0, v2

    div-int/lit8 v1, v3, 0x2

    .line 68
    .local v1, m:I
    sget-object v3, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->chartable:[[C

    aget-object v3, v3, v1

    aget-char v3, v3, v4

    if-ne p0, v3, :cond_1

    .line 69
    sget-object v3, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->chartable:[[C

    aget-object v3, v3, v1

    add-int/lit8 v4, p1, 0x1

    aget-char p0, v3, v4

    .line 81
    .end local v0           #l:I
    .end local v1           #m:I
    .end local v2           #r:I
    .end local p0
    :cond_0
    :goto_1
    return p0

    .line 71
    .restart local v0       #l:I
    .restart local v1       #m:I
    .restart local v2       #r:I
    .restart local p0
    :cond_1
    sget-object v3, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->chartable:[[C

    aget-object v3, v3, v1

    aget-char v3, v3, v4

    if-ge p0, v3, :cond_2

    .line 72
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 75
    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0           #l:I
    .end local v1           #m:I
    .end local v2           #r:I
    :cond_3
    const v3, 0xfef5

    if-lt p0, v3, :cond_0

    const v3, 0xfefb

    if-gt p0, v3, :cond_0

    .line 80
    add-int v3, p0, p1

    int-to-char p0, v3

    goto :goto_1
.end method

.method static connects_to_left(Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;)Z
    .locals 2
    .parameter "a"

    .prologue
    .line 428
    iget v0, p0, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->numshapes:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static copycstostring(Ljava/lang/StringBuffer;Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;I)V
    .locals 1
    .parameter "string"
    .parameter "s"
    .parameter "level"

    .prologue
    .line 225
    iget-char v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-char v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    iget v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    .line 230
    iget-char v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->mark1:C

    if-eqz v0, :cond_2

    .line 231
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3

    .line 232
    iget-char v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->mark1:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 233
    iget v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    .line 239
    :cond_2
    :goto_1
    iget-char v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->vowel:C

    if-eqz v0, :cond_0

    .line 240
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_4

    .line 241
    iget-char v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->vowel:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    iget v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    goto :goto_0

    .line 236
    :cond_3
    iget v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    goto :goto_1

    .line 245
    :cond_4
    iget v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    goto :goto_0
.end method

.method static doublelig(Ljava/lang/StringBuffer;I)V
    .locals 7
    .parameter "string"
    .parameter "level"

    .prologue
    const/16 v6, 0x651

    .line 261
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .local v2, len:I
    move v3, v2

    .line 262
    .local v3, olen:I
    const/4 v0, 0x0

    .local v0, j:I
    const/4 v4, 0x1

    .line 265
    .local v4, si:I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, lapresult:C
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_0

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 303
    :cond_0
    :goto_1
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_1

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 412
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 413
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 414
    add-int/lit8 v2, v2, -0x1

    .line 415
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
    :pswitch_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 281
    :pswitch_1
    const v1, 0xfc5e

    .line 282
    goto :goto_1

    .line 272
    :pswitch_2
    const v1, 0xfc62

    .line 273
    goto :goto_1

    .line 275
    :pswitch_3
    const v1, 0xfc60

    .line 276
    goto :goto_1

    .line 278
    :pswitch_4
    const v1, 0xfc61

    .line 279
    goto :goto_1

    .line 284
    :pswitch_5
    const v1, 0xfc5f

    goto :goto_1

    .line 289
    :pswitch_6
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_0

    .line 290
    const v1, 0xfc62

    goto :goto_1

    .line 293
    :pswitch_7
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_0

    .line 294
    const v1, 0xfc60

    goto :goto_1

    .line 297
    :pswitch_8
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_0

    .line 298
    const v1, 0xfc61

    goto :goto_1

    .line 306
    :sswitch_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto :goto_2

    .line 308
    :sswitch_1
    const v1, 0xfc3f

    .line 309
    goto :goto_2

    .line 311
    :sswitch_2
    const v1, 0xfcc9

    .line 312
    goto :goto_2

    .line 314
    :sswitch_3
    const v1, 0xfc40

    .line 315
    goto :goto_2

    .line 317
    :sswitch_4
    const v1, 0xfcca

    .line 318
    goto :goto_2

    .line 320
    :sswitch_5
    const v1, 0xfc41

    .line 321
    goto :goto_2

    .line 323
    :sswitch_6
    const v1, 0xfccb

    .line 324
    goto :goto_2

    .line 326
    :sswitch_7
    const v1, 0xfc42

    .line 327
    goto :goto_2

    .line 329
    :sswitch_8
    const v1, 0xfccc

    goto :goto_2

    .line 334
    :sswitch_9
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    .line 336
    :sswitch_a
    const v1, 0xfca1

    .line 337
    goto :goto_2

    .line 339
    :sswitch_b
    const v1, 0xfca2

    .line 340
    goto :goto_2

    .line 342
    :sswitch_c
    const v1, 0xfca3

    goto :goto_2

    .line 347
    :sswitch_d
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_3

    goto/16 :goto_2

    .line 349
    :sswitch_e
    const v1, 0xfc9c

    .line 350
    goto/16 :goto_2

    .line 352
    :sswitch_f
    const v1, 0xfc9d

    .line 353
    goto/16 :goto_2

    .line 355
    :sswitch_10
    const v1, 0xfc9e

    goto/16 :goto_2

    .line 360
    :sswitch_11
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_4

    goto/16 :goto_2

    .line 362
    :sswitch_12
    const v1, 0xfcd2

    .line 363
    goto/16 :goto_2

    .line 365
    :sswitch_13
    const v1, 0xfcd3

    .line 366
    goto/16 :goto_2

    .line 368
    :sswitch_14
    const v1, 0xfcd4

    goto/16 :goto_2

    .line 374
    :sswitch_15
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_2

    :pswitch_9
    goto/16 :goto_2

    .line 376
    :pswitch_a
    const v1, 0xfc8a

    .line 377
    goto/16 :goto_2

    .line 379
    :pswitch_b
    const v1, 0xfc8b

    goto/16 :goto_2

    .line 384
    :sswitch_16
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_5

    goto/16 :goto_2

    .line 386
    :sswitch_17
    const v1, 0xfcce

    .line 387
    goto/16 :goto_2

    .line 389
    :sswitch_18
    const v1, 0xfccf

    .line 390
    goto/16 :goto_2

    .line 392
    :sswitch_19
    const v1, 0xfcd0

    .line 393
    goto/16 :goto_2

    .line 395
    :sswitch_1a
    const v1, 0xfcd1

    goto/16 :goto_2

    .line 401
    :sswitch_1b
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_2

    .line 403
    :pswitch_c
    const v1, 0xfc32

    goto/16 :goto_2

    .line 419
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 420
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v0, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 421
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 424
    .end local v1           #lapresult:C
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 425
    return-void

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x64e
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_0
    .end packed-switch

    .line 304
    :sswitch_data_0
    .sparse-switch
        0xfe91 -> :sswitch_d
        0xfe97 -> :sswitch_9
        0xfed3 -> :sswitch_1b
        0xfedf -> :sswitch_0
        0xfee3 -> :sswitch_16
        0xfee7 -> :sswitch_11
        0xfee8 -> :sswitch_15
    .end sparse-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x64c
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    .line 306
    :sswitch_data_1
    .sparse-switch
        0xfe9e -> :sswitch_1
        0xfea0 -> :sswitch_2
        0xfea2 -> :sswitch_3
        0xfea4 -> :sswitch_4
        0xfea6 -> :sswitch_5
        0xfea8 -> :sswitch_6
        0xfee2 -> :sswitch_7
        0xfee4 -> :sswitch_8
    .end sparse-switch

    .line 334
    :sswitch_data_2
    .sparse-switch
        0xfea0 -> :sswitch_a
        0xfea4 -> :sswitch_b
        0xfea8 -> :sswitch_c
    .end sparse-switch

    .line 347
    :sswitch_data_3
    .sparse-switch
        0xfea0 -> :sswitch_e
        0xfea4 -> :sswitch_f
        0xfea8 -> :sswitch_10
    .end sparse-switch

    .line 360
    :sswitch_data_4
    .sparse-switch
        0xfea0 -> :sswitch_12
        0xfea4 -> :sswitch_13
        0xfea8 -> :sswitch_14
    .end sparse-switch

    .line 374
    :pswitch_data_2
    .packed-switch 0xfeae
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 384
    :sswitch_data_5
    .sparse-switch
        0xfea0 -> :sswitch_17
        0xfea4 -> :sswitch_18
        0xfea8 -> :sswitch_19
        0xfee4 -> :sswitch_1a
    .end sparse-switch

    .line 401
    :pswitch_data_3
    .packed-switch 0xfef2
        :pswitch_c
    .end packed-switch
.end method

.method static isVowel(C)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 56
    const/16 v0, 0x64b

    if-lt p0, v0, :cond_0

    const/16 v0, 0x655

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x670

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static ligature(CLcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;)I
    .locals 7
    .parameter "newchar"
    .parameter "oldchar"

    .prologue
    const v6, 0xfef9

    const v5, 0xfef7

    const/16 v4, 0x651

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, retval:I
    iget-char v2, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    if-nez v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    invoke-static {p0}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->isVowel(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    const/4 v0, 0x1

    .line 116
    iget-char v2, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->vowel:C

    if-eqz v2, :cond_2

    if-eq p0, v4, :cond_2

    .line 117
    const/4 v0, 0x2

    .line 119
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 177
    :pswitch_0
    iput-char p0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->vowel:C

    .line 180
    :goto_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 181
    iget v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    :cond_3
    move v1, v0

    .line 183
    goto :goto_0

    .line 121
    :pswitch_1
    iget-char v2, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->mark1:C

    if-nez v2, :cond_0

    .line 122
    iput-char v4, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->mark1:C

    goto :goto_1

    .line 129
    :pswitch_2
    iget-char v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    sparse-switch v1, :sswitch_data_0

    .line 139
    const/16 v1, 0x655

    iput-char v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->mark1:C

    goto :goto_1

    .line 131
    :sswitch_0
    const/16 v1, 0x625

    iput-char v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 132
    const/4 v0, 0x2

    .line 133
    goto :goto_1

    .line 135
    :sswitch_1
    iput-char v6, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 136
    const/4 v0, 0x2

    .line 137
    goto :goto_1

    .line 144
    :pswitch_3
    iget-char v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    sparse-switch v1, :sswitch_data_1

    .line 164
    const/16 v1, 0x654

    iput-char v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->mark1:C

    goto :goto_1

    .line 146
    :sswitch_2
    const/16 v1, 0x623

    iput-char v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 147
    const/4 v0, 0x2

    .line 148
    goto :goto_1

    .line 150
    :sswitch_3
    iput-char v5, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 151
    const/4 v0, 0x2

    .line 152
    goto :goto_1

    .line 154
    :sswitch_4
    const/16 v1, 0x624

    iput-char v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 155
    const/4 v0, 0x2

    .line 156
    goto :goto_1

    .line 160
    :sswitch_5
    const/16 v1, 0x626

    iput-char v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 161
    const/4 v0, 0x2

    .line 162
    goto :goto_1

    .line 169
    :pswitch_4
    iget-char v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 171
    :pswitch_5
    const/16 v1, 0x622

    iput-char v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 172
    const/4 v0, 0x2

    goto :goto_1

    .line 185
    :cond_4
    iget-char v2, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->vowel:C

    if-nez v2, :cond_0

    .line 189
    iget-char v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    sparse-switch v1, :sswitch_data_2

    :goto_2
    move v1, v0

    .line 220
    goto :goto_0

    .line 191
    :sswitch_6
    packed-switch p0, :pswitch_data_2

    :pswitch_6
    goto :goto_2

    .line 208
    :pswitch_7
    const v1, 0xfef5

    iput-char v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 209
    iput v3, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->numshapes:I

    .line 210
    const/4 v0, 0x3

    goto :goto_2

    .line 193
    :pswitch_8
    const v1, 0xfefb

    iput-char v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 194
    iput v3, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->numshapes:I

    .line 195
    const/4 v0, 0x3

    .line 196
    goto :goto_2

    .line 198
    :pswitch_9
    iput-char v5, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 199
    iput v3, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->numshapes:I

    .line 200
    const/4 v0, 0x3

    .line 201
    goto :goto_2

    .line 203
    :pswitch_a
    iput-char v6, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 204
    iput v3, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->numshapes:I

    .line 205
    const/4 v0, 0x3

    .line 206
    goto :goto_2

    .line 215
    :sswitch_7
    iput-char p0, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 216
    invoke-static {p0}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->shapecount(C)I

    move-result v1

    iput v1, p1, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->numshapes:I

    .line 217
    const/4 v0, 0x1

    goto :goto_2

    .line 119
    :pswitch_data_0
    .packed-switch 0x651
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x627 -> :sswitch_0
        0xfefb -> :sswitch_1
    .end sparse-switch

    .line 144
    :sswitch_data_1
    .sparse-switch
        0x627 -> :sswitch_2
        0x648 -> :sswitch_4
        0x649 -> :sswitch_5
        0x64a -> :sswitch_5
        0x6cc -> :sswitch_5
        0xfefb -> :sswitch_3
    .end sparse-switch

    .line 169
    :pswitch_data_1
    .packed-switch 0x627
        :pswitch_5
    .end packed-switch

    .line 189
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x644 -> :sswitch_6
    .end sparse-switch

    .line 191
    :pswitch_data_2
    .packed-switch 0x622
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method static processNumbers([CIII)V
    .locals 8
    .parameter "text"
    .parameter "offset"
    .parameter "length"
    .parameter "options"

    .prologue
    const/4 v7, 0x0

    .line 514
    add-int v5, p1, p2

    .line 515
    .local v5, limit:I
    and-int/lit16 v6, p3, 0xe0

    if-eqz v6, :cond_0

    .line 516
    const/16 v1, 0x30

    .line 517
    .local v1, digitBase:C
    and-int/lit16 v6, p3, 0x100

    sparse-switch v6, :sswitch_data_0

    .line 530
    :goto_0
    and-int/lit16 v6, p3, 0xe0

    sparse-switch v6, :sswitch_data_1

    .line 566
    .end local v1           #digitBase:C
    :cond_0
    :goto_1
    return-void

    .line 519
    .restart local v1       #digitBase:C
    :sswitch_0
    const/16 v1, 0x660

    .line 520
    goto :goto_0

    .line 523
    :sswitch_1
    const/16 v1, 0x6f0

    .line 524
    goto :goto_0

    .line 532
    :sswitch_2
    add-int/lit8 v2, v1, -0x30

    .line 533
    .local v2, digitDelta:I
    move v4, p1

    .local v4, i:I
    :goto_2
    if-ge v4, v5, :cond_0

    .line 534
    aget-char v0, p0, v4

    .line 535
    .local v0, ch:C
    const/16 v6, 0x39

    if-gt v0, v6, :cond_1

    const/16 v6, 0x30

    if-lt v0, v6, :cond_1

    .line 536
    aget-char v6, p0, v4

    add-int/2addr v6, v2

    int-to-char v6, v6

    aput-char v6, p0, v4

    .line 533
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 543
    .end local v0           #ch:C
    .end local v2           #digitDelta:I
    .end local v4           #i:I
    :sswitch_3
    add-int/lit8 v6, v1, 0x9

    int-to-char v3, v6

    .line 544
    .local v3, digitTop:C
    rsub-int/lit8 v2, v1, 0x30

    .line 545
    .restart local v2       #digitDelta:I
    move v4, p1

    .restart local v4       #i:I
    :goto_3
    if-ge v4, v5, :cond_0

    .line 546
    aget-char v0, p0, v4

    .line 547
    .restart local v0       #ch:C
    if-gt v0, v3, :cond_2

    if-lt v0, v1, :cond_2

    .line 548
    aget-char v6, p0, v4

    add-int/2addr v6, v2

    int-to-char v6, v6

    aput-char v6, p0, v4

    .line 545
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 555
    .end local v0           #ch:C
    .end local v2           #digitDelta:I
    .end local v3           #digitTop:C
    .end local v4           #i:I
    :sswitch_4
    invoke-static {p0, v7, p2, v1, v7}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->shapeToArabicDigitsWithContext([CIICZ)V

    goto :goto_1

    .line 559
    :sswitch_5
    const/4 v6, 0x1

    invoke-static {p0, v7, p2, v1, v6}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->shapeToArabicDigitsWithContext([CIICZ)V

    goto :goto_1

    .line 517
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_1
    .end sparse-switch

    .line 530
    :sswitch_data_1
    .sparse-switch
        0x20 -> :sswitch_2
        0x40 -> :sswitch_3
        0x60 -> :sswitch_4
        0x80 -> :sswitch_5
    .end sparse-switch
.end method

.method static shape([CLjava/lang/StringBuffer;I)V
    .locals 10
    .parameter "text"
    .parameter "string"
    .parameter "level"

    .prologue
    const/4 v9, 0x1

    .line 443
    const/4 v5, 0x0

    .line 444
    .local v5, p:I
    new-instance v4, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;-><init>()V

    .line 445
    .local v4, oldchar:Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;
    new-instance v0, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;-><init>()V

    .line 446
    .local v0, curchar:Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;
    :goto_0
    array-length v8, p0

    if-ge v5, v8, :cond_3

    .line 447
    add-int/lit8 v6, v5, 0x1

    .end local v5           #p:I
    .local v6, p:I
    aget-char v3, p0, v5

    .line 450
    .local v3, nextletter:C
    invoke-static {v3, v0}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->ligature(CLcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;)I

    move-result v1

    .line 451
    .local v1, join:I
    if-nez v1, :cond_2

    .line 452
    invoke-static {v3}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->shapecount(C)I

    move-result v2

    .line 454
    .local v2, nc:I
    if-ne v2, v9, :cond_1

    .line 455
    const/4 v7, 0x0

    .line 460
    .local v7, which:I
    :goto_1
    invoke-static {v4}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->connects_to_left(Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 461
    add-int/lit8 v7, v7, 0x1

    .line 464
    :cond_0
    iget v8, v0, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->numshapes:I

    rem-int/2addr v7, v8

    .line 465
    iget-char v8, v0, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    invoke-static {v8, v7}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->charshape(CI)C

    move-result v8

    iput-char v8, v0, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 468
    invoke-static {p1, v4, p2}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->copycstostring(Ljava/lang/StringBuffer;Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;I)V

    .line 469
    move-object v4, v0

    .line 472
    new-instance v0, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;

    .end local v0           #curchar:Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;-><init>()V

    .line 473
    .restart local v0       #curchar:Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;
    iput-char v3, v0, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 474
    iput v2, v0, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->numshapes:I

    .line 475
    iget v8, v0, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->lignum:I

    move v5, v6

    .line 477
    .end local v6           #p:I
    .restart local v5       #p:I
    goto :goto_0

    .line 458
    .end local v5           #p:I
    .end local v7           #which:I
    .restart local v6       #p:I
    :cond_1
    const/4 v7, 0x2

    .restart local v7       #which:I
    goto :goto_1

    .line 478
    .end local v2           #nc:I
    .end local v7           #which:I
    :cond_2
    if-ne v1, v9, :cond_5

    move v5, v6

    .end local v6           #p:I
    .restart local v5       #p:I
    goto :goto_0

    .line 488
    .end local v1           #join:I
    .end local v3           #nextletter:C
    :cond_3
    invoke-static {v4}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->connects_to_left(Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 489
    const/4 v7, 0x1

    .line 492
    .restart local v7       #which:I
    :goto_2
    iget v8, v0, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->numshapes:I

    rem-int/2addr v7, v8

    .line 493
    iget-char v8, v0, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    invoke-static {v8, v7}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->charshape(CI)C

    move-result v8

    iput-char v8, v0, Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;->basechar:C

    .line 496
    invoke-static {p1, v4, p2}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->copycstostring(Ljava/lang/StringBuffer;Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;I)V

    .line 497
    invoke-static {p1, v0, p2}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->copycstostring(Ljava/lang/StringBuffer;Lcom/itextpdf/text/pdf/ArabicLigaturizer$charstruct;I)V

    .line 498
    return-void

    .line 491
    .end local v7           #which:I
    :cond_4
    const/4 v7, 0x0

    .restart local v7       #which:I
    goto :goto_2

    .end local v5           #p:I
    .end local v7           #which:I
    .restart local v1       #join:I
    .restart local v3       #nextletter:C
    .restart local v6       #p:I
    :cond_5
    move v5, v6

    .end local v6           #p:I
    .restart local v5       #p:I
    goto :goto_0
.end method

.method static shapeToArabicDigitsWithContext([CIICZ)V
    .locals 4
    .parameter "dest"
    .parameter "start"
    .parameter "length"
    .parameter "digitBase"
    .parameter "lastStrongWasAL"

    .prologue
    .line 569
    add-int/lit8 v3, p3, -0x30

    int-to-char p3, v3

    .line 571
    add-int v2, p1, p2

    .line 572
    .local v2, limit:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 573
    aget-char v0, p0, v1

    .line 574
    .local v0, ch:C
    invoke-static {v0}, Lcom/itextpdf/text/pdf/BidiOrder;->getDirection(C)B

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 572
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 577
    :pswitch_1
    const/4 p4, 0x0

    .line 578
    goto :goto_1

    .line 580
    :pswitch_2
    const/4 p4, 0x1

    .line 581
    goto :goto_1

    .line 583
    :pswitch_3
    if-eqz p4, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 584
    add-int v3, v0, p3

    int-to-char v3, v3

    aput-char v3, p0, v1

    goto :goto_1

    .line 591
    .end local v0           #ch:C
    :cond_1
    return-void

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static shapecount(C)I
    .locals 5
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 86
    const/16 v3, 0x621

    if-lt p0, v3, :cond_2

    const/16 v3, 0x6d3

    if-gt p0, v3, :cond_2

    invoke-static {p0}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->isVowel(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, l:I
    sget-object v3, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->chartable:[[C

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 89
    .local v2, r:I
    :goto_0
    if-gt v0, v2, :cond_3

    .line 90
    add-int v3, v0, v2

    div-int/lit8 v1, v3, 0x2

    .line 91
    .local v1, m:I
    sget-object v3, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->chartable:[[C

    aget-object v3, v3, v1

    aget-char v3, v3, v4

    if-ne p0, v3, :cond_0

    .line 92
    sget-object v3, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->chartable:[[C

    aget-object v3, v3, v1

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 105
    .end local v0           #l:I
    .end local v1           #m:I
    .end local v2           #r:I
    :goto_1
    return v3

    .line 94
    .restart local v0       #l:I
    .restart local v1       #m:I
    .restart local v2       #r:I
    :cond_0
    sget-object v3, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->chartable:[[C

    aget-object v3, v3, v1

    aget-char v3, v3, v4

    if-ge p0, v3, :cond_1

    .line 95
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 98
    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 102
    .end local v0           #l:I
    .end local v1           #m:I
    .end local v2           #r:I
    :cond_2
    const/16 v3, 0x200d

    if-ne p0, v3, :cond_3

    .line 103
    const/4 v3, 0x4

    goto :goto_1

    .line 105
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method
