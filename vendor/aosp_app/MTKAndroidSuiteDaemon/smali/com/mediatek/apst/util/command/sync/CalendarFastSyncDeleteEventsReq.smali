.class public Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "CalendarFastSyncDeleteEventsReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deleteIds:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const v0, 0x11000

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public getDeleteIds()[J
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsReq;->deleteIds:[J

    return-object v0
.end method

.method public setDeleteIds([J)V
    .locals 0
    .parameter "deleteIds"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsReq;->deleteIds:[J

    .line 83
    return-void
.end method