.class public Ltmsdk/common/tcc/TccCryptor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x0

    const-class v1, Ltmsdk/common/tcc/TccCryptor;

    invoke-static {v0, v1}, Ltmsdk/common/TMSDKContext;->registerNatives(ILjava/lang/Class;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EndianSwap(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 25
    shl-int/lit8 v0, p0, 0x18

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/high16 v1, 0xff

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static decrypt(Landroid/content/Context;[B[B)[B
    .locals 1
    .parameter "context"
    .parameter "data"
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    invoke-static {p1, p2}, Ltmsdk/common/tcc/TccCryptor;->decrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static native decrypt([B[B)[B
.end method

.method public static decryptBoolean(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "x"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Ltmsdk/common/tcc/TccCryptor;->decryptBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public static decryptBoolean(Z)Z
    .locals 1
    .parameter "x"

    .prologue
    .line 79
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decryptInt(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 73
    xor-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static decryptInt(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "x"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    invoke-static {p1}, Ltmsdk/common/tcc/TccCryptor;->decryptInt(I)I

    move-result v0

    return v0
.end method

.method public static decryptLong(J)J
    .locals 2
    .parameter "x"

    .prologue
    .line 67
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static decryptLong(Landroid/content/Context;J)J
    .locals 2
    .parameter "context"
    .parameter "x"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    invoke-static {p1, p2}, Ltmsdk/common/tcc/TccCryptor;->decryptLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static encrypt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "data"
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    invoke-static {p1, p2}, Ltmsdk/common/tcc/TccCryptor;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "key"

    .prologue
    .line 98
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Ltmsdk/common/tcc/TccCryptor;->encrypt([B[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static encrypt(Landroid/content/Context;[B[B)[B
    .locals 1
    .parameter "context"
    .parameter "data"
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 129
    invoke-static {p1, p2}, Ltmsdk/common/tcc/TccCryptor;->encrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static native encrypt([B[B)[B
.end method

.method public static encryptBoolean(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "x"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    invoke-static {p1}, Ltmsdk/common/tcc/TccCryptor;->encryptBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public static encryptBoolean(Z)Z
    .locals 1
    .parameter "x"

    .prologue
    .line 82
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encryptInt(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 76
    xor-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static encryptInt(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "x"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 200
    invoke-static {p1}, Ltmsdk/common/tcc/TccCryptor;->encryptInt(I)I

    move-result v0

    return v0
.end method

.method public static encryptLong(J)J
    .locals 2
    .parameter "x"

    .prologue
    .line 70
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static encryptLong(Landroid/content/Context;J)J
    .locals 2
    .parameter "context"
    .parameter "x"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    invoke-static {p1, p2}, Ltmsdk/common/tcc/TccCryptor;->encryptLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static makePassword(Landroid/content/Context;[B)[B
    .locals 1
    .parameter "context"
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    invoke-static {p1}, Ltmsdk/common/tcc/TccCryptor;->makePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static native makePassword([B)[B
.end method
