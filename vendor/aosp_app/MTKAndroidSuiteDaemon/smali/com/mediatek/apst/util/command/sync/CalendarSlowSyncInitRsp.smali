.class public Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncInitRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "CalendarSlowSyncInitRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private currentMaxId:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 73
    const v0, 0x11000

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 74
    return-void
.end method


# virtual methods
.method public getCurrentMaxId()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncInitRsp;->currentMaxId:J

    return-wide v0
.end method

.method public setCurrentMaxId(J)V
    .locals 0
    .parameter "currentMaxId"

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncInitRsp;->currentMaxId:J

    .line 113
    return-void
.end method
