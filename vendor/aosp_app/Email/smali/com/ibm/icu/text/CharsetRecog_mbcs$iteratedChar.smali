.class Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;
.super Ljava/lang/Object;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "iteratedChar"
.end annotation


# instance fields
.field charValue:I

.field done:Z

.field error:Z

.field index:I

.field nextIndex:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 142
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    .line 143
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    .line 144
    iput-boolean v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 145
    iput-boolean v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    return-void
.end method


# virtual methods
.method nextByte(Lcom/ibm/icu/text/CharsetDetector;)I
    .locals 4
    .parameter "det"

    .prologue
    .line 156
    iget v1, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iget v2, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    if-lt v1, v2, :cond_0

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    .line 158
    const/4 v0, -0x1

    .line 161
    :goto_0
    return v0

    .line 160
    :cond_0
    iget-object v1, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    iget v2, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 161
    .local v0, byteValue:I
    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iput v1, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    .line 150
    iput v1, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    .line 151
    iput-boolean v1, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 152
    iput-boolean v1, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    .line 153
    return-void
.end method
