.class public Lcom/mediatek/vcalendar/property/Trigger;
.super Lcom/mediatek/vcalendar/property/Property;
.source "Trigger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Trigger"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 56
    const-string v0, "TRIGGER"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "Trigger"

    const-string v1, "Constructor: TRIGGER property created"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public toAlarmsContentValue(Landroid/content/ContentValues;)V
    .locals 5
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 62
    const-string v0, "Trigger"

    const-string v1, "toAlarmsContentValue started"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/property/Property;->toAlarmsContentValue(Landroid/content/ContentValues;)V

    .line 64
    const-string v0, "minutes"

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/vcalendar/valuetype/DDuration;->getDurationMillis(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    return-void
.end method
