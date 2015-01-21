.class final Ltmsdk/bg/module/aresengine/b;
.super Ltmsdk/bg/module/aresengine/IntelliSmsChecker;
.source "SourceFile"


# instance fields
.field uB:Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;


# direct methods
.method constructor <init>()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/IntelliSmsChecker;-><init>()V

    .line 280
    new-instance v7, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;

    const/4 v8, 0x4

    new-instance v0, Ltmsdk/common/tcc/MMatchSysResult;

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Ltmsdk/common/tcc/MMatchSysResult;-><init>(IIIII[Ltmsdk/common/tcc/MRuleTypeID;)V

    invoke-direct {v7, v8, v0}, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;-><init>(ILtmsdk/common/tcc/MMatchSysResult;)V

    iput-object v7, p0, Ltmsdk/bg/module/aresengine/b;->uB:Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;

    .line 283
    return-void
.end method


# virtual methods
.method public check(Ltmsdk/common/module/aresengine/SmsEntity;)Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;
    .locals 1
    .parameter "sms"

    .prologue
    .line 287
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/b;->uB:Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;

    return-object v0
.end method

.method public isChargingSms(Ltmsdk/common/module/aresengine/SmsEntity;)Z
    .locals 1
    .parameter "sms"

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method
