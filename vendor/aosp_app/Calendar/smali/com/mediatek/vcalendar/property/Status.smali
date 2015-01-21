.class public Lcom/mediatek/vcalendar/property/Status;
.super Lcom/mediatek/vcalendar/property/Property;
.source "Status.java"


# static fields
.field public static final CANCELLED:Ljava/lang/String; = "CANCELLED"

.field public static final CONFIRMED:Ljava/lang/String; = "CONFIRMED"

.field private static final TAG:Ljava/lang/String; = "Status"

.field public static final TENTATIVE:Ljava/lang/String; = "TENTATIVE"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 62
    const-string v0, "STATUS"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "Status"

    const-string v1, "STATUS property created."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static getStatusString(I)Ljava/lang/String;
    .locals 1
    .parameter "status"

    .prologue
    .line 80
    packed-switch p0, :pswitch_data_0

    .line 87
    const-string v0, "TENTATIVE"

    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    const-string v0, "CONFIRMED"

    goto :goto_0

    .line 84
    :pswitch_1
    const-string v0, "CANCELLED"

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getStatusType(Ljava/lang/String;)I
    .locals 1
    .parameter "statusStr"

    .prologue
    .line 92
    const-string v0, "CONFIRMED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    .line 94
    :cond_0
    const-string v0, "CANCELLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const/4 v0, 0x2

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/property/Property;->toEventsContentValue(Landroid/content/ContentValues;)V

    .line 69
    const-string v0, "eventStatus"

    iget-object v1, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/vcalendar/property/Status;->getStatusType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    return-void
.end method
