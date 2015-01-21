.class Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;
.super Lcom/ibm/icu/text/CharsetRecog_2022;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_2022;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_2022JP"
.end annotation


# instance fields
.field private escapeSequences:[[B


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 98
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_2022;-><init>()V

    .line 99
    const/16 v0, 0xc

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v4, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;->escapeSequences:[[B

    return-void

    :array_0
    .array-data 0x1
        0x1bt
        0x24t
        0x28t
        0x43t
    .end array-data

    :array_1
    .array-data 0x1
        0x1bt
        0x24t
        0x28t
        0x44t
    .end array-data

    :array_2
    .array-data 0x1
        0x1bt
        0x24t
        0x40t
    .end array-data

    :array_3
    .array-data 0x1
        0x1bt
        0x24t
        0x41t
    .end array-data

    :array_4
    .array-data 0x1
        0x1bt
        0x24t
        0x42t
    .end array-data

    :array_5
    .array-data 0x1
        0x1bt
        0x26t
        0x40t
    .end array-data

    :array_6
    .array-data 0x1
        0x1bt
        0x28t
        0x42t
    .end array-data

    :array_7
    .array-data 0x1
        0x1bt
        0x28t
        0x48t
    .end array-data

    :array_8
    .array-data 0x1
        0x1bt
        0x28t
        0x49t
    .end array-data

    :array_9
    .array-data 0x1
        0x1bt
        0x28t
        0x4at
    .end array-data

    :array_a
    .array-data 0x1
        0x1bt
        0x2et
        0x41t
    .end array-data

    :array_b
    .array-data 0x1
        0x1bt
        0x2et
        0x46t
    .end array-data
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "ISO-2022-JP"

    return-object v0
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 4
    .parameter "det"

    .prologue
    .line 119
    iget-object v1, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    iget v2, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    iget-object v3, p0, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;->escapeSequences:[[B

    invoke-virtual {p0, v1, v2, v3}, Lcom/ibm/icu/text/CharsetRecog_2022;->match([BI[[B)I

    move-result v0

    .line 120
    .local v0, confidence:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/ibm/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Lcom/ibm/icu/text/CharsetMatch;-><init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;I)V

    goto :goto_0
.end method
