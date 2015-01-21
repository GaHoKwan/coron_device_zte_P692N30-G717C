.class Lcom/android/org/bouncycastle/asn1/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# static fields
.field private static final MAX_MEMORY:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/org/bouncycastle/asn1/StreamUtil;->MAX_MEMORY:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateBodyLength(I)I
    .locals 5
    .parameter "length"

    .prologue
    .line 60
    const/4 v0, 0x1

    .line 62
    .local v0, count:I
    const/16 v4, 0x7f

    if-le p0, v4, :cond_1

    .line 64
    const/4 v2, 0x1

    .line 65
    .local v2, size:I
    move v3, p0

    .line 67
    .local v3, val:I
    :goto_0
    ushr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_0
    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v1, v4, 0x8

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_1

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 72
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 78
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #val:I
    :cond_1
    return v0
.end method

.method static calculateTagLength(I)I
    .locals 4
    .parameter "tagNo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x1

    .line 86
    .local v0, length:I
    const/16 v3, 0x1f

    if-lt p0, v3, :cond_0

    .line 88
    const/16 v3, 0x80

    if-ge p0, v3, :cond_1

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    const/4 v3, 0x5

    new-array v2, v3, [B

    .line 95
    .local v2, stack:[B
    array-length v1, v2

    .line 97
    .local v1, pos:I
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v3, p0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 101
    :cond_2
    shr-int/lit8 p0, p0, 0x7

    .line 102
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v3, p0, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 104
    const/16 v3, 0x7f

    if-gt p0, v3, :cond_2

    .line 106
    array-length v3, v2

    sub-int/2addr v3, v1

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method static findLimit(Ljava/io/InputStream;)I
    .locals 6
    .parameter "in"

    .prologue
    const-wide/32 v4, 0x7fffffff

    .line 20
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;

    if-eqz v2, :cond_0

    .line 22
    check-cast p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->getRemaining()I

    move-result v2

    .line 54
    :goto_0
    return v2

    .line 24
    .restart local p0
    :cond_0
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    if-eqz v2, :cond_1

    .line 26
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getLimit()I

    move-result v2

    goto :goto_0

    .line 28
    .restart local p0
    :cond_1
    instance-of v2, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v2, :cond_2

    .line 30
    check-cast p0, Ljava/io/ByteArrayInputStream;

    .end local p0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    goto :goto_0

    .line 32
    .restart local p0
    :cond_2
    instance-of v2, p0, Ljava/io/FileInputStream;

    if-eqz v2, :cond_3

    .line 36
    :try_start_0
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 38
    .local v0, size:J
    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 40
    long-to-int v2, v0

    goto :goto_0

    .line 43
    .end local v0           #size:J
    :catch_0
    move-exception v2

    .line 49
    :cond_3
    sget-wide v2, Lcom/android/org/bouncycastle/asn1/StreamUtil;->MAX_MEMORY:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 51
    const v2, 0x7fffffff

    goto :goto_0

    .line 54
    :cond_4
    sget-wide v2, Lcom/android/org/bouncycastle/asn1/StreamUtil;->MAX_MEMORY:J

    long-to-int v2, v2

    goto :goto_0
.end method
