.class public Ltmsdkobf/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final jt:[C

.field public static final ju:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ltmsdkobf/cy;->jt:[C

    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ltmsdkobf/cy;->ju:[B

    return-void

    .line 12
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public static c([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    .line 53
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 55
    :cond_0
    const/4 v3, 0x0

    .line 66
    :goto_0
    return-object v3

    .line 58
    :cond_1
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [C

    .line 59
    .local v1, buf:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 61
    aget-byte v0, p0, v2

    .line 62
    .local v0, b:B
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Ltmsdkobf/cy;->jt:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 63
    ushr-int/lit8 v3, v0, 0x4

    int-to-byte v0, v3

    .line 64
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x0

    sget-object v4, Ltmsdkobf/cy;->jt:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    .end local v0           #b:B
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method
