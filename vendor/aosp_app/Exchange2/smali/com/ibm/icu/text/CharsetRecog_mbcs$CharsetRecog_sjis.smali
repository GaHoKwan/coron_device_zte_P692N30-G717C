.class Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;
.super Lcom/ibm/icu/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_sjis"
.end annotation


# static fields
.field static commonChars:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->commonChars:[I

    return-void

    :array_0
    .array-data 0x4
        0x40t 0x81t 0x0t 0x0t
        0x41t 0x81t 0x0t 0x0t
        0x42t 0x81t 0x0t 0x0t
        0x45t 0x81t 0x0t 0x0t
        0x5bt 0x81t 0x0t 0x0t
        0x69t 0x81t 0x0t 0x0t
        0x6at 0x81t 0x0t 0x0t
        0x75t 0x81t 0x0t 0x0t
        0x76t 0x81t 0x0t 0x0t
        0xa0t 0x82t 0x0t 0x0t
        0xa2t 0x82t 0x0t 0x0t
        0xa4t 0x82t 0x0t 0x0t
        0xa9t 0x82t 0x0t 0x0t
        0xaat 0x82t 0x0t 0x0t
        0xabt 0x82t 0x0t 0x0t
        0xadt 0x82t 0x0t 0x0t
        0xaft 0x82t 0x0t 0x0t
        0xb1t 0x82t 0x0t 0x0t
        0xb3t 0x82t 0x0t 0x0t
        0xb5t 0x82t 0x0t 0x0t
        0xb7t 0x82t 0x0t 0x0t
        0xbdt 0x82t 0x0t 0x0t
        0xbet 0x82t 0x0t 0x0t
        0xc1t 0x82t 0x0t 0x0t
        0xc4t 0x82t 0x0t 0x0t
        0xc5t 0x82t 0x0t 0x0t
        0xc6t 0x82t 0x0t 0x0t
        0xc8t 0x82t 0x0t 0x0t
        0xc9t 0x82t 0x0t 0x0t
        0xcct 0x82t 0x0t 0x0t
        0xcdt 0x82t 0x0t 0x0t
        0xdct 0x82t 0x0t 0x0t
        0xe0t 0x82t 0x0t 0x0t
        0xe7t 0x82t 0x0t 0x0t
        0xe8t 0x82t 0x0t 0x0t
        0xe9t 0x82t 0x0t 0x0t
        0xeat 0x82t 0x0t 0x0t
        0xf0t 0x82t 0x0t 0x0t
        0xf1t 0x82t 0x0t 0x0t
        0x41t 0x83t 0x0t 0x0t
        0x43t 0x83t 0x0t 0x0t
        0x4et 0x83t 0x0t 0x0t
        0x4ft 0x83t 0x0t 0x0t
        0x58t 0x83t 0x0t 0x0t
        0x5et 0x83t 0x0t 0x0t
        0x62t 0x83t 0x0t 0x0t
        0x67t 0x83t 0x0t 0x0t
        0x75t 0x83t 0x0t 0x0t
        0x76t 0x83t 0x0t 0x0t
        0x89t 0x83t 0x0t 0x0t
        0x8at 0x83t 0x0t 0x0t
        0x8bt 0x83t 0x0t 0x0t
        0x8dt 0x83t 0x0t 0x0t
        0x93t 0x83t 0x0t 0x0t
        0x96t 0x8et 0x0t 0x0t
        0xfat 0x93t 0x0t 0x0t
        0xaat 0x95t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string v0, "ja"

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, "Shift_JIS"

    return-object v0
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 2
    .parameter "det"

    .prologue
    .line 225
    sget-object v1, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->commonChars:[I

    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/text/CharsetRecog_mbcs;->match(Lcom/ibm/icu/text/CharsetDetector;[I)I

    move-result v0

    .line 226
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

.method nextChar(Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;Lcom/ibm/icu/text/CharsetDetector;)Z
    .locals 6
    .parameter "it"
    .parameter "det"

    .prologue
    const/16 v5, 0x7f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    iget v4, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iput v4, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    .line 201
    iput-boolean v2, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 203
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result v0

    iput v0, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 204
    .local v0, firstByte:I
    if-gez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v2

    .line 208
    :cond_1
    if-le v0, v5, :cond_2

    const/16 v4, 0xa0

    if-le v0, v4, :cond_3

    const/16 v4, 0xdf

    if-gt v0, v4, :cond_3

    :cond_2
    move v2, v3

    .line 209
    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result v1

    .line 213
    .local v1, secondByte:I
    if-ltz v1, :cond_0

    .line 216
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    iput v2, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 217
    const/16 v2, 0x40

    if-lt v1, v2, :cond_4

    if-le v1, v5, :cond_6

    :cond_4
    const/16 v2, 0x80

    if-lt v1, v2, :cond_5

    const/16 v2, 0xff

    if-le v1, v2, :cond_6

    .line 219
    :cond_5
    iput-boolean v3, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    :cond_6
    move v2, v3

    .line 221
    goto :goto_0
.end method
