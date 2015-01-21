.class public Lcom/mediatek/vcalendar/property/Duration;
.super Lcom/mediatek/vcalendar/property/Property;
.source "Duration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Duration"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 56
    const-string v0, "DURATION"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "Duration"

    const-string v1, "Constructor: DURATION property created."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getValueMillis()J
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/vcalendar/valuetype/DDuration;->getDurationMillis(Ljava/lang/String;)J

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
    .line 62
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/property/Property;->toEventsContentValue(Landroid/content/ContentValues;)V

    .line 63
    const-string v0, "Duration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toEventsContentValue, duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "duration"

    iget-object v1, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
