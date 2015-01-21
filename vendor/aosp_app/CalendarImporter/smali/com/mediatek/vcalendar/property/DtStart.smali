.class public Lcom/mediatek/vcalendar/property/DtStart;
.super Lcom/mediatek/vcalendar/property/Property;
.source "DtStart.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DtStart"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 64
    const-string v0, "DTSTART"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "DtStart"

    const-string v1, "Constructor: DtStart property created"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getValueMillis()J
    .locals 2

    .prologue
    .line 92
    const-string v0, "TZID"

    invoke-virtual {p0, v0}, Lcom/mediatek/vcalendar/property/Property;->getFirstParameter(Ljava/lang/String;)Lcom/mediatek/vcalendar/parameter/Parameter;

    move-result-object v0

    check-cast v0, Lcom/mediatek/vcalendar/parameter/TzId;

    iget-object v1, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/TimeUtil;->getValueMillis(Lcom/mediatek/vcalendar/parameter/TzId;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 5
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v2, "DtStart"

    const-string v3, "toEventsContentValue started."

    invoke-static {v2, v3}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/property/Property;->toEventsContentValue(Landroid/content/ContentValues;)V

    .line 73
    const-string v2, "dtstart"

    invoke-virtual {p0}, Lcom/mediatek/vcalendar/property/DtStart;->getValueMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    const-string v2, "eventTimezone"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    const-string v2, "TZID"

    invoke-virtual {p0, v2}, Lcom/mediatek/vcalendar/property/Property;->getFirstParameter(Ljava/lang/String;)Lcom/mediatek/vcalendar/parameter/Parameter;

    move-result-object v2

    check-cast v2, Lcom/mediatek/vcalendar/parameter/TzId;

    invoke-static {v2}, Lcom/mediatek/vcalendar/TimeUtil;->getLocalTimezone(Lcom/mediatek/vcalendar/parameter/TzId;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, localTimezone:Ljava/lang/String;
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 80
    .local v1, timezone:Ljava/util/TimeZone;
    const-string v2, "eventTimezone"

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "DtStart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set a timezone, timezone.getID()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";localTimezone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/vcalendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v0           #localTimezone:Ljava/lang/String;
    .end local v1           #timezone:Ljava/util/TimeZone;
    :cond_0
    return-void
.end method
