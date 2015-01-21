.class public Lcom/zte/heartyservice/common/utils/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field private static charray:[C

.field private static md5:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/heartyservice/common/utils/MD5Util;->charray:[C

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/common/utils/MD5Util;->md5:Ljava/security/MessageDigest;

    .line 11
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/common/utils/MD5Util;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_0
    return-void

    .line 12
    :catch_0
    move-exception v0

    goto :goto_0

    .line 6
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
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "hex"

    .prologue
    .line 23
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 24
    .local v1, localBuf:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 25
    sget-object v2, Lcom/zte/heartyservice/common/utils/MD5Util;->charray:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/zte/heartyservice/common/utils/MD5Util;->charray:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMD5([B)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 18
    sget-object v0, Lcom/zte/heartyservice/common/utils/MD5Util;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 19
    sget-object v0, Lcom/zte/heartyservice/common/utils/MD5Util;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/MD5Util;->getHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
