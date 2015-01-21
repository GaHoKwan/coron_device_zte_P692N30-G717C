.class public Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;
.super Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;
.source "CalendarFastSyncUpdateEventsReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private count:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 94
    const v0, 0x11000

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;-><init>(I)V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;->count:I

    .line 96
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .parameter "rawBlockSize"

    .prologue
    .line 89
    const v0, 0x11000

    invoke-direct {p0, p1, v0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;-><init>(II)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;->count:I

    .line 91
    return-void
.end method


# virtual methods
.method public appendCalendarEvent(Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;I)Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;
    .locals 3
    .parameter "event"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 107
    :try_start_0
    iget v1, p0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;->count:I

    if-nez v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 112
    iget v1, p0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;->count:I
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-object p0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 115
    throw v0
.end method

.method public bridge synthetic build()Lcom/mediatek/apst/util/command/RawBlockRequest;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;->build()Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 127
    :goto_0
    invoke-super {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->build()Lcom/mediatek/apst/util/command/RawBlockRequest;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq;

    return-object v0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq$Builder;->count:I

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method protected onCreateCommand(I)Lcom/mediatek/apst/util/command/RawBlockRequest;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 100
    new-instance v0, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq;-><init>()V

    return-object v0
.end method
