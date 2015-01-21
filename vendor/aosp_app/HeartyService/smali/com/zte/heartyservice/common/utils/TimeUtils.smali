.class public Lcom/zte/heartyservice/common/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalendarOfCurrentMonth()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 27
    .local v0, calendar:Ljava/util/Calendar;
    return-object v0
.end method

.method public static getCalendarOfSpecifyMonth(II)Ljava/util/Calendar;
    .locals 2
    .parameter "year"
    .parameter "month"

    .prologue
    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 37
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 39
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 40
    return-object v0
.end method

.method public static getDateForDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    const/4 v1, 0x0

    .line 209
    :goto_0
    return-object v1

    .line 208
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDateForString(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "time"
    .parameter "format"

    .prologue
    .line 169
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 170
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDateForString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 159
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDateWithoutZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "date"

    .prologue
    .line 246
    move-object v0, p0

    .line 247
    .local v0, text:Ljava/lang/String;
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_0
    const-string v1, "\\.0"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_1
    return-object v0
.end method

.method public static getDay()Ljava/util/Date;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getCalendarOfCurrentMonth()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDaysBetween(Ljava/util/Date;Ljava/util/Date;)J
    .locals 6
    .parameter "startDate"
    .parameter "endDate"

    .prologue
    .line 264
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 265
    .local v0, fromCalendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 271
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 272
    .local v1, toCalendar:Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 278
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public static getDaysInCurrentMonth()I
    .locals 2

    .prologue
    .line 218
    invoke-static {}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getCalendarOfCurrentMonth()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    return v0
.end method

.method public static getFirstDayInWeek()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 49
    invoke-static {}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getCalendarOfCurrentMonth()Ljava/util/Calendar;

    move-result-object v0

    .line 50
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 51
    .local v2, weekOfMonth:I
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 52
    .local v1, dayOfMonth:I
    sub-int v3, v1, v2

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 53
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    return-object v3
.end method

.method public static getFirstLastDayInPastWeek()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM.dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 140
    .local v1, today:Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getDateWithoutZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getHoursBetween(Ljava/util/Date;Ljava/util/Date;)J
    .locals 6
    .parameter "startDate"
    .parameter "endDate"

    .prologue
    .line 282
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 283
    .local v0, fromCalendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 288
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 289
    .local v1, toCalendar:Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 294
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public static getLastDayInMonth(Ljava/util/Date;)I
    .locals 2
    .parameter "date"

    .prologue
    .line 75
    invoke-static {}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getCalendarOfCurrentMonth()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 77
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    return v1
.end method

.method public static getLastDayInWeek()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 62
    invoke-static {}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getCalendarOfCurrentMonth()Ljava/util/Calendar;

    move-result-object v0

    .line 63
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 64
    .local v2, weekOfMonth:I
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 65
    .local v1, dayOfMonth:I
    sub-int v3, v1, v2

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 66
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    return-object v3
.end method

.method public static getLong2HourMinString(J)Ljava/lang/String;
    .locals 3
    .parameter "time"

    .prologue
    .line 191
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 192
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 193
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getLong2YearMonthDayString(J)Ljava/lang/String;
    .locals 3
    .parameter "time"

    .prologue
    .line 180
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 181
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMinutesBetween(Ljava/util/Date;Ljava/util/Date;)J
    .locals 6
    .parameter "startDate"
    .parameter "endDate"

    .prologue
    .line 298
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 299
    .local v0, fromCalendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 303
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 304
    .local v1, toCalendar:Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 308
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public static getMonthAndDay(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 149
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getDateWithoutZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPastSevenDay(Ljava/util/Date;)Ljava/util/Date;
    .locals 4
    .parameter "date"

    .prologue
    const/4 v3, 0x5

    .line 108
    invoke-static {}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getCalendarOfCurrentMonth()Ljava/util/Calendar;

    move-result-object v0

    .line 109
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 110
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 111
    .local v1, dayOfMonth:I
    add-int/lit8 v2, v1, -0x5

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 112
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static getTomorrow(Ljava/util/Date;)Ljava/util/Date;
    .locals 4
    .parameter "date"

    .prologue
    const/4 v3, 0x5

    .line 95
    invoke-static {}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getCalendarOfCurrentMonth()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 97
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 98
    .local v1, dayOfMonth:I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 99
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static getWeekday(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "date"

    .prologue
    .line 229
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, monthAndDay:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 231
    .local v2, month:I
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 232
    .local v1, day:I
    invoke-static {}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getCalendarOfCurrentMonth()Ljava/util/Calendar;

    move-result-object v0

    .line 233
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 234
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 235
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "E"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 236
    .local v4, sdw:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
