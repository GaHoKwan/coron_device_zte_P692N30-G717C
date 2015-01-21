.class final Ltmsdk/bg/module/aresengine/a$c;
.super Ltmsdk/bg/module/aresengine/IncomingSmsFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/module/aresengine/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/IncomingSmsFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    check-cast p1, Ltmsdk/common/module/aresengine/SmsEntity;

    .end local p1
    invoke-virtual {p0, p1, p2}, Ltmsdk/bg/module/aresengine/a$c;->b(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method protected varargs b(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 1
    .parameter "data"
    .parameter "datas"

    .prologue
    .line 192
    sget-object v0, Ltmsdk/bg/module/aresengine/a;->ux:Ltmsdk/common/module/aresengine/FilterResult;

    return-object v0
.end method

.method public defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Ltmsdk/bg/module/aresengine/a;->uw:Ltmsdk/common/module/aresengine/FilterConfig;

    return-object v0
.end method

.method public setIntelligentSmsHandler(Ltmsdk/bg/module/aresengine/IntelligentSmsHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 188
    return-void
.end method

.method public setSpecialSmsChecker(Ltmsdk/bg/module/aresengine/ISpecialSmsChecker;)V
    .locals 0
    .parameter "specialsmschecker"

    .prologue
    .line 203
    return-void
.end method
