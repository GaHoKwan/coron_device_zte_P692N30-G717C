.class public Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncGetAllEventsReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "CalendarSlowSyncGetAllEventsReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private eventIdLimit:J


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
.method public getEventIdLimit()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncGetAllEventsReq;->eventIdLimit:J

    return-wide v0
.end method

.method public setEventIdLimit(J)V
    .locals 0
    .parameter "eventIdLimit"

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncGetAllEventsReq;->eventIdLimit:J

    .line 105
    return-void
.end method
