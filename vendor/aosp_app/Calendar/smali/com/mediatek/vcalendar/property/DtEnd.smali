.class public Lcom/mediatek/vcalendar/property/DtEnd;
.super Lcom/mediatek/vcalendar/property/Property;
.source "DtEnd.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DtEnd"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 61
    const-string v0, "DTEND"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "DtEnd"

    const-string v1, "Constructor: DTEND property created."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getValueMillis()J
    .locals 2

    .prologue
    .line 79
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
    .locals 3
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 67
    const-string v0, "DtEnd"

    const-string v1, "toEventsContentValue started."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/property/Property;->toEventsContentValue(Landroid/content/ContentValues;)V

    .line 70
    const-string v0, "dtend"

    invoke-virtual {p0}, Lcom/mediatek/vcalendar/property/DtEnd;->getValueMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    return-void
.end method
