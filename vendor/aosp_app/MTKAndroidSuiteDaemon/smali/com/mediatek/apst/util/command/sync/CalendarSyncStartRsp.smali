.class public Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "CalendarSyncStartRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private isSyncAble:Z

.field private lastSyncDate:J

.field private localAccountId:J

.field private syncNeedReinit:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 75
    const v0, 0x11000

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 76
    return-void
.end method


# virtual methods
.method public getLastSyncDate()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;->lastSyncDate:J

    return-wide v0
.end method

.method public getLocalAccountId()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;->localAccountId:J

    return-wide v0
.end method

.method public isSyncAble()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;->isSyncAble:Z

    return v0
.end method

.method public isSyncNeedReinit()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;->syncNeedReinit:Z

    return v0
.end method

.method public setLastSyncDate(J)V
    .locals 0
    .parameter "lastSyncDate"

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;->lastSyncDate:J

    .line 123
    return-void
.end method

.method public setLocalAccountId(J)V
    .locals 0
    .parameter "localAccountId"

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;->localAccountId:J

    .line 131
    return-void
.end method

.method public setSyncAble(Z)V
    .locals 0
    .parameter "isSyncAble"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;->isSyncAble:Z

    .line 127
    return-void
.end method

.method public setSyncNeedReinit(Z)V
    .locals 0
    .parameter "syncNeedReinit"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;->syncNeedReinit:Z

    .line 115
    return-void
.end method
