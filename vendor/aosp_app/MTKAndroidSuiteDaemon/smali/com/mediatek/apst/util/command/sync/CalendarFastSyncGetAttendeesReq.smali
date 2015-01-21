.class public Lcom/mediatek/apst/util/command/sync/CalendarFastSyncGetAttendeesReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "CalendarFastSyncGetAttendeesReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private requestedEventIds:[J


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
.method public getRequestedEventIds()[J
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncGetAttendeesReq;->requestedEventIds:[J

    return-object v0
.end method

.method public setRequestedEventIds([J)V
    .locals 0
    .parameter "requestedEventIds"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncGetAttendeesReq;->requestedEventIds:[J

    .line 91
    return-void
.end method
