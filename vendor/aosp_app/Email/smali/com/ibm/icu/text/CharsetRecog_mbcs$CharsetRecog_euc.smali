.class abstract Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc;
.super Lcom/ibm/icu/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_euc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;,
        Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_mbcs;-><init>()V

    .line 416
    return-void
.end method


# virtual methods
.method nextChar(Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;Lcom/ibm/icu/text/CharsetDetector;)Z
    .locals 7
    .parameter "it"
    .parameter "det"

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0xa1

    const/4 v3, 0x1

    .line 322
    iget v5, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iput v5, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    .line 323
    iput-boolean v4, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, firstByte:I
    const/4 v1, 0x0

    .line 326
    .local v1, secondByte:I
    const/4 v2, 0x0

    .line 330
    .local v2, thirdByte:I
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result v0

    .end local v0           #firstByte:I
    iput v0, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 331
    .restart local v0       #firstByte:I
    if-gez v0, :cond_1

    .line 333
    iput-boolean v3, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    .line 375
    :cond_0
    :goto_0
    iget-boolean v5, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    if-nez v5, :cond_4

    :goto_1
    return v3

    .line 336
    :cond_1
    const/16 v5, 0x8d

    if-le v0, v5, :cond_0

    .line 341
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result v1

    .line 342
    iget v5, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v1

    iput v5, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 344
    if-lt v0, v6, :cond_2

    const/16 v5, 0xfe

    if-gt v0, v5, :cond_2

    .line 346
    if-ge v1, v6, :cond_0

    .line 347
    iput-boolean v3, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_0

    .line 351
    :cond_2
    const/16 v5, 0x8e

    if-ne v0, v5, :cond_3

    .line 358
    if-ge v1, v6, :cond_0

    .line 359
    iput-boolean v3, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_0

    .line 364
    :cond_3
    const/16 v5, 0x8f

    if-ne v0, v5, :cond_0

    .line 367
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result v2

    .line 368
    iget v5, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v2

    iput v5, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 369
    if-ge v2, v6, :cond_0

    .line 370
    iput-boolean v3, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_0

    :cond_4
    move v3, v4

    .line 375
    goto :goto_1
.end method
