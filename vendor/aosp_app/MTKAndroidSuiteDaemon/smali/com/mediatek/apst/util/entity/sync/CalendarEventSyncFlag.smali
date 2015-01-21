.class public Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "CalendarEventSyncFlag.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private calendarId:J

.field private modifyTime:J

.field private timeFrom:J

.field private timeZone:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalendarId()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->calendarId:J

    return-wide v0
.end method

.method public getModifyTime()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->modifyTime:J

    return-wide v0
.end method

.method public getTimeFrom()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->timeFrom:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->title:Ljava/lang/String;

    return-object v0
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
    .line 130
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 132
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->modifyTime:J

    .line 134
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->calendarId:J

    .line 136
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->title:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->timeZone:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->timeFrom:J

    .line 142
    return-void
.end method

.method public setCalendarId(J)V
    .locals 0
    .parameter "calendarId"

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->calendarId:J

    .line 124
    return-void
.end method

.method public setModifyTime(J)V
    .locals 0
    .parameter "modifyTime"

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->modifyTime:J

    .line 116
    return-void
.end method

.method public setTimeFrom(J)V
    .locals 0
    .parameter "timeFrom"

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->timeFrom:J

    .line 92
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "timeZone"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->timeZone:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->title:Ljava/lang/String;

    .line 108
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
    .line 148
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 150
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->modifyTime:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 152
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->calendarId:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 154
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->timeZone:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 158
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/sync/CalendarEventSyncFlag;->timeFrom:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 159
    return-void
.end method
