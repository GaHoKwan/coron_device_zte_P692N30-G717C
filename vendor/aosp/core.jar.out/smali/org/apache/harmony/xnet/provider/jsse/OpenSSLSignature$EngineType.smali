.class final enum Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;
.super Ljava/lang/Enum;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EngineType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

.field public static final enum DSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

.field public static final enum RSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    const-string v1, "RSA"

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->RSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    const-string v1, "DSA"

    invoke-direct {v0, v1, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->DSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->RSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->DSA:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->$VALUES:[Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    return-object v0
.end method

.method public static values()[Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->$VALUES:[Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    invoke-virtual {v0}, [Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$EngineType;

    return-object v0
.end method
