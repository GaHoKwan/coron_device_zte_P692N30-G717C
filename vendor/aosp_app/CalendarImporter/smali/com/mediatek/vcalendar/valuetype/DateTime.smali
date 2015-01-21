.class public final Lcom/mediatek/vcalendar/valuetype/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# static fields
.field private static final DAY_END_INDEX:I = 0x7

.field private static final DAY_START_INDEX:I = 0x6

.field public static final DT_MIN:J = 0xdc69183800L

.field private static final HOUR_END_INDEX:I = 0x3

.field private static final HOUR_START_INDEX:I = 0x1

.field private static final MINUTE_END_INDEX:I = 0x5

.field private static final MINUTE_START_INDEX:I = 0x3

.field private static final MONTH_END_INDEX:I = 0x5

.field private static final MONTH_START_INDEX:I = 0x4

.field private static final SECOND_END_INDEX:I = 0x7

.field private static final SECOND_START_INDEX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DateTime"

.field public static final THOUSAND:I = 0x3e8

.field public static final UTC:Ljava/lang/String; = "UTC"

.field private static final YEAR_END_INDEX:I = 0x3

.field private static final YEAR_START_INDEX:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method private static getOffsetMillis(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "dtStart"
    .parameter "tzId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 169
    sget-object v4, Lcom/mediatek/vcalendar/component/VCalendar;->TIMEZONE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/vcalendar/component/VTimezone;

    .line 170
    .local v2, tz:Lcom/mediatek/vcalendar/component/VTimezone;
    const-string v4, "TZID"

    invoke-virtual {v2, v4}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v3

    .line 172
    .local v3, tzIdProperty:Lcom/mediatek/vcalendar/property/Property;
    const-string v5, "DateTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOffsetMillis : the current vtimezone: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    const-string v4, "DateTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOffsetMillis : has found the vtimezone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {v2, p0}, Lcom/mediatek/vcalendar/valuetype/DateTime;->getOffsetString(Lcom/mediatek/vcalendar/component/VTimezone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, offsetString:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/vcalendar/valuetype/DateTime;->getUtcOffsetMillis(Ljava/lang/String;)I

    move-result v4

    .line 180
    .end local v1           #offsetString:Ljava/lang/String;
    .end local v2           #tz:Lcom/mediatek/vcalendar/component/VTimezone;
    .end local v3           #tzIdProperty:Lcom/mediatek/vcalendar/property/Property;
    :goto_1
    return v4

    .line 172
    .restart local v2       #tz:Lcom/mediatek/vcalendar/component/VTimezone;
    .restart local v3       #tzIdProperty:Lcom/mediatek/vcalendar/property/Property;
    :cond_1
    const-string v4, "null"

    goto :goto_0

    .line 180
    .end local v2           #tz:Lcom/mediatek/vcalendar/component/VTimezone;
    .end local v3           #tzIdProperty:Lcom/mediatek/vcalendar/property/Property;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static getOffsetString(Lcom/mediatek/vcalendar/component/VTimezone;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "tz"
    .parameter "dtStart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 184
    if-nez p0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-object v8

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/vcalendar/component/Component;->getComponents()Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, componentList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/component/Component;>;"
    move-object v6, p1

    .line 190
    .local v6, tempDtStart:Ljava/lang/String;
    const/4 v5, 0x0

    .line 191
    .local v5, targetComponent:Lcom/mediatek/vcalendar/component/Component;
    const/4 v4, 0x0

    .line 192
    .local v4, parentComponent:Lcom/mediatek/vcalendar/component/Component;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/vcalendar/component/Component;

    .line 193
    .local v0, comp:Lcom/mediatek/vcalendar/component/Component;
    move-object v4, v0

    .line 194
    const-string v9, "DTSTART"

    invoke-virtual {v0, v9}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v7

    .line 195
    .local v7, tzStart:Lcom/mediatek/vcalendar/property/Property;
    if-nez v7, :cond_3

    .line 196
    const-string v8, "DateTime"

    const-string v9, "The given tz\'s sub-component do not contains dtstart property"

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v8, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    const-string v9, "The given tz\'s sub-component do not contains dtstart property"

    invoke-direct {v8, v9}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 201
    :cond_3
    invoke-virtual {v7}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_2

    invoke-virtual {v6, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_2

    .line 203
    invoke-virtual {v7}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 204
    move-object v5, v0

    goto :goto_1

    .line 207
    .end local v0           #comp:Lcom/mediatek/vcalendar/component/Component;
    .end local v7           #tzStart:Lcom/mediatek/vcalendar/property/Property;
    :cond_4
    const-string v9, "DateTime"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getOffsetString:dtstart="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; tempDtStart = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-nez v5, :cond_5

    .line 210
    const-string v9, "DateTime"

    const-string v10, "The given dtStart are not contained in any Daylight or Standard Component."

    invoke-static {v9, v10}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    move-object v5, v4

    .line 215
    :cond_5
    const-string v9, "TZOFFSETTO"

    invoke-virtual {v5, v9}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v3

    .line 216
    .local v3, offsetTo:Lcom/mediatek/vcalendar/property/Property;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/vcalendar/property/Property;->getValue()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static getPossibleTimezone_v1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tzOffset"

    .prologue
    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, offset:I
    invoke-static {p0}, Lcom/mediatek/vcalendar/valuetype/DateTime;->getTzOffsetMillis(Ljava/lang/String;)I

    move-result v1

    .line 258
    invoke-static {v1}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, availableTzIDs:[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v2, v0, v3

    .line 260
    .local v2, targetTzId:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 259
    .end local v2           #targetTzId:Ljava/lang/String;
    :cond_0
    const-string v2, "UTC"

    goto :goto_0
.end method

.method private static getTzOffsetMillis(Ljava/lang/String;)I
    .locals 13
    .parameter "tzOffset"

    .prologue
    const-wide/32 v11, 0xea60

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 268
    move-object v4, p0

    .line 269
    .local v4, offsetString:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_0

    move v1, v5

    .line 270
    .local v1, negative:Z
    :cond_0
    const/4 v2, 0x0

    .line 272
    .local v2, offset:I
    const-string v6, "+"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 273
    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 275
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, offsetArray:[Ljava/lang/String;
    :try_start_0
    array-length v6, v3

    if-lt v6, v5, :cond_1

    .line 278
    int-to-long v5, v2

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0x3c

    mul-long/2addr v7, v9

    mul-long/2addr v7, v11

    add-long/2addr v5, v7

    long-to-int v2, v5

    .line 281
    :cond_1
    array-length v5, v3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 282
    int-to-long v5, v2

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v7, v11

    add-long/2addr v5, v7

    long-to-int v2, v5

    .line 287
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 288
    neg-int v2, v2

    .line 290
    :cond_3
    return v2

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "DateTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException in getTzOffsetMillis(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/vcalendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUtcDateMillis(Ljava/lang/String;)J
    .locals 11
    .parameter "date"

    .prologue
    const-wide/16 v9, 0x3e8

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 144
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 145
    .local v1, year:I
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 146
    .local v7, month:I
    const/16 v2, 0x8

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 148
    .local v3, day:I
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 149
    .local v8, tz:Ljava/util/TimeZone;
    invoke-static {v8}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 150
    .local v0, gc:Ljava/util/Calendar;
    add-int/lit8 v2, v7, -0x1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 152
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    div-long/2addr v4, v9

    mul-long/2addr v4, v9

    return-wide v4
.end method

.method public static getUtcDateString(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTimemillis"

    .prologue
    .line 163
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 164
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getUtcOffsetMillis(Ljava/lang/String;)I
    .locals 14
    .parameter "utcOffsetString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    const-wide/32 v12, 0xea60

    const/4 v11, 0x3

    const/4 v3, 0x1

    const/4 v10, 0x5

    const/4 v4, 0x0

    .line 220
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v10, :cond_1

    .line 221
    :cond_0
    new-instance v3, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid UTC offset ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] - must be of the form: (+/-)HHMM[SS]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2

    move v1, v3

    .line 227
    .local v1, negative:Z
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_3

    .line 228
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "UTC offset value must be signed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1           #negative:Z
    :cond_2
    move v1, v4

    .line 225
    goto :goto_0

    .line 231
    .restart local v1       #negative:Z
    :cond_3
    const/4 v2, 0x0

    .line 232
    .local v2, offset:I
    int-to-long v4, v2

    invoke-virtual {p0, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    mul-long/2addr v6, v12

    add-long v3, v4, v6

    long-to-int v2, v3

    .line 234
    int-to-long v3, v2

    invoke-virtual {p0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v5, v12

    add-long/2addr v3, v5

    long-to-int v2, v3

    .line 237
    int-to-long v3, v2

    const/4 v5, 0x5

    const/4 v6, 0x7

    :try_start_0
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int v2, v3

    .line 243
    :goto_1
    if-eqz v1, :cond_4

    .line 244
    neg-int v2, v2

    .line 246
    :cond_4
    return v2

    .line 239
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "DateTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Seconds not specified: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getUtcTimeMillis(Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .parameter "dateTimeString"
    .parameter "tzId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 92
    const-string v5, "DateTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUtcTimeMillis: dateTimeString="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";tzId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, offset:I
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 95
    invoke-static {p0, p1}, Lcom/mediatek/vcalendar/valuetype/DateTime;->getOffsetMillis(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 97
    :cond_0
    const-string v5, "DateTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUtcTimeMillis: offset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 100
    .local v4, time:Landroid/text/format/Time;
    invoke-static {v1}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, standardTzIds:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 102
    .local v3, targetTzid:Ljava/lang/String;
    array-length v5, v2

    if-lez v5, :cond_1

    aget-object v3, v2, v8

    .line 103
    :goto_0
    const-string v5, "DateTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUtcTimeMillis: TZID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 107
    :try_start_0
    invoke-virtual {v4, p0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_1
    invoke-virtual {v4, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    return-wide v5

    .line 102
    :cond_1
    const-string v3, "UTC"

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Landroid/util/TimeFormatException;
    const-string v5, "DateTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TimeFormatException Happened, invalid date string="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/vcalendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getUtcTimeString(J)Ljava/lang/String;
    .locals 9
    .parameter "dateTimeMillis"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 124
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 125
    .local v1, tz:Ljava/util/TimeZone;
    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 126
    .local v0, gc:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%04d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%02d"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%02dT"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%02d"

    new-array v5, v7, [Ljava/lang/Object;

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%02d"

    new-array v5, v7, [Ljava/lang/Object;

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%02dZ"

    new-array v5, v7, [Ljava/lang/Object;

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
