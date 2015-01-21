.class public Lcom/zte/backup/format/vxx/vcs/VCalendar;
.super Lcom/zte/backup/format/vxx/Vxx;
.source "VCalendar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/Vxx;-><init>()V

    return-void
.end method

.method private static GetMilliSeconds(Ljava/lang/String;IIIIII)Ljava/lang/String;
    .locals 8
    .parameter "timeZone"
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "mins"
    .parameter "sec"

    .prologue
    .line 220
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 222
    .local v0, car:Ljava/util/Calendar;
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 223
    .local v7, tz:Ljava/util/TimeZone;
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 224
    add-int/lit8 v2, p2, -0x1

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 225
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 226
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static GetTimeZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "timeZoneStr"

    .prologue
    const-wide/16 v12, 0xe10

    const-wide/16 v10, 0x3e8

    .line 157
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 160
    .local v7, tz:Ljava/util/TimeZone;
    invoke-virtual {v7}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v8

    int-to-long v4, v8

    .line 162
    .local v4, lOffset:J
    div-long v8, v4, v12

    div-long v0, v8, v10

    .line 163
    .local v0, lHOffset:J
    mul-long v8, v0, v12

    mul-long/2addr v8, v10

    sub-long v8, v4, v8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3c

    div-long v2, v8, v10

    .line 164
    .local v2, lMOffset:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-ltz v8, :cond_0

    const-string v6, "+"

    .line 165
    .local v6, strSymbol:Ljava/lang/String;
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 166
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 167
    const-string v8, "%s%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 164
    .end local v6           #strSymbol:Ljava/lang/String;
    :cond_0
    const-string v6, "-"

    goto :goto_0
.end method

.method private static ParseTimeZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "timeZone"

    .prologue
    const/4 v12, 0x1

    .line 173
    :try_start_0
    const-string v10, ""

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 174
    const-string v10, ""

    .line 202
    :goto_0
    return-object v10

    .line 177
    :cond_0
    :try_start_1
    const-string v10, ":"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, arrTzString:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v6, v1, v10

    .line 179
    .local v6, strHour:Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 180
    .local v9, strSymbol:Ljava/lang/String;
    const-string v7, ""

    .line 181
    .local v7, strHourNum:Ljava/lang/String;
    const-string v8, ""

    .line 182
    .local v8, strMin:Ljava/lang/String;
    const/4 v10, 0x2

    array-length v11, v1

    if-ne v10, v11, :cond_4

    .line 183
    const/4 v10, 0x1

    const/4 v11, 0x3

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 184
    const/4 v10, 0x1

    aget-object v8, v1, v10

    .line 188
    :cond_1
    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 190
    .local v3, nHour:I
    const/4 v4, 0x0

    .line 191
    .local v4, nMin:I
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 192
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 194
    :cond_2
    mul-int/lit16 v10, v3, 0xe10

    mul-int/lit16 v10, v10, 0x3e8

    mul-int/lit8 v11, v4, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    add-int v5, v10, v11

    .line 195
    .local v5, nOffset:I
    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 196
    neg-int v5, v5

    .line 198
    :cond_3
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, arrTimeZoneString:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v0, v10

    goto :goto_0

    .line 185
    .end local v0           #arrTimeZoneString:[Ljava/lang/String;
    .end local v3           #nHour:I
    .end local v4           #nMin:I
    .end local v5           #nOffset:I
    :cond_4
    array-length v10, v1

    if-ne v12, v10, :cond_1

    .line 186
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_1

    .line 200
    .end local v1           #arrTzString:[Ljava/lang/String;
    .end local v6           #strHour:Ljava/lang/String;
    .end local v7           #strHourNum:Ljava/lang/String;
    .end local v8           #strMin:Ljava/lang/String;
    .end local v9           #strSymbol:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 202
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "Asia/Shanghai"

    goto :goto_0
.end method

.method public static export1VcsStr(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;I)Ljava/lang/String;
    .locals 13
    .parameter "calender"
    .parameter "curNum"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->GetEventsIDArrayByIndex(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 34
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->getEventDataByID(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 35
    const/4 v6, 0x0

    .line 69
    :goto_0
    return-object v6

    .line 38
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 39
    .local v3, oneCalender:Ljava/lang/StringBuffer;
    const-string v6, "BEGIN:VCALENDAR\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    const-string v6, "VERSION:1.0\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    const-string v6, "BEGIN:VEVENT\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    const-string v6, "SUMMARY;ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    iget-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventContent:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    const-string v6, "DTSTART:"

    iget-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    const-string v6, "DTEND:"

    iget-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventEnd:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    const-string v6, "LOCATION;ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    iget-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLocation:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    const-string v6, "DESCRIPTION;ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    iget-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDescription:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 50
    .local v4, start:J
    iget v6, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    if-lez v6, :cond_1

    .line 51
    iget-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarm:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v8, :cond_5

    .line 57
    :cond_1
    iget v6, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventIsAllDay:I

    if-eqz v6, :cond_2

    .line 58
    const-string v6, "X-BORQS-ALL-DAY:1\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :cond_2
    const-string v6, "DURATION:"

    iget-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDuration:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventRepeat:Ljava/lang/String;

    invoke-static {v6}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->checkString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 62
    const-string v6, "RRULE:"

    iget-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventRepeat:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->GetRepeatRuleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    :cond_3
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v6}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->checkString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 65
    const-string v6, "TZ:"

    iget-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v7}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->GetTimeZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    :cond_4
    const-string v6, "END:VEVENT\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v6, "END:VCALENDAR\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 51
    :cond_5
    aget-object v0, v7, v6

    .line 52
    .local v0, alarm:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    sub-long v9, v4, v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, minutes:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AALARM:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static export1VcsStr2Dot0(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;I)Ljava/lang/String;
    .locals 3
    .parameter "calender"
    .parameter "curNum"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->GetEventsIDArrayByIndex(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    .local v0, id:I
    invoke-virtual {p0, v0}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->getEventDataByID(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    const/4 v2, 0x0

    .line 127
    :goto_0
    return-object v2

    .line 118
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, oneCalender:Ljava/lang/StringBuffer;
    invoke-static {p0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeTimeZone2Dot0(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;Ljava/lang/StringBuffer;)V

    .line 124
    invoke-static {p0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeEvent20(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;Ljava/lang/StringBuffer;)V

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static formatTwo(I)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 230
    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_0
    return-object v1

    .line 234
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getAlarmByStr(Ljava/util/List;Lcom/zte/backup/format/vxx/vcs/CalendarInterface;)V
    .locals 14
    .parameter
    .parameter "calender"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zte/backup/format/vxx/vcs/CalendarInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, oneVcs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v0, alarms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v1, v9, :cond_1

    .line 580
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    iput v9, p1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    .line 581
    iget v9, p1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    const/4 v10, 0x1

    if-ge v9, v10, :cond_4

    .line 591
    :cond_0
    return-void

    .line 565
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 566
    .local v6, str:Ljava/lang/String;
    const-string v9, "AALARM:"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 568
    .local v2, index1:I
    const/4 v9, -0x1

    if-eq v9, v2, :cond_3

    .line 569
    const-string v9, "AALARM:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, item:Ljava/lang/String;
    const/16 v9, 0x3b

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 571
    .local v3, index2:I
    if-lez v3, :cond_2

    .line 572
    iget-object v9, p1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getTimeISO8601(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 574
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 576
    add-int/lit8 v1, v1, -0x1

    .line 564
    .end local v3           #index2:I
    .end local v4           #item:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    .end local v2           #index1:I
    .end local v6           #str:Ljava/lang/String;
    :cond_4
    iget v9, p1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarm:[Ljava/lang/String;

    .line 586
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    iget v9, p1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    if-ge v5, v9, :cond_0

    .line 587
    iget-object v9, p1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long v7, v10, v12

    .line 588
    .local v7, time:J
    const-wide/32 v9, 0xea60

    div-long/2addr v7, v9

    .line 589
    iget-object v9, p1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarm:[Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 586
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private static getAlarmByStr2Dot0(Ljava/util/List;Lcom/zte/backup/format/vxx/vcs/CalendarInterface;)V
    .locals 8
    .parameter
    .parameter "calender"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zte/backup/format/vxx/vcs/CalendarInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, oneVcs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 383
    .local v1, alarms:Ljava/util/List;,"Ljava/util/List<Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 384
    .local v2, found:Z
    const/4 v0, 0x0

    .line 386
    .local v0, alarm:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 402
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_5

    .line 417
    :cond_1
    return-void

    .line 386
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 387
    .local v5, str:Ljava/lang/String;
    const-string v7, "BEGIN:VALARM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 388
    const/4 v2, 0x1

    .line 389
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #alarm:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 390
    .restart local v0       #alarm:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    goto :goto_0

    .line 391
    :cond_3
    const-string v7, "END:VALARM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 392
    const/4 v2, 0x0

    .line 393
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    :cond_4
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    .end local v5           #str:Ljava/lang/String;
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->SetEventsAlarmCount(I)V

    .line 407
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    iget v6, p1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    if-ge v3, v6, :cond_1

    .line 408
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const-string v7, "TRIGGER;RELATED=\"START\":"

    invoke-static {v6, v7}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, startTime:Ljava/lang/String;
    if-nez v4, :cond_6

    .line 410
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const-string v7, "TRIGGER:"

    invoke-static {v6, v7}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 413
    :cond_6
    if-eqz v4, :cond_7

    .line 414
    invoke-static {v4}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getAlarmStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->SetEventsAlarmByIndex(ILjava/lang/String;)V

    .line 407
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static getAlarmStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "alarm"

    .prologue
    .line 373
    const/4 v1, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method private static getAllDay20(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;Ljava/util/List;)V
    .locals 3
    .parameter "calender"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/backup/format/vxx/vcs/CalendarInterface;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, event:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "X-ALLDAY:"

    invoke-static {p1, v2}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, allDay:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 483
    const-string v2, "ALLYDAY:"

    invoke-static {p1, v2}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByContainsStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    :cond_0
    if-nez v0, :cond_1

    .line 486
    const-string v2, "ALLDAYEVENT:"

    invoke-static {p1, v2}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByContainsStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    :cond_1
    if-nez v0, :cond_2

    .line 489
    const-string v2, "ALL-DAY:"

    invoke-static {p1, v2}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByContainsStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    :cond_2
    if-nez v0, :cond_3

    .line 492
    const-string v0, "0"

    .line 496
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventIsAllDay:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v1

    .line 498
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    const/4 v2, 0x0

    iput v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventIsAllDay:I

    goto :goto_0
.end method

.method private static getEvent20(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;Ljava/util/List;)V
    .locals 5
    .parameter "calender"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/backup/format/vxx/vcs/CalendarInterface;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, event:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "SUMMARY"

    invoke-static {p1, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getUtf8QPStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventContent:Ljava/lang/String;

    .line 437
    const-string v3, "LOCATION"

    invoke-static {p1, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getUtf8QPStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLocation:Ljava/lang/String;

    .line 438
    const-string v3, "DESCRIPTION"

    invoke-static {p1, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getUtf8QPStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDescription:Ljava/lang/String;

    .line 440
    invoke-static {p0, p1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getAllDay20(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;Ljava/util/List;)V

    .line 441
    const-string v3, "DURATION:"

    invoke-static {p1, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDuration:Ljava/lang/String;

    .line 443
    const-string v3, "DTSTART;TZID="

    invoke-static {p1, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 445
    const-string v3, "DTSTART:"

    invoke-static {p1, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    if-eqz v2, :cond_0

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TZID=UTC:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    :cond_0
    if-eqz v2, :cond_1

    .line 451
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, data:[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_1

    .line 453
    const-string v3, ""

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    .line 454
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_4

    .line 457
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    invoke-static {v3, v4}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getTimeISO8601(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    .line 461
    .end local v0           #data:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_1
    const-string v3, "DTEND;TZID="

    invoke-static {p1, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    if-nez v2, :cond_2

    .line 463
    const-string v3, "DTEND:"

    invoke-static {p1, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    if-eqz v2, :cond_2

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TZID=UTC:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    :cond_2
    if-eqz v2, :cond_3

    .line 469
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 470
    .restart local v0       #data:[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_3

    .line 471
    const-string v3, ""

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    .line 472
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_5

    .line 475
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    invoke-static {v3, v4}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getTimeISO8601(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventEnd:Ljava/lang/String;

    .line 478
    .end local v0           #data:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_3
    return-void

    .line 455
    .restart local v0       #data:[Ljava/lang/String;
    .restart local v1       #i:I
    :cond_4
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    :cond_5
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static getTimeISO8601(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "timeZone"
    .parameter "time"

    .prologue
    .line 317
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 318
    :cond_0
    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    .line 322
    :cond_1
    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->transitionVCalendarTimeToMillis(Ljava/lang/String;Ljava/util/TimeZone;)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_2
    const/16 v0, 0x54

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 327
    .local v7, index:I
    if-ltz v7, :cond_3

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, str1:Ljava/lang/String;
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 330
    .local v9, str2:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 334
    .end local v8           #str1:Ljava/lang/String;
    .end local v9           #str2:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    const/4 v10, 0x4

    invoke-virtual {p1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 335
    .local v1, year:I
    const/4 v0, 0x4

    const/4 v10, 0x6

    invoke-virtual {p1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 336
    .local v2, month:I
    const/4 v0, 0x6

    const/16 v10, 0x8

    invoke-virtual {p1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 337
    .local v3, day:I
    const/16 v0, 0x8

    const/16 v10, 0xa

    invoke-virtual {p1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 338
    .local v4, hour:I
    const/16 v0, 0xa

    const/16 v10, 0xc

    invoke-virtual {p1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 339
    .local v5, minute:I
    const/16 v0, 0xc

    const/16 v10, 0xe

    invoke-virtual {p1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, second:I
    move-object v0, p0

    .line 340
    invoke-static/range {v0 .. v6}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->GetMilliSeconds(Ljava/lang/String;IIIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static import1Calendar(Ljava/util/List;Landroid/content/Context;)I
    .locals 5
    .parameter
    .parameter "cx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, oneVcs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;

    invoke-direct {v1, p1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;-><init>(Landroid/content/Context;)V

    .line 76
    .local v1, calender:Lcom/zte/backup/format/vxx/vcs/CalendarInterface;
    const-string v3, "TZ:"

    invoke-static {p0, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->ParseTimeZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    .line 77
    const-string v3, "SUMMARY;ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    invoke-static {p0, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventContent:Ljava/lang/String;

    .line 78
    iget-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventContent:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 79
    const-string v3, "SUMMARY;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:"

    invoke-static {p0, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventContent:Ljava/lang/String;

    .line 81
    :cond_0
    iget-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventContent:Ljava/lang/String;

    invoke-static {v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->decodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventContent:Ljava/lang/String;

    .line 82
    iget-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    const-string v4, "DTSTART:"

    invoke-static {p0, v4}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getTimeISO8601(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    .line 83
    iget-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    const-string v4, "DTEND:"

    invoke-static {p0, v4}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getTimeISO8601(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventEnd:Ljava/lang/String;

    .line 84
    const-string v3, "LOCATION;ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    invoke-static {p0, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLocation:Ljava/lang/String;

    .line 85
    iget-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLocation:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 86
    const-string v3, "LOCATION;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:"

    invoke-static {p0, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLocation:Ljava/lang/String;

    .line 88
    :cond_1
    const-string v3, "DESCRIPTION;ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    invoke-static {p0, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDescription:Ljava/lang/String;

    .line 89
    iget-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDescription:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 90
    const-string v3, "DESCRIPTION;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:"

    invoke-static {p0, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDescription:Ljava/lang/String;

    .line 92
    :cond_2
    invoke-static {p0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getAlarmByStr(Ljava/util/List;Lcom/zte/backup/format/vxx/vcs/CalendarInterface;)V

    .line 94
    const-string v3, "X-BORQS-ALL-DAY:"

    invoke-static {p0, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, allDay:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 96
    const-string v0, "0"

    .line 99
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventIsAllDay:I

    .line 100
    const-string v3, "DURATION:"

    invoke-static {p0, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDuration:Ljava/lang/String;

    .line 101
    const-string v3, "RRULE:"

    invoke-static {p0, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventRepeat:Ljava/lang/String;

    .line 102
    iget-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventRepeat:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 103
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 104
    .local v2, time:Landroid/text/format/Time;
    iget-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 105
    iget-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventRepeat:Ljava/lang/String;

    const/high16 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->ParseRepeatRuleStr(Ljava/lang/String;Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventRepeat:Ljava/lang/String;

    .line 108
    .end local v2           #time:Landroid/text/format/Time;
    :cond_4
    invoke-virtual {v1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->addNewEventItem()I

    move-result v3

    return v3
.end method

.method public static import1Calendar2Dot0(Ljava/util/List;Landroid/content/Context;)I
    .locals 2
    .parameter
    .parameter "cx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, oneVcs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;

    invoke-direct {v0, p1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, calender:Lcom/zte/backup/format/vxx/vcs/CalendarInterface;
    invoke-static {v0, p0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getEvent20(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;Ljava/util/List;)V

    .line 150
    invoke-static {p0, v0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getAlarmByStr2Dot0(Ljava/util/List;Lcom/zte/backup/format/vxx/vcs/CalendarInterface;)V

    .line 151
    const-string v1, "RRULE:"

    invoke-static {p0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventRepeat:Ljava/lang/String;

    .line 152
    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->addNewEventItem()I

    move-result v1

    return v1
.end method

.method private static makeAlarmStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "alarm"

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-PT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeAlarms2Dot0(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;Ljava/lang/StringBuffer;)V
    .locals 6
    .parameter "calender"
    .parameter "oneCalender"

    .prologue
    .line 420
    iget v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    if-lez v1, :cond_0

    .line 421
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarm:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 429
    :cond_0
    return-void

    .line 421
    :cond_1
    aget-object v0, v2, v1

    .line 422
    .local v0, alarm:Ljava/lang/String;
    const-string v4, "BEGIN:VALARM\r\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    const-string v4, "ACTION:DISPLAY\r\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    const-string v4, "DESCRIPTION:REMINDER\r\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TRIGGER;RELATED=\"START\":"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeAlarmStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    const-string v4, "END:VALARM\r\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static makeEvent20(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;Ljava/lang/StringBuffer;)V
    .locals 4
    .parameter "calender"
    .parameter "oneCalender"

    .prologue
    .line 504
    const-string v0, "BEGIN:VEVENT\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const-string v0, "DTSTART;TZID="

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 508
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeTimeISO8601(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventEnd:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    const-string v0, "DTEND;TZID="

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 512
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventEnd:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeTimeISO8601(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLastDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    const-string v0, "DTSTAMP:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLastDate:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeTimeStampISO8601(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 517
    :cond_2
    const-string v0, "UID:"

    invoke-static {p0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeUID(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 518
    const-string v0, "LOCATION"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLocation:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItemWithQP(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 519
    const-string v0, "SUMMARY"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventContent:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItemWithQP(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 520
    const-string v0, "DESCRIPTION"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDescription:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItemWithQP(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 521
    const-string v0, "RRULE:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventRepeat:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 523
    iget v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventIsAllDay:I

    if-eqz v0, :cond_3

    .line 524
    const-string v0, "X-ALLDAY:1\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    :cond_3
    const-string v0, "DURATION:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDuration:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 528
    invoke-static {p0, p1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeAlarms2Dot0(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;Ljava/lang/StringBuffer;)V

    .line 529
    const-string v0, "END:VEVENT\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    return-void
.end method

.method private static makeTimeISO8601(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "ms"
    .parameter "timeZone"

    .prologue
    .line 296
    if-nez p0, :cond_0

    .line 297
    const/4 v5, 0x0

    .line 313
    :goto_0
    return-object v5

    .line 299
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 301
    .local v2, milliseconds:J
    if-eqz p1, :cond_1

    .line 302
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v2, v3, v6, v7}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 307
    .local v0, date:Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 308
    .local v4, strDate:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd-HHmmss"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 312
    .local v5, time:Ljava/lang/String;
    const/16 v6, 0x2d

    const/16 v7, 0x54

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 313
    goto :goto_0
.end method

.method private static makeTimeOffset(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "timeZone"

    .prologue
    .line 207
    invoke-static {p0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->GetTimeZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, offset:Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 209
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 210
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, str1:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, str2:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .end local v2           #str1:Ljava/lang/String;
    .end local v3           #str2:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static makeTimeStampISO8601(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ms"

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeTimeISO8601(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeTimeZone2Dot0(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "calender"
    .parameter "oneCalender"

    .prologue
    .line 533
    const-string v0, "BEGIN:VTIMEZONE\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TZID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    const-string v0, "BEGIN:STANDARD\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "DTSTART:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeTimeISO8601(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    const-string v0, "TZOFFSETFROM:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeTimeOffset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 542
    const-string v0, "TZOFFSETTO:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeTimeOffset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 545
    :cond_1
    const-string v0, "END:STANDARD\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    const-string v0, "BEGIN:DAYLIGHT\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    const-string v0, "DTSTART:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeTimeISO8601(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 549
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    const-string v0, "TZOFFSETFROM:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeTimeOffset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 551
    const-string v0, "TZOFFSETTO:"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->makeTimeOffset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 553
    :cond_2
    const-string v0, "END:DAYLIGHT\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    const-string v0, "END:VTIMEZONE\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    return-void
.end method

.method private static makeUID(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;)Ljava/lang/String;
    .locals 3
    .parameter "calender"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->sync_id:Ljava/lang/String;

    .line 354
    .local v1, uid:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 355
    const/4 v2, 0x0

    .line 363
    :goto_0
    return-object v2

    .line 358
    :cond_0
    const-string v2, "http://www.google.com/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 359
    .local v0, index:I
    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    .line 360
    const-string v2, "http://www.google.com/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 363
    goto :goto_0
.end method

.method private static transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;
    .locals 6
    .parameter "millis"
    .parameter "tz"
    .parameter "dst"

    .prologue
    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v2, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 252
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 253
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 254
    .local v3, zoneOffset:I
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 255
    .local v1, dstOffset:I
    const/16 v4, 0xe

    add-int v5, v3, v1

    neg-int v5, v5

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->add(II)V

    .line 258
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->formatTwo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->formatTwo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const/16 v4, 0x54

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->formatTwo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->formatTwo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->formatTwo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const/16 v4, 0x5a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static transitionVCalendarTimeToMillis(Ljava/lang/String;Ljava/util/TimeZone;)J
    .locals 11
    .parameter "VCalendarTime"
    .parameter "timezone"

    .prologue
    const/16 v10, 0xf

    const/16 v6, 0xd

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/4 v2, 0x4

    .line 273
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const-wide/16 v1, 0x0

    .line 292
    :goto_0
    return-wide v1

    .line 277
    :cond_0
    move-object v7, p0

    .line 280
    .local v7, date:Ljava/lang/String;
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 281
    invoke-virtual {v7, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 281
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x8

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 282
    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 280
    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 285
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 288
    invoke-virtual {v0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    .line 289
    .local v9, zoneOffset:I
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 290
    .local v8, dstOffset:I
    const/16 v1, 0xe

    add-int v2, v9, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 292
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    goto :goto_0
.end method
