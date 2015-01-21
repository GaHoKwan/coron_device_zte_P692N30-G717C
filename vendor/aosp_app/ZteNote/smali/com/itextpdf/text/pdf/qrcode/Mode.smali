.class public final Lcom/itextpdf/text/pdf/qrcode/Mode;
.super Ljava/lang/Object;
.source "Mode.java"


# static fields
.field public static final ALPHANUMERIC:Lcom/itextpdf/text/pdf/qrcode/Mode;

.field public static final BYTE:Lcom/itextpdf/text/pdf/qrcode/Mode;

.field public static final ECI:Lcom/itextpdf/text/pdf/qrcode/Mode;

.field public static final FNC1_FIRST_POSITION:Lcom/itextpdf/text/pdf/qrcode/Mode;

.field public static final FNC1_SECOND_POSITION:Lcom/itextpdf/text/pdf/qrcode/Mode;

.field public static final KANJI:Lcom/itextpdf/text/pdf/qrcode/Mode;

.field public static final NUMERIC:Lcom/itextpdf/text/pdf/qrcode/Mode;

.field public static final STRUCTURED_APPEND:Lcom/itextpdf/text/pdf/qrcode/Mode;

.field public static final TERMINATOR:Lcom/itextpdf/text/pdf/qrcode/Mode;


# instance fields
.field private final bits:I

.field private final characterCountBitsForVersions:[I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 30
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const-string v3, "TERMINATOR"

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->TERMINATOR:Lcom/itextpdf/text/pdf/qrcode/Mode;

    .line 31
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    const-string v3, "NUMERIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->NUMERIC:Lcom/itextpdf/text/pdf/qrcode/Mode;

    .line 32
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    const-string v3, "ALPHANUMERIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->ALPHANUMERIC:Lcom/itextpdf/text/pdf/qrcode/Mode;

    .line 33
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    const-string v2, "STRUCTURED_APPEND"

    invoke-direct {v0, v1, v4, v2}, Lcom/itextpdf/text/pdf/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->STRUCTURED_APPEND:Lcom/itextpdf/text/pdf/qrcode/Mode;

    .line 34
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    const-string v3, "BYTE"

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->BYTE:Lcom/itextpdf/text/pdf/qrcode/Mode;

    .line 35
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/Mode;

    const/4 v1, 0x7

    const-string v2, "ECI"

    invoke-direct {v0, v5, v1, v2}, Lcom/itextpdf/text/pdf/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->ECI:Lcom/itextpdf/text/pdf/qrcode/Mode;

    .line 36
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    const/16 v2, 0x8

    const-string v3, "KANJI"

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->KANJI:Lcom/itextpdf/text/pdf/qrcode/Mode;

    .line 37
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/Mode;

    const/4 v1, 0x5

    const-string v2, "FNC1_FIRST_POSITION"

    invoke-direct {v0, v5, v1, v2}, Lcom/itextpdf/text/pdf/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->FNC1_FIRST_POSITION:Lcom/itextpdf/text/pdf/qrcode/Mode;

    .line 38
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/Mode;

    const/16 v1, 0x9

    const-string v2, "FNC1_SECOND_POSITION"

    invoke-direct {v0, v5, v1, v2}, Lcom/itextpdf/text/pdf/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->FNC1_SECOND_POSITION:Lcom/itextpdf/text/pdf/qrcode/Mode;

    return-void

    .line 30
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 31
    :array_1
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 32
    :array_2
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 33
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 34
    :array_4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 36
    :array_5
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>([IILjava/lang/String;)V
    .locals 0
    .parameter "characterCountBitsForVersions"
    .parameter "bits"
    .parameter "name"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/itextpdf/text/pdf/qrcode/Mode;->characterCountBitsForVersions:[I

    .line 46
    iput p2, p0, Lcom/itextpdf/text/pdf/qrcode/Mode;->bits:I

    .line 47
    iput-object p3, p0, Lcom/itextpdf/text/pdf/qrcode/Mode;->name:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static forBits(I)Lcom/itextpdf/text/pdf/qrcode/Mode;
    .locals 1
    .parameter "bits"

    .prologue
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 76
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :pswitch_1
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->TERMINATOR:Lcom/itextpdf/text/pdf/qrcode/Mode;

    .line 74
    :goto_0
    return-object v0

    .line 60
    :pswitch_2
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->NUMERIC:Lcom/itextpdf/text/pdf/qrcode/Mode;

    goto :goto_0

    .line 62
    :pswitch_3
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->ALPHANUMERIC:Lcom/itextpdf/text/pdf/qrcode/Mode;

    goto :goto_0

    .line 64
    :pswitch_4
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->STRUCTURED_APPEND:Lcom/itextpdf/text/pdf/qrcode/Mode;

    goto :goto_0

    .line 66
    :pswitch_5
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->BYTE:Lcom/itextpdf/text/pdf/qrcode/Mode;

    goto :goto_0

    .line 68
    :pswitch_6
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->FNC1_FIRST_POSITION:Lcom/itextpdf/text/pdf/qrcode/Mode;

    goto :goto_0

    .line 70
    :pswitch_7
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->ECI:Lcom/itextpdf/text/pdf/qrcode/Mode;

    goto :goto_0

    .line 72
    :pswitch_8
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->KANJI:Lcom/itextpdf/text/pdf/qrcode/Mode;

    goto :goto_0

    .line 74
    :pswitch_9
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/Mode;->FNC1_SECOND_POSITION:Lcom/itextpdf/text/pdf/qrcode/Mode;

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/Mode;->bits:I

    return v0
.end method

.method public getCharacterCountBits(Lcom/itextpdf/text/pdf/qrcode/Version;)I
    .locals 4
    .parameter "version"

    .prologue
    .line 86
    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/Mode;->characterCountBitsForVersions:[I

    if-nez v2, :cond_0

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Character count doesn\'t apply to this mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/Version;->getVersionNumber()I

    move-result v0

    .line 91
    .local v0, number:I
    const/16 v2, 0x9

    if-gt v0, v2, :cond_1

    .line 92
    const/4 v1, 0x0

    .line 98
    .local v1, offset:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/Mode;->characterCountBitsForVersions:[I

    aget v2, v2, v1

    return v2

    .line 93
    .end local v1           #offset:I
    :cond_1
    const/16 v2, 0x1a

    if-gt v0, v2, :cond_2

    .line 94
    const/4 v1, 0x1

    .restart local v1       #offset:I
    goto :goto_0

    .line 96
    .end local v1           #offset:I
    :cond_2
    const/4 v1, 0x2

    .restart local v1       #offset:I
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/Mode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/Mode;->name:Ljava/lang/String;

    return-object v0
.end method
