.class public Lcom/mediatek/apst/util/command/sync/CalendarSyncOverRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "CalendarSyncOverRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private eventCount:I


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
.method public getEventsCount()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/mediatek/apst/util/command/sync/CalendarSyncOverRsp;->eventCount:I

    return v0
.end method

.method public setEventsCount(I)V
    .locals 0
    .parameter "eventsCount"

    .prologue
    .line 90
    iput p1, p0, Lcom/mediatek/apst/util/command/sync/CalendarSyncOverRsp;->eventCount:I

    .line 91
    return-void
.end method
