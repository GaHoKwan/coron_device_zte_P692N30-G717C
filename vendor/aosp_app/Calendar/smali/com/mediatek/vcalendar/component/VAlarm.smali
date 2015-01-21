.class public Lcom/mediatek/vcalendar/component/VAlarm;
.super Lcom/mediatek/vcalendar/component/Component;
.source "VAlarm.java"


# static fields
.field public static final REMINDER:Ljava/lang/String; = "Reminder"

.field private static final TAG:Ljava/lang/String; = "VAlarm"


# direct methods
.method public constructor <init>(Lcom/mediatek/vcalendar/component/Component;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 60
    const-string v0, "VALARM"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/component/Component;-><init>(Ljava/lang/String;Lcom/mediatek/vcalendar/component/Component;)V

    .line 61
    const-string v0, "VAlarm"

    const-string v1, "Constructor: VALARM Component created."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public parseCursorInfo(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/component/Component;->parseCursorInfo(Landroid/database/Cursor;)V

    .line 91
    const-string v2, "method"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 92
    .local v0, intValue:I
    invoke-static {v0}, Lcom/mediatek/vcalendar/property/Action;->getActionString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, valueString:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 94
    new-instance v2, Lcom/mediatek/vcalendar/property/Action;

    invoke-direct {v2, v1}, Lcom/mediatek/vcalendar/property/Action;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 97
    :cond_0
    const-string v2, "minutes"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    mul-int/lit8 v0, v2, -0x1

    .line 98
    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/mediatek/vcalendar/valuetype/DDuration;->getDurationString(J)Ljava/lang/String;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_1

    .line 100
    new-instance v2, Lcom/mediatek/vcalendar/property/Trigger;

    invoke-direct {v2, v1}, Lcom/mediatek/vcalendar/property/Trigger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 104
    :cond_1
    new-instance v2, Lcom/mediatek/vcalendar/property/Description;

    const-string v3, "Reminder"

    invoke-direct {v2, v3}, Lcom/mediatek/vcalendar/property/Description;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/mediatek/vcalendar/component/Component;->addProperty(Lcom/mediatek/vcalendar/property/Property;)V

    .line 105
    return-void
.end method

.method public toAlarmsContentValue(Ljava/util/LinkedList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 66
    .local p1, cvList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/content/ContentValues;>;"
    const-string v4, "VAlarm"

    const-string v5, "toAlarmsContentValue: started."

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/component/Component;->toAlarmsContentValue(Ljava/util/LinkedList;)V

    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/mediatek/vcalendar/component/Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/vcalendar/component/Component;->getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;

    move-result-object v3

    .line 72
    .local v3, property:Lcom/mediatek/vcalendar/property/Property;
    invoke-virtual {v3, v0}, Lcom/mediatek/vcalendar/property/Property;->toAlarmsContentValue(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 75
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #property:Lcom/mediatek/vcalendar/property/Property;
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v0, "VAlarm"

    const-string v1, "toEventsContentValue: started."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/component/Component;->toEventsContentValue(Landroid/content/ContentValues;)V

    .line 82
    const-string v0, "hasAlarm"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const-string v0, "hasAlarm"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    :cond_0
    return-void
.end method
