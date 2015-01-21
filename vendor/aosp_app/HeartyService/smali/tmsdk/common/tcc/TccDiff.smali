.class public Ltmsdk/common/tcc/TccDiff;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const/16 v0, 0x9

    const-class v1, Ltmsdk/common/tcc/TccDiff;

    invoke-static {v0, v1}, Ltmsdk/common/TMSDKContext;->registerNatives(ILjava/lang/Class;)V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native bsPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native fileMd5(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getByteMd5([B)Ljava/lang/String;
.end method
