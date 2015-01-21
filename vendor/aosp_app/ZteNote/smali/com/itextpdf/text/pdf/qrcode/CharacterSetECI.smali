.class public final Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;
.super Ljava/lang/Object;
.source "CharacterSetECI.java"


# static fields
.field private static NAME_TO_ECI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final encodingName:Ljava/lang/String;

.field private final value:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "encodingName"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->encodingName:Ljava/lang/String;

    .line 62
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->value:I

    .line 63
    return-void
.end method

.method private static addCharacterSet(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .parameter "value"
    .parameter "encodingName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, n:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;>;"
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;-><init>(ILjava/lang/String;)V

    .line 75
    .local v0, eci:Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method private static addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .parameter "value"
    .parameter "encodingNames"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, n:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;>;"
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v0, p0, v2}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;-><init>(ILjava/lang/String;)V

    .line 80
    .local v0, eci:Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 81
    aget-object v2, p1, v1

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;
    .locals 1
    .parameter "name"

    .prologue
    .line 91
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->NAME_TO_ECI:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->initialize()V

    .line 94
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->NAME_TO_ECI:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;

    return-object v0
.end method

.method private static initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 35
    .local v0, n:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;>;"
    const-string v1, "Cp437"

    invoke-static {v4, v1, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(ILjava/lang/String;Ljava/util/HashMap;)V

    .line 36
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ISO8859_1"

    aput-object v2, v1, v4

    const-string v2, "ISO-8859-1"

    aput-object v2, v1, v5

    invoke-static {v5, v1, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 37
    const-string v1, "Cp437"

    invoke-static {v6, v1, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(ILjava/lang/String;Ljava/util/HashMap;)V

    .line 38
    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_1"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-1"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 39
    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_2"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-2"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 40
    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_3"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-3"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 41
    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_4"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-4"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 42
    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_5"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-5"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 43
    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_6"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-6"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 44
    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_7"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-7"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 45
    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_8"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-8"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 46
    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_9"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-9"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 47
    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_10"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-10"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 48
    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_11"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-11"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 49
    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_13"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-13"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 50
    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_14"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-14"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 51
    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_15"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-15"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 52
    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ISO8859_16"

    aput-object v3, v2, v4

    const-string v3, "ISO-8859-16"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 53
    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SJIS"

    aput-object v3, v2, v4

    const-string v3, "Shift_JIS"

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 54
    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->NAME_TO_ECI:Ljava/util/HashMap;

    .line 55
    return-void
.end method


# virtual methods
.method public getEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->encodingName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/CharacterSetECI;->value:I

    return v0
.end method
