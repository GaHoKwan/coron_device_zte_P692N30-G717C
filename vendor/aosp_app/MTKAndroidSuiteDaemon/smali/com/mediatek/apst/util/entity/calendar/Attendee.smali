.class public Lcom/mediatek/apst/util/entity/calendar/Attendee;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "Attendee.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private attendeeEmail:Ljava/lang/String;

.field private attendeeName:Ljava/lang/String;

.field private attendeeRelationShip:I

.field private attendeeStatus:I

.field private attendeeType:I

.field private eventId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/calendar/Attendee;-><init>(J)V

    .line 94
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>(J)V

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->eventId:J

    .line 88
    iput-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeName:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeEmail:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public getAttendeeEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getAttendeeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttendeeRelationShip()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeRelationShip:I

    return v0
.end method

.method public getAttendeeStatus()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeStatus:I

    return v0
.end method

.method public getAttendeeType()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeType:I

    return v0
.end method

.method public getEventId()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->eventId:J

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
    .line 148
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 151
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->eventId:J

    .line 153
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeName:Ljava/lang/String;

    .line 155
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeEmail:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeStatus:I

    .line 159
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeRelationShip:I

    .line 161
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeType:I

    .line 162
    return-void
.end method

.method public setAttendeeEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "attendeeEmail"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeEmail:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setAttendeeName(Ljava/lang/String;)V
    .locals 0
    .parameter "attendeeName"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setAttendeeRelationShip(I)V
    .locals 0
    .parameter "attendeeRelationShip"

    .prologue
    .line 133
    iput p1, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeRelationShip:I

    .line 134
    return-void
.end method

.method public setAttendeeStatus(I)V
    .locals 0
    .parameter "attendeeStatus"

    .prologue
    .line 125
    iput p1, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeStatus:I

    .line 126
    return-void
.end method

.method public setAttendeeType(I)V
    .locals 0
    .parameter "attendeeType"

    .prologue
    .line 141
    iput p1, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeType:I

    .line 142
    return-void
.end method

.method public setEventId(J)V
    .locals 0
    .parameter "eventId"

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->eventId:J

    .line 102
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
    .line 168
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 171
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->eventId:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 173
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeEmail:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 177
    iget v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeStatus:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 179
    iget v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeRelationShip:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 181
    iget v0, p0, Lcom/mediatek/apst/util/entity/calendar/Attendee;->attendeeType:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 182
    return-void
.end method
