.class Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;
.super Lcom/ibm/icu/text/CharsetRecog_2022;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_2022;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_2022KR"
.end annotation


# instance fields
.field private escapeSequences:[[B


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_2022;-><init>()V

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;->escapeSequences:[[B

    return-void

    :array_0
    .array-data 0x1
        0x1bt
        0x24t
        0x29t
        0x43t
    .end array-data
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "ISO-2022-KR"

    return-object v0
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 4
    .parameter "det"

    .prologue
    .line 134
    iget-object v1, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    iget v2, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    iget-object v3, p0, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;->escapeSequences:[[B

    invoke-virtual {p0, v1, v2, v3}, Lcom/ibm/icu/text/CharsetRecog_2022;->match([BI[[B)I

    move-result v0

    .line 135
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
