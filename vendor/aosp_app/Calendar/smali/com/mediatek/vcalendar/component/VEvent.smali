.class public Lcom/mediatek/vcalendar/component/VEvent;
.super Lcom/mediatek/vcalendar/component/Component;
.source "VEvent.java"


# static fields
.field public static final CREATE_TIME_COLUMN_NAME:Ljava/lang/String; = "createTime"

.field public static final MODIFY_TIME_COLUMN_NAME:Ljava/lang/String; = "modifyTime"

.field private static final TAG:Ljava/lang/String; = "VEvent"

.field public static final VEVENT_BEGIN:Ljava/lang/String; = "BEGIN:VEVENT"

.field public static final VEVENT_END:Ljava/lang/String; = "END:VEVENT"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "VEVENT"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/vcalendar/component/Component;-><init>(Ljava/lang/String;Lcom/mediatek/vcalendar/component/Component;)V

    .line 105
    const-string v0, "VEvent"

    const-string v1, "Constructor: VEvent component created!"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private isAllDayEvent()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 527
    const-string v4, "VEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAllDayEvent: sVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/vcalendar/component/VCalendar;->sVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v4, "DTSTART"

    invoke-virtual {p0, v4}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v0

    check-cast v0, Lcom/mediatek/vcalendar/property/DtStart;

    .line 529
    .local v0, dtStart:Lcom/mediatek/vcalendar/property/DtStart;
    const-string v4, "VALUE"

    invoke-virtual {v0, v4}, Lcom/mediatek/vcalendar/property/Property;->getFirstParameter(Ljava/lang/String;)Lcom/mediatek/vcalendar/parameter/Parameter;

    move-result-object v1

    check-cast v1, Lcom/mediatek/vcalendar/parameter/Value;

    .line 530
    .local v1, value:Lcom/mediatek/vcalendar/parameter/Value;
    if-eqz v1, :cond_0

    const-string v4, "DATE"

    invoke-virtual {v1}, Lcom/mediatek/vcalendar/parameter/Parameter;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 531
    const-string v4, "VEvent"

    const-string v5, "isAllDayEvent: TRUE."

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :goto_0
    return v3

    .line 535
    :cond_0
    const-string v4, "X-ALLDAY"

    invoke-virtual {p0, v4}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v2

    .line 536
    .local v2, xallday:Lcom/mediatek/vcalendar/property/Property;
    if-eqz v2, :cond_1

    const-string v4, "1"

    invoke-virtual {v2}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 537
    const-string v4, "VEvent"

    const-string v5, "isAllDayEvent: TRUE."

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDtEnd()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 496
    const-string v5, "DTEND"

    invoke-virtual {p0, v5}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v1

    check-cast v1, Lcom/mediatek/vcalendar/property/DtEnd;

    .line 497
    .local v1, dtend:Lcom/mediatek/vcalendar/property/DtEnd;
    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {v1}, Lcom/mediatek/vcalendar/property/DtEnd;->getValueMillis()J

    move-result-wide v5

    .line 514
    :goto_0
    return-wide v5

    .line 501
    :cond_0
    const-string v5, "DTSTART"

    invoke-virtual {p0, v5}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v0

    check-cast v0, Lcom/mediatek/vcalendar/property/DtStart;

    .line 502
    .local v0, dtStart:Lcom/mediatek/vcalendar/property/DtStart;
    if-nez v0, :cond_1

    .line 503
    new-instance v5, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    const-string v6, "DTSTART is a required property."

    invoke-direct {v5, v6}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 505
    :cond_1
    const-string v5, "DURATION"

    invoke-virtual {p0, v5}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v2

    check-cast v2, Lcom/mediatek/vcalendar/property/Duration;

    .line 506
    .local v2, duration:Lcom/mediatek/vcalendar/property/Duration;
    if-eqz v2, :cond_2

    .line 507
    const-string v5, "VEvent"

    const-string v6, "Can not get DtEnd, return value based on the duration."

    invoke-static {v5, v6}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Lcom/mediatek/vcalendar/property/DtStart;->getValueMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/vcalendar/valuetype/DDuration;->getDurationMillis(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    goto :goto_0

    .line 512
    :cond_2
    const-string v5, "VEvent"

    const-string v6, "Can not get DtEnd & Duration, return value based on the dtstart."

    invoke-static {v5, v6}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/vcalendar/valuetype/DateTime;->getUtcDateMillis(Ljava/lang/String;)J

    move-result-wide v3

    .line 514
    .local v3, millis:J
    const-wide/32 v5, 0x5265c00

    add-long/2addr v5, v3

    goto :goto_0
.end method

.method public getDtStart()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 519
    const-string v1, "DTSTART"

    invoke-virtual {p0, v1}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v0

    check-cast v0, Lcom/mediatek/vcalendar/property/DtStart;

    .line 520
    .local v0, dtStart:Lcom/mediatek/vcalendar/property/DtStart;
    if-nez v0, :cond_0

    .line 521
    new-instance v1, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    const-string v2, "DTSTART is a required property."

    invoke-direct {v1, v2}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 523
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/vcalendar/property/DtStart;->getValueMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 453
    const-string v6, "VEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOrganizer: sVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/vcalendar/component/VCalendar;->sVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v6, "ORGANIZER"

    invoke-virtual {p0, v6}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v2

    .line 455
    .local v2, organizer:Lcom/mediatek/vcalendar/property/Property;
    if-eqz v2, :cond_1

    .line 456
    invoke-virtual {v2}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/vcalendar/valuetype/CalAddress;->getUserMail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 473
    :cond_0
    :goto_0
    return-object v5

    .line 459
    :cond_1
    const-string v6, "ATTENDEE"

    invoke-virtual {p0, v6}, Lcom/mediatek/vcalendar/component/Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 460
    .local v0, attendeesList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/property/Property;>;"
    if-nez v0, :cond_2

    .line 461
    const-string v6, "VEvent"

    const-string v7, "getOrganizer: no attendee property."

    invoke-static {v6, v7}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/vcalendar/property/Property;

    .line 466
    .local v3, property:Lcom/mediatek/vcalendar/property/Property;
    const-string v6, "ROLE"

    invoke-virtual {v3, v6}, Lcom/mediatek/vcalendar/property/Property;->getFirstParameter(Ljava/lang/String;)Lcom/mediatek/vcalendar/parameter/Parameter;

    move-result-object v4

    .line 468
    .local v4, role:Lcom/mediatek/vcalendar/parameter/Parameter;
    if-eqz v4, :cond_3

    const-string v6, "CHAIR"

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/parameter/Parameter;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "ORGANIZER"

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/parameter/Parameter;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 469
    :cond_4
    invoke-virtual {v3}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/vcalendar/valuetype/CalAddress;->getUserMail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/mediatek/vcalendar/component/VEvent;->isAllDayEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    const/16 v5, 0x2012

    .line 492
    .local v5, flags:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/vcalendar/component/VEvent;->getDtStart()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/mediatek/vcalendar/component/VEvent;->getDtEnd()J

    move-result-wide v3

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 487
    .end local v5           #flags:I
    :cond_1
    const/16 v5, 0x11

    .line 488
    .restart local v5       #flags:I
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    or-int/lit16 v5, v5, 0x80

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    const-string v1, "SUMMARY"

    invoke-virtual {p0, v1}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v0

    check-cast v0, Lcom/mediatek/vcalendar/property/Summary;

    .line 444
    .local v0, summary:Lcom/mediatek/vcalendar/property/Summary;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public parseCursorInfo(Landroid/database/Cursor;)V
    .locals 23
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 147
    const-string v20, "VEvent"

    const-string v21, "parseCursorInfo : begin."

    invoke-static/range {v20 .. v21}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-super/range {p0 .. p1}, Lcom/mediatek/vcalendar/component/Component;->parseCursorInfo(Landroid/database/Cursor;)V

    .line 150
    new-instance v10, Lcom/mediatek/vcalendar/parameter/Parameter;

    const-string v20, "ENCODING"

    const-string v21, "QUOTED-PRINTABLE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Lcom/mediatek/vcalendar/parameter/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v10, encodePara:Lcom/mediatek/vcalendar/parameter/Parameter;
    new-instance v5, Lcom/mediatek/vcalendar/parameter/Parameter;

    const-string v20, "CHARSET"

    const-string v21, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/mediatek/vcalendar/parameter/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v5, charsetPara:Lcom/mediatek/vcalendar/parameter/Parameter;
    const-string v20, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 156
    .local v19, valueString:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 157
    new-instance v20, Lcom/mediatek/vcalendar/property/Uid;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/vcalendar/property/Uid;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 161
    :cond_0
    const-string v20, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 162
    invoke-static/range {v19 .. v19}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 163
    new-instance v16, Lcom/mediatek/vcalendar/property/Summary;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/vcalendar/property/Summary;-><init>(Ljava/lang/String;)V

    .line 164
    .local v16, summary:Lcom/mediatek/vcalendar/property/Property;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    .line 165
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 171
    .end local v16           #summary:Lcom/mediatek/vcalendar/property/Property;
    :cond_1
    invoke-static {}, Lcom/mediatek/vcalendar/Util;->isVersionIcsOrLower()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 172
    const-string v20, "VEvent"

    const-string v21, "parseCursorInfo,OS Version is <=15."

    invoke-static/range {v20 .. v21}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_2
    const-string v20, "modifyTime"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 180
    if-nez v19, :cond_3

    .line 181
    const-string v20, "createTime"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 183
    :cond_3
    invoke-static/range {v19 .. v19}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 184
    new-instance v20, Lcom/mediatek/vcalendar/property/DtStamp;

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lcom/mediatek/vcalendar/valuetype/DateTime;->getUtcTimeString(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/mediatek/vcalendar/property/DtStamp;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 188
    :cond_4
    const-string v20, "eventStatus"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 189
    .local v15, status:I
    invoke-static {v15}, Lcom/mediatek/vcalendar/property/Status;->getStatusString(I)Ljava/lang/String;

    move-result-object v19

    .line 190
    if-eqz v19, :cond_5

    .line 191
    new-instance v20, Lcom/mediatek/vcalendar/property/Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/vcalendar/property/Status;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 195
    :cond_5
    const-string v20, "organizer"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 196
    if-eqz v19, :cond_6

    .line 197
    invoke-static/range {v19 .. v19}, Lcom/mediatek/vcalendar/valuetype/CalAddress;->getUserCalAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 198
    if-eqz v19, :cond_6

    .line 199
    new-instance v20, Lcom/mediatek/vcalendar/property/Property;

    const-string v21, "ORGANIZER"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 204
    :cond_6
    const-string v20, "eventLocation"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 205
    invoke-static/range {v19 .. v19}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 206
    new-instance v12, Lcom/mediatek/vcalendar/property/Location;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Lcom/mediatek/vcalendar/property/Location;-><init>(Ljava/lang/String;)V

    .line 207
    .local v12, location:Lcom/mediatek/vcalendar/property/Property;
    invoke-virtual {v12, v10}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    .line 208
    invoke-virtual {v12, v5}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    .line 209
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 213
    .end local v12           #location:Lcom/mediatek/vcalendar/property/Property;
    :cond_7
    const-string v20, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 214
    invoke-static/range {v19 .. v19}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 215
    new-instance v7, Lcom/mediatek/vcalendar/property/Description;

    const-string v20, "\r\n"

    const-string v21, "\n"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Lcom/mediatek/vcalendar/property/Description;-><init>(Ljava/lang/String;)V

    .line 216
    .local v7, description:Lcom/mediatek/vcalendar/property/Property;
    invoke-virtual {v7, v10}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    .line 217
    invoke-virtual {v7, v5}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    .line 218
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 221
    .end local v7           #description:Lcom/mediatek/vcalendar/property/Property;
    :cond_8
    const-wide/16 v13, -0x1

    .line 222
    .local v13, millis:J
    const-string v20, "allDay"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    const/4 v11, 0x1

    .line 224
    .local v11, isAllDay:Z
    :goto_0
    const-string v20, "allDay"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, allday:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 226
    new-instance v4, Lcom/mediatek/vcalendar/property/Property;

    const-string v20, "X-ALLDAY"

    move-object/from16 v0, v20

    invoke-direct {v4, v0, v3}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .local v4, alldayProperty:Lcom/mediatek/vcalendar/property/Property;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 230
    .end local v4           #alldayProperty:Lcom/mediatek/vcalendar/property/Property;
    :cond_9
    const-string v20, "eventTimezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 231
    const-string v17, "UTC"

    .line 232
    .local v17, timezone:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 233
    move-object/from16 v17, v19

    .line 234
    new-instance v20, Lcom/mediatek/vcalendar/property/Property;

    const-string v21, "X-TIMEZONE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 238
    :cond_a
    const-string v20, "dtstart"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 239
    .local v6, columnIndex:I
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 240
    new-instance v20, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    const-string v21, "Cannot create DtStart, the needed \"DtStart\" does not exist in DB."

    invoke-direct/range {v20 .. v21}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 174
    .end local v3           #allday:Ljava/lang/String;
    .end local v6           #columnIndex:I
    .end local v11           #isAllDay:Z
    .end local v13           #millis:J
    .end local v15           #status:I
    .end local v17           #timezone:Ljava/lang/String;
    :cond_b
    const-string v20, "VEvent"

    const-string v21, "parseCursorInfo,OS Version is > 15."

    invoke-static/range {v20 .. v21}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v20, "createTime"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    if-gez v20, :cond_2

    .line 176
    new-instance v20, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    const-string v21, "Cannot create DtStamp, the needed \"createTime\"  does not exist in DB."

    invoke-direct/range {v20 .. v21}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 222
    .restart local v13       #millis:J
    .restart local v15       #status:I
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 242
    .restart local v3       #allday:Ljava/lang/String;
    .restart local v6       #columnIndex:I
    .restart local v11       #isAllDay:Z
    .restart local v17       #timezone:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 244
    if-eqz v11, :cond_11

    .line 245
    invoke-static {v13, v14}, Lcom/mediatek/vcalendar/valuetype/DateTime;->getUtcTimeString(J)Ljava/lang/String;

    move-result-object v19

    .line 246
    new-instance v9, Lcom/mediatek/vcalendar/property/DtStart;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lcom/mediatek/vcalendar/property/DtStart;-><init>(Ljava/lang/String;)V

    .line 255
    .local v9, dtStart:Lcom/mediatek/vcalendar/property/DtStart;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 258
    const-string v20, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 259
    invoke-static/range {v19 .. v19}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 260
    new-instance v20, Lcom/mediatek/vcalendar/property/Duration;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/vcalendar/property/Duration;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 263
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    move-object/from16 v20, v0

    const-string v21, "DURATION"

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 264
    const-string v20, "dtend"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 265
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-nez v20, :cond_f

    .line 266
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 268
    if-eqz v11, :cond_12

    .line 269
    invoke-static {v13, v14}, Lcom/mediatek/vcalendar/valuetype/DateTime;->getUtcTimeString(J)Ljava/lang/String;

    move-result-object v19

    .line 270
    new-instance v8, Lcom/mediatek/vcalendar/property/DtEnd;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lcom/mediatek/vcalendar/property/DtEnd;-><init>(Ljava/lang/String;)V

    .line 279
    .local v8, dtEnd:Lcom/mediatek/vcalendar/property/DtEnd;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 284
    .end local v8           #dtEnd:Lcom/mediatek/vcalendar/property/DtEnd;
    :cond_f
    const-string v20, "rrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 285
    invoke-static/range {v19 .. v19}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 286
    new-instance v20, Lcom/mediatek/vcalendar/property/RRule;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/vcalendar/property/RRule;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 289
    :cond_10
    return-void

    .line 250
    .end local v9           #dtStart:Lcom/mediatek/vcalendar/property/DtStart;
    :cond_11
    invoke-static {v13, v14}, Lcom/mediatek/vcalendar/valuetype/DateTime;->getUtcTimeString(J)Ljava/lang/String;

    move-result-object v19

    .line 251
    new-instance v9, Lcom/mediatek/vcalendar/property/DtStart;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lcom/mediatek/vcalendar/property/DtStart;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v9       #dtStart:Lcom/mediatek/vcalendar/property/DtStart;
    new-instance v18, Lcom/mediatek/vcalendar/parameter/Parameter;

    const-string v20, "TZID"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/vcalendar/parameter/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .local v18, tzid:Lcom/mediatek/vcalendar/parameter/Parameter;
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    goto/16 :goto_1

    .line 274
    .end local v18           #tzid:Lcom/mediatek/vcalendar/parameter/Parameter;
    :cond_12
    invoke-static {v13, v14}, Lcom/mediatek/vcalendar/valuetype/DateTime;->getUtcTimeString(J)Ljava/lang/String;

    move-result-object v19

    .line 275
    new-instance v8, Lcom/mediatek/vcalendar/property/DtEnd;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lcom/mediatek/vcalendar/property/DtEnd;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v8       #dtEnd:Lcom/mediatek/vcalendar/property/DtEnd;
    new-instance v18, Lcom/mediatek/vcalendar/parameter/Parameter;

    const-string v20, "TZID"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/vcalendar/parameter/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .restart local v18       #tzid:Lcom/mediatek/vcalendar/parameter/Parameter;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    goto :goto_2
.end method

.method public parseVEventInfo(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;)V
    .locals 7
    .parameter "eventInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->getVEventCursor()Landroid/database/Cursor;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/vcalendar/component/VEvent;->parseCursorInfo(Landroid/database/Cursor;)V

    .line 117
    invoke-virtual {p1}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->getVEventCursor()Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    invoke-virtual {p1}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->getAlertsCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 121
    .local v1, alarmsCursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 122
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 123
    new-instance v0, Lcom/mediatek/vcalendar/component/VAlarm;

    invoke-direct {v0, p0}, Lcom/mediatek/vcalendar/component/VAlarm;-><init>(Lcom/mediatek/vcalendar/component/Component;)V

    .line 124
    .local v0, alarm:Lcom/mediatek/vcalendar/component/VAlarm;
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-static {v1, v6}, Lcom/mediatek/vcalendar/DbOperationHelper;->matrixCursorFromCursorRow(Landroid/database/Cursor;I)Landroid/database/MatrixCursor;

    move-result-object v4

    .line 125
    .local v4, cursor:Landroid/database/Cursor;
    invoke-virtual {v0, v4}, Lcom/mediatek/vcalendar/component/VAlarm;->parseCursorInfo(Landroid/database/Cursor;)V

    .line 126
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 127
    invoke-virtual {p0, v0}, Lcom/mediatek/vcalendar/component/Component;->addChild(Lcom/mediatek/vcalendar/component/Component;)V

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 122
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 130
    .end local v0           #alarm:Lcom/mediatek/vcalendar/component/VAlarm;
    .end local v4           #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 132
    invoke-virtual {p1}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->getAttendeesCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 133
    .local v3, attendeesCursor:Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 134
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 135
    new-instance v2, Lcom/mediatek/vcalendar/property/Attendee;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/mediatek/vcalendar/property/Attendee;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, attendee:Lcom/mediatek/vcalendar/property/Attendee;
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-static {v3, v6}, Lcom/mediatek/vcalendar/DbOperationHelper;->matrixCursorFromCursorRow(Landroid/database/Cursor;I)Landroid/database/MatrixCursor;

    move-result-object v4

    .line 137
    .restart local v4       #cursor:Landroid/database/Cursor;
    invoke-virtual {v2, v4}, Lcom/mediatek/vcalendar/property/Attendee;->parseDbCursorInfo(Landroid/database/Cursor;)V

    .line 138
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 139
    invoke-virtual {p0, v2}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 140
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 142
    .end local v2           #attendee:Lcom/mediatek/vcalendar/property/Attendee;
    .end local v4           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 143
    return-void
.end method

.method public toAlarmsContentValue(Ljava/util/LinkedList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 393
    .local p1, cvList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/content/ContentValues;>;"
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/component/Component;->toAlarmsContentValue(Ljava/util/LinkedList;)V

    .line 395
    sget-object v10, Lcom/mediatek/vcalendar/component/VCalendar;->sVersion:Ljava/lang/String;

    const-string v11, "1.0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 396
    invoke-virtual {p0}, Lcom/mediatek/vcalendar/component/VEvent;->getDtStart()J

    move-result-wide v6

    .line 397
    .local v6, eventStartMillis:J
    const-string v10, "VEvent"

    const-string v11, "toAlarmsContentValue: version 1.0 "

    invoke-static {v10, v11}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v10, "AALARM"

    invoke-virtual {p0, v10}, Lcom/mediatek/vcalendar/component/Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 400
    .local v1, aPros:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/property/Property;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/vcalendar/property/Property;

    .line 401
    .local v0, aAlarm:Lcom/mediatek/vcalendar/property/Property;
    check-cast v0, Lcom/mediatek/vcalendar/property/AAlarm;

    .end local v0           #aAlarm:Lcom/mediatek/vcalendar/property/Property;
    invoke-virtual {v0, p1, v6, v7}, Lcom/mediatek/vcalendar/property/AAlarm;->toAlarmsContentValue(Ljava/util/LinkedList;J)V

    goto :goto_0

    .line 406
    :cond_0
    const-string v10, "DALARM"

    invoke-virtual {p0, v10}, Lcom/mediatek/vcalendar/component/Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 407
    .local v5, dPros:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/property/Property;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v8           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/vcalendar/property/Property;

    .line 408
    .local v3, dAlarm:Lcom/mediatek/vcalendar/property/Property;
    invoke-virtual {v3}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, dAlarmValue:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/vcalendar/property/Property;

    .line 410
    .restart local v0       #aAlarm:Lcom/mediatek/vcalendar/property/Property;
    invoke-virtual {v0}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object v10, v3

    .line 413
    check-cast v10, Lcom/mediatek/vcalendar/property/DAlarm;

    invoke-virtual {v10, p1, v6, v7}, Lcom/mediatek/vcalendar/property/DAlarm;->toAlarmsContentValue(Ljava/util/LinkedList;J)V

    goto :goto_1

    .line 419
    .end local v0           #aAlarm:Lcom/mediatek/vcalendar/property/Property;
    .end local v1           #aPros:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/property/Property;>;"
    .end local v3           #dAlarm:Lcom/mediatek/vcalendar/property/Property;
    .end local v4           #dAlarmValue:Ljava/lang/String;
    .end local v5           #dPros:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/property/Property;>;"
    .end local v6           #eventStartMillis:J
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/vcalendar/component/Component;->getComponents()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/vcalendar/component/Component;

    .line 420
    .local v2, component:Lcom/mediatek/vcalendar/component/Component;
    invoke-virtual {v2, p1}, Lcom/mediatek/vcalendar/component/Component;->toAlarmsContentValue(Ljava/util/LinkedList;)V

    goto :goto_2

    .line 422
    .end local v2           #component:Lcom/mediatek/vcalendar/component/Component;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public toAttendeesContentValue(Ljava/util/LinkedList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 426
    .local p1, cvList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/content/ContentValues;>;"
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/component/Component;->toAttendeesContentValue(Ljava/util/LinkedList;)V

    .line 427
    const-string v3, "ATTENDEE"

    invoke-virtual {p0, v3}, Lcom/mediatek/vcalendar/component/Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 428
    .local v0, attendees:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/property/Property;>;"
    const-string v3, "VEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toAttendeesContentValue, attendees list:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/vcalendar/property/Property;

    .line 431
    .local v2, property:Lcom/mediatek/vcalendar/property/Property;
    check-cast v2, Lcom/mediatek/vcalendar/property/Attendee;

    .end local v2           #property:Lcom/mediatek/vcalendar/property/Property;
    invoke-virtual {v2, p1}, Lcom/mediatek/vcalendar/property/Attendee;->toAttendeesContentValue(Ljava/util/LinkedList;)V

    goto :goto_0

    .line 434
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 16
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 293
    const-string v12, "VEvent"

    const-string v13, "toEventsContentValue."

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-super/range {p0 .. p1}, Lcom/mediatek/vcalendar/component/Component;->toEventsContentValue(Landroid/content/ContentValues;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    const-string v13, "UID"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 299
    const-string v12, "VEvent"

    const-string v13, "VEVENT did not contains the required UID!!"

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    const-string v13, "DTSTART"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 303
    new-instance v12, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    const-string v13, "VEVENT did not contains the required DTSTART"

    invoke-direct {v12, v13}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 308
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/vcalendar/component/Component;->getComponents()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 309
    const-string v12, "hasAlarm"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    :cond_2
    sget-object v12, Lcom/mediatek/vcalendar/component/VCalendar;->sVersion:Ljava/lang/String;

    const-string v13, "1.0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    const-string v13, "DTEND"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    const-string v13, "DURATION"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 315
    const-string v12, "VEvent"

    const-string v13, "toEventsContentValue : DTEND DURATION cannot exist at the same VEvent"

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v12, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    const-string v13, "DTEND, DURATION cannot exist at the same VEvent"

    invoke-direct {v12, v13}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 320
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/vcalendar/component/Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 321
    .local v9, propertyName:Ljava/lang/String;
    const-string v12, "VEvent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "toEventsContentValue : propertyName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mediatek/vcalendar/component/Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 324
    .local v10, pros:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/property/Property;>;"
    const-string v12, "VEvent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "toEventsContentValue :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'s count = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/vcalendar/property/Property;

    .line 327
    .local v8, property:Lcom/mediatek/vcalendar/property/Property;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/mediatek/vcalendar/property/Property;->toEventsContentValue(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 331
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #property:Lcom/mediatek/vcalendar/property/Property;
    .end local v9           #propertyName:Ljava/lang/String;
    .end local v10           #pros:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/property/Property;>;"
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/vcalendar/component/VEvent;->isAllDayEvent()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 332
    const-string v12, "allDay"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    const-string v13, "DTSTART"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    const-string v13, "DTEND"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    const-string v13, "DURATION"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 337
    const-string v12, "DTSTART"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v2

    check-cast v2, Lcom/mediatek/vcalendar/property/DtStart;

    .line 342
    .local v2, dtStart:Lcom/mediatek/vcalendar/property/DtStart;
    if-nez v2, :cond_7

    .line 343
    new-instance v12, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    const-string v13, "DTSTART time is needed!"

    invoke-direct {v12, v13}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 345
    :cond_7
    invoke-virtual {v2}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/vcalendar/valuetype/DateTime;->getUtcDateMillis(Ljava/lang/String;)J

    move-result-wide v6

    .line 346
    .local v6, millis:J
    const-string v12, "dtend"

    const-wide/32 v13, 0x5265c00

    add-long/2addr v13, v6

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 347
    const-string v12, "VEvent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DTSTART value: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .end local v2           #dtStart:Lcom/mediatek/vcalendar/property/DtStart;
    .end local v6           #millis:J
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/vcalendar/component/Component;->getComponents()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/vcalendar/component/Component;

    .line 354
    .local v1, component:Lcom/mediatek/vcalendar/component/Component;
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/mediatek/vcalendar/component/Component;->toEventsContentValue(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 359
    .end local v1           #component:Lcom/mediatek/vcalendar/component/Component;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    const-string v13, "X-TIMEZONE"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 360
    const-string v12, "X-TIMEZONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v11

    .line 362
    .local v11, tz:Lcom/mediatek/vcalendar/property/Property;
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 363
    :cond_a
    const-string v12, "eventTimezone"

    const-string v13, "UTC"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .end local v11           #tz:Lcom/mediatek/vcalendar/property/Property;
    :cond_b
    :goto_2
    const-string v12, "VEvent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "event\'s EVENT_TIMEZONE:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v12, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 377
    const-string v12, "VEvent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Remove DTEND when event has DURATION:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v12, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 382
    :cond_c
    const-string v12, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v12, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 383
    const-string v12, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 384
    const-string v12, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/vcalendar/component/VEvent;->getDtEnd()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/vcalendar/component/VEvent;->getDtStart()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/32 v14, 0xea60

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/mediatek/vcalendar/valuetype/DDuration;->getDurationString(J)Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, duration:Ljava/lang/String;
    const-string v12, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .end local v3           #duration:Ljava/lang/String;
    :cond_d
    return-void

    .line 365
    .restart local v11       #tz:Lcom/mediatek/vcalendar/property/Property;
    :cond_e
    const-string v12, "eventTimezone"

    invoke-virtual {v11}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 368
    .end local v11           #tz:Lcom/mediatek/vcalendar/property/Property;
    :cond_f
    const-string v12, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 370
    const-string v12, "eventTimezone"

    const-string v13, "UTC"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
