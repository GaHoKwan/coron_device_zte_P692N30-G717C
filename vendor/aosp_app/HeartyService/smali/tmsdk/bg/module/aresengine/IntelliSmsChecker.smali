.class public abstract Ltmsdk/bg/module/aresengine/IntelliSmsChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract check(Ltmsdk/common/module/aresengine/SmsEntity;)Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;
.end method

.method public abstract isChargingSms(Ltmsdk/common/module/aresengine/SmsEntity;)Z
.end method
