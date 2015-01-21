.class public Lcom/mediatek/vcalendar/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimezoneUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalTimezone(Lcom/mediatek/vcalendar/parameter/TzId;)Ljava/lang/String;
    .locals 5
    .parameter "tzidParam"

    .prologue
    .line 21
    move-object v0, p0

    .line 23
    .local v0, tzId:Lcom/mediatek/vcalendar/parameter/TzId;
    if-nez v0, :cond_1

    .line 24
    sget-object v2, Lcom/mediatek/vcalendar/component/VCalendar;->sVersion:Ljava/lang/String;

    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mediatek/vcalendar/component/VCalendar;->sTz:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 26
    sget-object v2, Lcom/mediatek/vcalendar/component/VCalendar;->sTz:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/vcalendar/valuetype/DateTime;->getPossibleTimezone_v1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, tzidValue:Ljava/lang/String;
    :goto_0
    const-string v2, "TimezoneUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local time(from tzid or tz) is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-object v1

    .line 28
    .end local v1           #tzidValue:Ljava/lang/String;
    :cond_0
    const-string v1, "UTC"

    .restart local v1       #tzidValue:Ljava/lang/String;
    goto :goto_0

    .line 31
    .end local v1           #tzidValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/vcalendar/parameter/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #tzidValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getValueMillis(Lcom/mediatek/vcalendar/parameter/TzId;Ljava/lang/String;)J
    .locals 6
    .parameter "tzidParam"
    .parameter "propetyValue"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/mediatek/vcalendar/TimeUtil;->getLocalTimezone(Lcom/mediatek/vcalendar/parameter/TzId;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, localTimezone:Ljava/lang/String;
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, time:Landroid/text/format/Time;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    const-string v3, "TimezoneUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getValueMillis, time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    return-wide v3

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Landroid/util/TimeFormatException;
    const-string v3, "TimezoneUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getValueMillis, TimeFormatException, propetyValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
