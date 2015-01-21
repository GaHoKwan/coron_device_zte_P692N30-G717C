.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA$PKCS1;
.super Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS1"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLCipherRSA;-><init>(I)V

    .line 348
    return-void
.end method
