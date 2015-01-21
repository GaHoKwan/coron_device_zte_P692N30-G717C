.class public Lcom/mediatek/vcalendar/parameter/PartStat;
.super Lcom/mediatek/vcalendar/parameter/Parameter;
.source "PartStat.java"


# static fields
.field private static final ACCEPTED:Ljava/lang/String; = "ACCEPTED"

.field private static final DECCLIEND:Ljava/lang/String; = "DECCLIEND"

.field private static final DELEGATED:Ljava/lang/String; = "DELEGATED"

.field private static final NEEDS_ACTION:Ljava/lang/String; = "NEEDS-ACTION"

.field private static final TAG:Ljava/lang/String; = "Parstat"

.field private static final TENTATIVE:Ljava/lang/String; = "TENTATIVE"

.field private static final X_INVITED:Ljava/lang/String; = "X-INVITED"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 60
    const-string v0, "PARTSTAT"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/parameter/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "Parstat"

    const-string v1, "Constructor: PARTSTAT parameter created."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private getPartstatStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "partStat"

    .prologue
    .line 91
    const-string v0, "ACCEPTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    .line 94
    :cond_0
    const-string v0, "DECCLIEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const/4 v0, 0x2

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "X-INVITED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x3

    goto :goto_0

    .line 101
    :cond_2
    const-string v0, "TENTATIVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    const/4 v0, 0x4

    goto :goto_0

    .line 105
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPartstatString(I)Ljava/lang/String;
    .locals 1
    .parameter "status"

    .prologue
    .line 73
    packed-switch p0, :pswitch_data_0

    .line 86
    const-string v0, "NEEDS-ACTION"

    :goto_0
    return-object v0

    .line 75
    :pswitch_0
    const-string v0, "NEEDS-ACTION"

    goto :goto_0

    .line 77
    :pswitch_1
    const-string v0, "ACCEPTED"

    goto :goto_0

    .line 79
    :pswitch_2
    const-string v0, "DECCLIEND"

    goto :goto_0

    .line 81
    :pswitch_3
    const-string v0, "X-INVITED"

    goto :goto_0

    .line 83
    :pswitch_4
    const-string v0, "TENTATIVE"

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public toAttendeesContentValue(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v0, "Parstat"

    const-string v1, "toAttendeesContentValue started"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/parameter/Parameter;->toAttendeesContentValue(Landroid/content/ContentValues;)V

    .line 68
    const-string v0, "attendeeStatus"

    iget-object v1, p0, Lcom/mediatek/vcalendar/parameter/Parameter;->mValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/vcalendar/parameter/PartStat;->getPartstatStatus(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    return-void
.end method
