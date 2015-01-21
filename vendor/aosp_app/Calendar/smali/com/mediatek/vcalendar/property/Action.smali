.class public Lcom/mediatek/vcalendar/property/Action;
.super Lcom/mediatek/vcalendar/property/Property;
.source "Action.java"


# static fields
.field public static final AUDIO:Ljava/lang/String; = "AUDIO"

.field public static final DISPLAY:Ljava/lang/String; = "DISPLAY"

.field public static final EMAIL:Ljava/lang/String; = "EMAIL"

.field private static final TAG:Ljava/lang/String; = "Action"

.field public static final X_SMS:Ljava/lang/String; = "X-SMS"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 63
    const-string v0, "ACTION"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "Action"

    const-string v1, "Constructor: ACTION property created."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static getActionString(I)Ljava/lang/String;
    .locals 1
    .parameter "method"

    .prologue
    .line 83
    packed-switch p0, :pswitch_data_0

    .line 92
    const-string v0, "AUDIO"

    :goto_0
    return-object v0

    .line 85
    :pswitch_0
    const-string v0, "EMAIL"

    goto :goto_0

    .line 87
    :pswitch_1
    const-string v0, "X-SMS"

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getMethod(Ljava/lang/String;)I
    .locals 1
    .parameter "actionString"

    .prologue
    .line 97
    const-string v0, "AUDIO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 101
    :cond_0
    const-string v0, "EMAIL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x2

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "X-SMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    const/4 v0, 0x3

    goto :goto_0

    .line 109
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toAlarmsContentValue(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v0, "Action"

    const-string v1, "toAlarmsContentValue: begin"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/property/Property;->toAlarmsContentValue(Landroid/content/ContentValues;)V

    .line 71
    const-string v0, "method"

    iget-object v1, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/vcalendar/property/Action;->getMethod(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    return-void
.end method
