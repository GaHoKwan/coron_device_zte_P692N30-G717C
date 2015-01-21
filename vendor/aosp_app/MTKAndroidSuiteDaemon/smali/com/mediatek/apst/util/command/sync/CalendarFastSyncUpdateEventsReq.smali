.class public Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq;
.super Lcom/mediatek/apst/util/command/RawBlockRequest;
.source "CalendarFastSyncUpdateEventsReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x11000

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RawBlockRequest;-><init>(I)V

    .line 60
    return-void
.end method

.method public static bridge synthetic builder(I)Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-static {p0}, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq;->builder(I)Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(I)Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;
    .locals 1
    .parameter "rawBlockSize"

    .prologue
    .line 74
    new-instance v0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;-><init>(I)V

    return-object v0
.end method
