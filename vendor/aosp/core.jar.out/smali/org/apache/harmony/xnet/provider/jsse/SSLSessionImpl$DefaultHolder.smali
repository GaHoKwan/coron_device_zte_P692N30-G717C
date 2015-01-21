.class Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$DefaultHolder;
.super Ljava/lang/Object;
.source "SSLSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultHolder"
.end annotation


# static fields
.field public static final NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$DefaultHolder;->NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
