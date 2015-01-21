.class public abstract Ltmsdk/bg/module/aresengine/IncomingCallFilter;
.super Ltmsdk/bg/module/aresengine/DataFilter;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/aresengine/IncomingCallFilterConsts;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltmsdk/bg/module/aresengine/DataFilter",
        "<",
        "Ltmsdk/common/module/aresengine/CallLogEntity;",
        ">;",
        "Ltmsdk/common/module/aresengine/IncomingCallFilterConsts;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/DataFilter;-><init>()V

    return-void
.end method
