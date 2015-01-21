.class public final Ltmsdk/bg/module/permission/NativeInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x7

    const-class v1, Ltmsdk/bg/module/permission/NativeInterface;

    invoke-static {v0, v1}, Ltmsdk/common/TMSDKContext;->registerNatives(ILjava/lang/Class;)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native dlopenAddr()I
.end method

.method public static native dlsymAddr()I
.end method

.method public static native mmapAddr()I
.end method
