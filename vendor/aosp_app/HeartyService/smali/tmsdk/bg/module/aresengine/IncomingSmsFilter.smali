.class public abstract Ltmsdk/bg/module/aresengine/IncomingSmsFilter;
.super Ltmsdk/bg/module/aresengine/DataFilter;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/aresengine/IncomingSmsFilterConsts;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltmsdk/bg/module/aresengine/DataFilter",
        "<",
        "Ltmsdk/common/module/aresengine/SmsEntity;",
        ">;",
        "Ltmsdk/common/module/aresengine/IncomingSmsFilterConsts;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/DataFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract setIntelligentSmsHandler(Ltmsdk/bg/module/aresengine/IntelligentSmsHandler;)V
.end method

.method public abstract setSpecialSmsChecker(Ltmsdk/bg/module/aresengine/ISpecialSmsChecker;)V
.end method
