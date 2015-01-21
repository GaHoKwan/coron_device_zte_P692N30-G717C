.class public Lcom/mediatek/vcalendar/property/AAlarm;
.super Lcom/mediatek/vcalendar/property/Property;
.source "AAlarm.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AAlarm"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 64
    const-string v0, "AALARM"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "AAlarm"

    const-string v1, "Constructor: AAlarm property created."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public toAlarmsContentValue(Ljava/util/LinkedList;J)V
    .locals 8
    .parameter
    .parameter "eventStartMillis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/ContentValues;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 81
    .local p1, cvList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/content/ContentValues;>;"
    const-string v3, "AAlarm"

    const-string v4, "toAlarmsContentValue: started."

    invoke-static {v3, v4}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-nez p1, :cond_0

    .line 83
    const-string v3, "AAlarm"

    const-string v4, "toAlarmsContentValue: the argument ContentValue must not be null."

    invoke-static {v3, v4}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v3, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    invoke-direct {v3}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>()V

    throw v3

    .line 86
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mediatek/vcalendar/TimeUtil;->getValueMillis(Lcom/mediatek/vcalendar/parameter/TzId;Ljava/lang/String;)J

    move-result-wide v3

    sub-long v1, v3, p2

    .line 89
    .local v1, millis:J
    const-string v3, "minutes"

    const-wide/16 v4, -0x1

    mul-long/2addr v4, v1

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    const-string v3, "method"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method
