.class public Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "CalendarEvent.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final GMT_BEIJING_8:Ljava/lang/String; = "Asia/Shanghai"

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private accessLevel:I

.field private attendees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/calendar/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private availability:I

.field private calendarId:J

.field private calendarOwner:Ljava/lang/String;

.field private createTime:J

.field private description:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private eventLocation:Ljava/lang/String;

.field private isAllDay:Z

.field private modifyTime:J

.field private privacy:I

.field private reminders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/calendar/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private repetition:Ljava/lang/String;

.field private timeFrom:J

.field private timeTo:J

.field private timeZone:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private transparency:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 143
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;-><init>(J)V

    .line 144
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>(J)V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->attendees:Ljava/util/List;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->reminders:Ljava/util/List;

    .line 137
    const-string v0, "Asia/Shanghai"

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->timeZone:Ljava/lang/String;

    .line 138
    iput v1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->transparency:I

    .line 139
    iput v1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->privacy:I

    .line 140
    return-void
.end method


# virtual methods
.method public addAttendee(Lcom/mediatek/apst/util/entity/calendar/Attendee;)V
    .locals 1
    .parameter "attendee"

    .prologue
    .line 304
    if-nez p1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->attendees:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->attendees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addReminder(Lcom/mediatek/apst/util/entity/calendar/Reminder;)V
    .locals 1
    .parameter "reminder"

    .prologue
    .line 313
    if-nez p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->reminders:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->reminders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAccessLevel()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->accessLevel:I

    return v0
.end method

.method public getAttendees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/calendar/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->attendees:Ljava/util/List;

    return-object v0
.end method

.method public getAvailability()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->availability:I

    return v0
.end method

.method public getCalendarId()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->calendarId:J

    return-wide v0
.end method

.method public getCalendarOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->calendarOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->createTime:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getEventLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->eventLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyTime()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->modifyTime:J

    return-wide v0
.end method

.method public getPrivacy()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->privacy:I

    return v0
.end method

.method public getReminders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/calendar/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->reminders:Ljava/util/List;

    return-object v0
.end method

.method public getRepetition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->repetition:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeFrom()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->timeFrom:J

    return-wide v0
.end method

.method public getTimeTo()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->timeTo:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTransparency()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->transparency:I

    return v0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->isAllDay:Z

    return v0
.end method

.method public readRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 6
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 328
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->calendarId:J

    .line 330
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->title:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->timeFrom:J

    .line 334
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->timeTo:J

    .line 336
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->isAllDay:Z

    .line 338
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->eventLocation:Ljava/lang/String;

    .line 340
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->description:Ljava/lang/String;

    .line 342
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->calendarOwner:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 345
    .local v3, size:I
    if-lez v3, :cond_0

    .line 346
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->attendees:Ljava/util/List;

    .line 347
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 354
    .end local v1           #i:I
    :cond_0
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->repetition:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 357
    if-lez v3, :cond_1

    .line 358
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->reminders:Ljava/util/List;

    .line 359
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-lt v1, v3, :cond_3

    .line 366
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->modifyTime:J

    .line 368
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->createTime:J

    .line 370
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->duration:Ljava/lang/String;

    .line 372
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->timeZone:Ljava/lang/String;

    .line 374
    const/16 v4, 0x47e

    if-ge p2, v4, :cond_4

    .line 376
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->transparency:I

    .line 378
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->privacy:I

    .line 385
    :goto_2
    return-void

    .line 348
    .restart local v1       #i:I
    :cond_2
    new-instance v0, Lcom/mediatek/apst/util/entity/calendar/Attendee;

    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/calendar/Attendee;-><init>()V

    .line 349
    .local v0, attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 350
    iget-object v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->attendees:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v0           #attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    :cond_3
    new-instance v2, Lcom/mediatek/apst/util/entity/calendar/Reminder;

    invoke-direct {v2}, Lcom/mediatek/apst/util/entity/calendar/Reminder;-><init>()V

    .line 361
    .local v2, reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    invoke-virtual {v2, p1, p2}, Lcom/mediatek/apst/util/entity/calendar/Reminder;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 362
    iget-object v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->reminders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 381
    .end local v1           #i:I
    .end local v2           #reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->availability:I

    .line 383
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->accessLevel:I

    goto :goto_2
.end method

.method public setAccessLevel(I)V
    .locals 0
    .parameter "accessLevel"

    .prologue
    .line 296
    iput p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->accessLevel:I

    .line 297
    return-void
.end method

.method public setAllDay(Z)V
    .locals 0
    .parameter "isAllDay"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->isAllDay:Z

    .line 176
    return-void
.end method

.method public setAttendees(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/calendar/Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, attendees:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Attendee;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->attendees:Ljava/util/List;

    .line 200
    return-void
.end method

.method public setAvailability(I)V
    .locals 0
    .parameter "availability"

    .prologue
    .line 288
    iput p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->availability:I

    .line 289
    return-void
.end method

.method public setCalendarId(J)V
    .locals 0
    .parameter "calendarId"

    .prologue
    .line 239
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->calendarId:J

    .line 240
    return-void
.end method

.method public setCalendarOwner(Ljava/lang/String;)V
    .locals 0
    .parameter "calendarOwner"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->calendarOwner:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 231
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->createTime:J

    .line 232
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->description:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->duration:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setEventLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "eventLocation"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->eventLocation:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setModifyTime(J)V
    .locals 0
    .parameter "modifyTime"

    .prologue
    .line 223
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->modifyTime:J

    .line 224
    return-void
.end method

.method public setPrivacy(I)V
    .locals 0
    .parameter "privacy"

    .prologue
    .line 279
    iput p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->privacy:I

    .line 280
    return-void
.end method

.method public setReminders(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/calendar/Reminder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, reminders:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Reminder;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->reminders:Ljava/util/List;

    .line 216
    return-void
.end method

.method public setRepetition(Ljava/lang/String;)V
    .locals 0
    .parameter "repetition"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->repetition:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setTimeFrom(J)V
    .locals 0
    .parameter "timeFrom"

    .prologue
    .line 183
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->timeFrom:J

    .line 184
    return-void
.end method

.method public setTimeTo(J)V
    .locals 0
    .parameter "timeTo"

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->timeTo:J

    .line 168
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "timeZone"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->timeZone:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->title:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setTransparency(I)V
    .locals 0
    .parameter "transparency"

    .prologue
    .line 271
    iput p1, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->transparency:I

    .line 272
    return-void
.end method

.method public writeRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 5
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 391
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 394
    iget-wide v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->calendarId:J

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 396
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->title:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 398
    iget-wide v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->timeFrom:J

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 400
    iget-wide v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->timeTo:J

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 402
    iget-boolean v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->isAllDay:Z

    invoke-static {p1, v2}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 404
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->eventLocation:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->description:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->calendarOwner:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->attendees:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->attendees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 412
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->attendees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 419
    :goto_1
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->repetition:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 421
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->reminders:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 422
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->reminders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 423
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->reminders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 430
    :goto_3
    iget-wide v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->modifyTime:J

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 432
    iget-wide v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->createTime:J

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 434
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->duration:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->timeZone:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 438
    const/16 v2, 0x47e

    if-ge p2, v2, :cond_4

    .line 440
    iget v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->transparency:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 442
    iget v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->privacy:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 449
    :goto_4
    return-void

    .line 412
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/calendar/Attendee;

    .line 413
    .local v0, attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 416
    .end local v0           #attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    :cond_1
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 423
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/calendar/Reminder;

    .line 424
    .local v1, reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/apst/util/entity/calendar/Reminder;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    goto :goto_2

    .line 427
    .end local v1           #reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    :cond_3
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 445
    :cond_4
    iget v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->availability:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 447
    iget v2, p0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->accessLevel:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4
.end method
