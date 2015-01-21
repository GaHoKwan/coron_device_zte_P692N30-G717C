.class public final Lcom/mediatek/vcalendar/component/ComponentFactory;
.super Ljava/lang/Object;
.source "ComponentFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComponentFactory"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static createComponent(Ljava/lang/String;Lcom/mediatek/vcalendar/component/Component;)Lcom/mediatek/vcalendar/component/Component;
    .locals 4
    .parameter "componentName"
    .parameter "parentComponent"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, comp:Lcom/mediatek/vcalendar/component/Component;
    const-string v1, "ComponentFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createComponent --- name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "VEVENT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v0, Lcom/mediatek/vcalendar/component/VEvent;

    .end local v0           #comp:Lcom/mediatek/vcalendar/component/Component;
    invoke-direct {v0}, Lcom/mediatek/vcalendar/component/VEvent;-><init>()V

    .line 72
    .restart local v0       #comp:Lcom/mediatek/vcalendar/component/Component;
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const-string v1, "VALARM"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    new-instance v0, Lcom/mediatek/vcalendar/component/VAlarm;

    .end local v0           #comp:Lcom/mediatek/vcalendar/component/Component;
    invoke-direct {v0, p1}, Lcom/mediatek/vcalendar/component/VAlarm;-><init>(Lcom/mediatek/vcalendar/component/Component;)V

    .restart local v0       #comp:Lcom/mediatek/vcalendar/component/Component;
    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "VTIMEZONE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    new-instance v0, Lcom/mediatek/vcalendar/component/VTimezone;

    .end local v0           #comp:Lcom/mediatek/vcalendar/component/Component;
    invoke-direct {v0}, Lcom/mediatek/vcalendar/component/VTimezone;-><init>()V

    .restart local v0       #comp:Lcom/mediatek/vcalendar/component/Component;
    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Lcom/mediatek/vcalendar/component/Component;

    .end local v0           #comp:Lcom/mediatek/vcalendar/component/Component;
    invoke-direct {v0, p0, p1}, Lcom/mediatek/vcalendar/component/Component;-><init>(Ljava/lang/String;Lcom/mediatek/vcalendar/component/Component;)V

    .restart local v0       #comp:Lcom/mediatek/vcalendar/component/Component;
    goto :goto_0
.end method
