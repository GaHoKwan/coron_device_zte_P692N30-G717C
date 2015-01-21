.class public Lcom/mediatek/apst/util/command/sync/ContactsSyncStartRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "ContactsSyncStartRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private lastSyncDate:J

.field private syncNeedReinit:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 69
    const/high16 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 70
    return-void
.end method


# virtual methods
.method public getLastSyncDate()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sync/ContactsSyncStartRsp;->lastSyncDate:J

    return-wide v0
.end method

.method public isSyncNeedReinit()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sync/ContactsSyncStartRsp;->syncNeedReinit:Z

    return v0
.end method

.method public setLastSyncDate(J)V
    .locals 0
    .parameter "lastSyncDate"

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sync/ContactsSyncStartRsp;->lastSyncDate:J

    .line 109
    return-void
.end method

.method public setSyncNeedReinit(Z)V
    .locals 0
    .parameter "syncNeedReinit"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sync/ContactsSyncStartRsp;->syncNeedReinit:Z

    .line 101
    return-void
.end method
