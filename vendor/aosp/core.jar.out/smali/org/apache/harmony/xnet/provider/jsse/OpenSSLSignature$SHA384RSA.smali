.class public final Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;
.super Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA384RSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 289
    const-string v0, "RSA-SHA384"

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->RSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;-><init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$1;)V

    .line 290
    return-void
.end method