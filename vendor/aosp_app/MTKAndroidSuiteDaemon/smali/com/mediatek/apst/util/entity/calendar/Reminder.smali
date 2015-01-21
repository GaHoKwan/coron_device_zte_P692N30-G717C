.class public Lcom/mediatek/apst/util/entity/calendar/Reminder;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "Reminder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private eventId:J

.field private method:J

.field private minutes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/calendar/Reminder;-><init>(J)V

    .line 77
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "id"

    .prologue
    const-wide/16 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>()V

    .line 70
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->eventId:J

    .line 71
    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->minutes:J

    .line 72
    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->method:J

    .line 73
    return-void
.end method


# virtual methods
.method public getEventId()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->eventId:J

    return-wide v0
.end method

.method public getMethod()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->method:J

    return-wide v0
.end method

.method public getMinutes()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->minutes:J

    return-wide v0
.end method

.method public readRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 109
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->eventId:J

    .line 111
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->minutes:J

    .line 113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->method:J

    .line 114
    return-void
.end method

.method public setEventId(J)V
    .locals 0
    .parameter "eventId"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->eventId:J

    .line 88
    return-void
.end method

.method public setMethod(J)V
    .locals 0
    .parameter "method"

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->method:J

    .line 100
    return-void
.end method

.method public setMinutes(J)V
    .locals 0
    .parameter "minutes"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->minutes:J

    .line 94
    return-void
.end method

.method public writeRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 123
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->eventId:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 125
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->minutes:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 127
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Reminder;->method:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 128
    return-void
.end method
