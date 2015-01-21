.class public Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "CalendarFastSyncDeleteEventsRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deleteCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 68
    const v0, 0x11000

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 69
    return-void
.end method


# virtual methods
.method public getDeleteCount()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsRsp;->deleteCount:I

    return v0
.end method

.method public setDeleteCount(I)V
    .locals 0
    .parameter "deleteCount"

    .prologue
    .line 82
    iput p1, p0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsRsp;->deleteCount:I

    .line 83
    return-void
.end method
