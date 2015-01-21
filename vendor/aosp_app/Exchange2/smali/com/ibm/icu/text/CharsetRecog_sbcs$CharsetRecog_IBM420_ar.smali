.class abstract Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;
.super Lcom/ibm/icu/text/CharsetRecog_sbcs;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_IBM420_ar"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static byteMap:[B

.field protected static unshapeMap:[B


# instance fields
.field protected prev_fInputBytes:[B

.field protected prev_fInputLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 1032
    const-class v0, Lcom/ibm/icu/text/CharsetRecog_sbcs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->$assertionsDisabled:Z

    .line 1039
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->byteMap:[B

    .line 1059
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->unshapeMap:[B

    return-void

    .line 1032
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1039
    :array_0
    .array-data 0x1
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x51t
        0x52t
        0x40t
        0x40t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x80t
        0x81t
        0x82t
        0x83t
        0x84t
        0x85t
        0x86t
        0x87t
        0x88t
        0x89t
        0x8at
        0x8bt
        0x8ct
        0x8dt
        0x8et
        0x8ft
        0x90t
        0x91t
        0x92t
        0x93t
        0x94t
        0x95t
        0x96t
        0x97t
        0x98t
        0x99t
        0x9at
        0x9bt
        0x9ct
        0x9dt
        0x9et
        0x9ft
        0xa0t
        0x40t
        0xa2t
        0xa3t
        0xa4t
        0xa5t
        0xa6t
        0xa7t
        0xa8t
        0xa9t
        0xaat
        0xabt
        0xact
        0xadt
        0xaet
        0xaft
        0xb0t
        0xb1t
        0xb2t
        0xb3t
        0xb4t
        0xb5t
        0x40t
        0x40t
        0xb8t
        0xb9t
        0xbat
        0xbbt
        0xbct
        0xbdt
        0xbet
        0xbft
        0x40t
        0x81t
        0x82t
        0x83t
        0x84t
        0x85t
        0x86t
        0x87t
        0x88t
        0x89t
        0x40t
        0xcbt
        0x40t
        0xcdt
        0x40t
        0xcft
        0x40t
        0x91t
        0x92t
        0x93t
        0x94t
        0x95t
        0x96t
        0x97t
        0x98t
        0x99t
        0xdat
        0xdbt
        0xdct
        0xddt
        0xdet
        0xdft
        0x40t
        0x40t
        0xa2t
        0xa3t
        0xa4t
        0xa5t
        0xa6t
        0xa7t
        0xa8t
        0xa9t
        0xeat
        0xebt
        0x40t
        0xedt
        0xeet
        0xeft
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0xfbt
        0xfct
        0xfdt
        0xfet
        0x40t
    .end array-data

    .line 1059
    :array_1
    .array-data 0x1
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x42t
        0x42t
        0x44t
        0x45t
        0x46t
        0x47t
        0x47t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x49t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x56t
        0x58t
        0x58t
        0x5at
        0x5bt
        0x5ct
        0x5dt
        0x5et
        0x5ft
        0x60t
        0x61t
        0x62t
        0x63t
        0x63t
        0x65t
        0x65t
        0x67t
        0x67t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x69t
        0x71t
        0x71t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x77t
        0x79t
        0x7at
        0x7bt
        0x7ct
        0x7dt
        0x7et
        0x7ft
        0x80t
        0x81t
        0x82t
        0x83t
        0x84t
        0x85t
        0x86t
        0x87t
        0x88t
        0x89t
        0x80t
        0x8bt
        0x8bt
        0x8dt
        0x8dt
        0x8ft
        0x90t
        0x91t
        0x92t
        0x93t
        0x94t
        0x95t
        0x96t
        0x97t
        0x98t
        0x99t
        0x9at
        0x9at
        0x9at
        0x9at
        0x9et
        0x9et
        0x9et
        0xa1t
        0xa2t
        0xa3t
        0xa4t
        0xa5t
        0xa6t
        0xa7t
        0xa8t
        0xa9t
        0x9et
        0xabt
        0xabt
        0xadt
        0xadt
        0xaft
        0xaft
        0xb1t
        0xb2t
        0xb3t
        0xb4t
        0xb5t
        0xb6t
        0xb7t
        0xb8t
        0xb9t
        0xb1t
        0xbbt
        0xbbt
        0xbdt
        0xbdt
        0xbft
        0xc0t
        0xc1t
        0xc2t
        0xc3t
        0xc4t
        0xc5t
        0xc6t
        0xc7t
        0xc8t
        0xc9t
        0xcat
        0xbft
        0xcct
        0xbft
        0xcet
        0xcft
        0xd0t
        0xd1t
        0xd2t
        0xd3t
        0xd4t
        0xd5t
        0xd6t
        0xd7t
        0xd8t
        0xd9t
        0xdat
        0xdat
        0xdct
        0xdct
        0xdct
        0xdft
        0xe0t
        0xe1t
        0xe2t
        0xe3t
        0xe4t
        0xe5t
        0xe6t
        0xe7t
        0xe8t
        0xe9t
        0xeat
        0xebt
        0xect
        0xedt
        0xeet
        0xeft
        0xf0t
        0xf1t
        0xf2t
        0xf3t
        0xf4t
        0xf5t
        0xf6t
        0xf7t
        0xf8t
        0xf9t
        0xfat
        0xfbt
        0xfct
        0xfdt
        0xfet
        0xfft
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 1032
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_sbcs;-><init>()V

    .line 1036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputBytes:[B

    .line 1037
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputLen:I

    return-void
.end method

.method private isLamAlef(B)Z
    .locals 3
    .parameter "b"

    .prologue
    .line 1125
    const/4 v2, 0x6

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 1126
    .local v1, shapedLamAlef:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1127
    aget-byte v2, v1, v0

    if-ne p1, v2, :cond_0

    .line 1128
    const/4 v2, 0x1

    .line 1129
    :goto_1
    return v2

    .line 1126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1129
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1125
    nop

    :array_0
    .array-data 0x1
        0xb2t
        0xb3t
        0xb4t
        0xb5t
        0xb7t
        0xb8t
    .end array-data
.end method

.method private unshape([BI)[B
    .locals 4
    .parameter "inputBytes"
    .parameter "inputLen"

    .prologue
    .line 1100
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->unshapeLamAlef([BI)[B

    move-result-object v1

    .line 1102
    .local v1, resultByteArr:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1103
    sget-object v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->unshapeMap:[B

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 1102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1105
    :cond_0
    return-object v1
.end method

.method private unshapeLamAlef([BI)[B
    .locals 5
    .parameter "inputBytes"
    .parameter "inputLen"

    .prologue
    .line 1109
    mul-int/lit8 v4, p2, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1110
    .local v1, resultBigBuffer:Ljava/nio/ByteBuffer;
    const/4 v4, 0x2

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 1112
    .local v3, unshapedLamAlef:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1113
    aget-byte v4, p1, v0

    invoke-direct {p0, v4}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->isLamAlef(B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1114
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1112
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1116
    :cond_0
    aget-byte v4, p1, v0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 1118
    :cond_1
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v4

    new-array v2, v4, [B

    .line 1119
    .local v2, resultBuffer:[B
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1120
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1121
    return-object v2

    .line 1110
    nop

    :array_0
    .array-data 0x1
        0xb1t
        0x56t
    .end array-data
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1081
    const-string v0, "ar"

    return-object v0
.end method

.method protected matchFinish(Lcom/ibm/icu/text/CharsetDetector;)V
    .locals 1
    .parameter "det"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputBytes:[B

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputBytes:[B

    iput-object v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    .line 1135
    iget v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputLen:I

    iput v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    .line 1136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputBytes:[B

    .line 1138
    :cond_0
    return-void
.end method

.method protected matchInit(Lcom/ibm/icu/text/CharsetDetector;)V
    .locals 2
    .parameter "det"

    .prologue
    .line 1085
    sget-boolean v0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputBytes:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1086
    :cond_0
    iget-object v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputBytes:[B

    .line 1087
    iget v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputLen:I

    .line 1088
    iget-object v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputBytes:[B

    iget v1, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputLen:I

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->unshape([BI)[B

    move-result-object v0

    iput-object v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    .line 1089
    iget-object v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    array-length v0, v0

    iput v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    .line 1090
    return-void
.end method
