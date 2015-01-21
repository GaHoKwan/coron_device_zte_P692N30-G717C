.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRandom;
.super Ljava/security/SecureRandomSpi;
.source "OpenSSLRandom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x760c2179bb8f6dacL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 1
    .parameter "numBytes"

    .prologue
    .line 37
    new-array v0, p1, [B

    .line 38
    .local v0, output:[B
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_bytes([B)V

    .line 39
    return-object v0
.end method

.method protected engineNextBytes([B)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 32
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_bytes([B)V

    .line 33
    return-void
.end method

.method protected engineSetSeed([B)V
    .locals 0
    .parameter "seed"

    .prologue
    .line 27
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_seed([B)V

    .line 28
    return-void
.end method
