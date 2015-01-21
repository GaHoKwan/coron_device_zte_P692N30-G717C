.class final Ltmsdk/bg/module/aresengine/a$e;
.super Ltmsdk/bg/module/aresengine/SystemCallLogFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/module/aresengine/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/SystemCallLogFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a(Ltmsdk/common/module/aresengine/CallLogEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 1
    .parameter "data"
    .parameter "datas"

    .prologue
    .line 229
    sget-object v0, Ltmsdk/bg/module/aresengine/a;->ux:Ltmsdk/common/module/aresengine/FilterResult;

    return-object v0
.end method

.method protected bridge synthetic a(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    check-cast p1, Ltmsdk/common/module/aresengine/CallLogEntity;

    .end local p1
    invoke-virtual {p0, p1, p2}, Ltmsdk/bg/module/aresengine/a$e;->a(Ltmsdk/common/module/aresengine/CallLogEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method public defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Ltmsdk/bg/module/aresengine/a;->uw:Ltmsdk/common/module/aresengine/FilterConfig;

    return-object v0
.end method

.method public setShortCallChecker(Ltmsdk/bg/module/aresengine/IShortCallChecker;)V
    .locals 0
    .parameter "shortcallchecker"

    .prologue
    .line 225
    return-void
.end method
