.class public final Lcom/mediatek/vcalendar/property/PropertyFactory;
.super Ljava/lang/Object;
.source "PropertyFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PropertyFactory"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static createProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 62
    const-string v1, "PropertyFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createProperty --- name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-nez p0, :cond_0

    .line 64
    const-string v1, "PropertyFactory"

    const-string v2, "createProperty: Cannot create a property without giving defined name"

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    .line 106
    :goto_0
    return-object v1

    .line 68
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, nameString:Ljava/lang/String;
    const-string v1, "ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    new-instance v1, Lcom/mediatek/vcalendar/property/Action;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/Action;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    const-string v1, "ATTENDEE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    new-instance v1, Lcom/mediatek/vcalendar/property/Attendee;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/Attendee;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    const-string v1, "DESCRIPTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    new-instance v1, Lcom/mediatek/vcalendar/property/Description;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/Description;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_3
    const-string v1, "DTEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    new-instance v1, Lcom/mediatek/vcalendar/property/DtEnd;

    invoke-direct {v1, v0}, Lcom/mediatek/vcalendar/property/DtEnd;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_4
    const-string v1, "DTSTAMP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    new-instance v1, Lcom/mediatek/vcalendar/property/DtStamp;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/DtStamp;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_5
    const-string v1, "DTSTART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    new-instance v1, Lcom/mediatek/vcalendar/property/DtStart;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/DtStart;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_6
    const-string v1, "DURATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 83
    new-instance v1, Lcom/mediatek/vcalendar/property/Duration;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/Duration;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_7
    const-string v1, "LOCATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 85
    new-instance v1, Lcom/mediatek/vcalendar/property/Location;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/Location;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_8
    const-string v1, "PRODID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 87
    new-instance v1, Lcom/mediatek/vcalendar/property/ProdId;

    invoke-direct {v1}, Lcom/mediatek/vcalendar/property/ProdId;-><init>()V

    goto/16 :goto_0

    .line 88
    :cond_9
    const-string v1, "RRULE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 89
    new-instance v1, Lcom/mediatek/vcalendar/property/RRule;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/RRule;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_a
    const-string v1, "STATUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 91
    new-instance v1, Lcom/mediatek/vcalendar/property/Status;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/Status;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :cond_b
    const-string v1, "SUMMARY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 93
    new-instance v1, Lcom/mediatek/vcalendar/property/Summary;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/Summary;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_c
    const-string v1, "TRIGGER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 95
    new-instance v1, Lcom/mediatek/vcalendar/property/Trigger;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/Trigger;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_d
    const-string v1, "UID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 97
    new-instance v1, Lcom/mediatek/vcalendar/property/Uid;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/Uid;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_e
    const-string v1, "VERSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 99
    new-instance v1, Lcom/mediatek/vcalendar/property/Version;

    invoke-direct {v1}, Lcom/mediatek/vcalendar/property/Version;-><init>()V

    goto/16 :goto_0

    .line 100
    :cond_f
    const-string v1, "AALARM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 101
    new-instance v1, Lcom/mediatek/vcalendar/property/AAlarm;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/AAlarm;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :cond_10
    const-string v1, "DALARM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 103
    new-instance v1, Lcom/mediatek/vcalendar/property/DAlarm;

    invoke-direct {v1, p1}, Lcom/mediatek/vcalendar/property/DAlarm;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_11
    new-instance v1, Lcom/mediatek/vcalendar/property/Property;

    invoke-direct {v1, v0, p1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
