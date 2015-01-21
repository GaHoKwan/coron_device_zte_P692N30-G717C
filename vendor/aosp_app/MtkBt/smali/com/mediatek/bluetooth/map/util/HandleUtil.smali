.class public Lcom/mediatek/bluetooth/map/util/HandleUtil;
.super Ljava/lang/Object;
.source "HandleUtil.java"


# static fields
.field public static final EMAIL_HANDLE_BASE:J = 0x0L

.field public static final MESSAGE_HANDLE_MASK:J = 0xfffffffffffffffL

.field public static final MMS_HANDLE_BASE:J = 0x4000000000000000L

.field public static final SMS_CDMA_HANDLE_BASE:J = 0x2000000000000000L

.field public static final SMS_GSM_HANDLE_BASE:J = 0x1000000000000000L

.field private static final TAG:Ljava/lang/String; = "HandleUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandle(IJ)J
    .locals 5
    .parameter "type"
    .parameter "msgId"

    .prologue
    .line 70
    const-wide v2, 0xfffffffffffffffL

    and-long v0, p1, v2

    .line 71
    .local v0, id:J
    packed-switch p0, :pswitch_data_0

    .line 81
    :pswitch_0
    const-string v2, "HandleUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    .line 73
    :pswitch_1
    const-wide/16 v2, 0x0

    or-long/2addr v2, v0

    goto :goto_0

    .line 75
    :pswitch_2
    const-wide/high16 v2, 0x4000

    or-long/2addr v2, v0

    goto :goto_0

    .line 77
    :pswitch_3
    const-wide/high16 v2, 0x2000

    or-long/2addr v2, v0

    goto :goto_0

    .line 79
    :pswitch_4
    const-wide/high16 v2, 0x1000

    or-long/2addr v2, v0

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getId(J)J
    .locals 2
    .parameter "handle"

    .prologue
    .line 86
    const-wide v0, 0xfffffffffffffffL

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static getInvalidId(I)J
    .locals 5
    .parameter "type"

    .prologue
    const-wide/16 v0, -0x1

    .line 90
    packed-switch p0, :pswitch_data_0

    .line 100
    :pswitch_0
    const-string v2, "HandleUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    :pswitch_1
    return-wide v0

    .line 94
    :pswitch_2
    const-wide v0, 0x3fffffffffffffffL

    goto :goto_0

    .line 96
    :pswitch_3
    const-wide v0, 0x1fffffffffffffffL

    goto :goto_0

    .line 98
    :pswitch_4
    const-wide v0, 0xfffffffffffffffL

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getMessageType(J)I
    .locals 4
    .parameter "handle"

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    const-wide/high16 v0, 0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 54
    const/16 v0, 0x8

    .line 66
    :goto_0
    return v0

    .line 56
    :cond_0
    const-wide/high16 v0, 0x1000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const-wide/high16 v0, 0x2000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 60
    const/4 v0, 0x2

    goto :goto_0

    .line 62
    :cond_2
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 63
    const/4 v0, 0x4

    goto :goto_0

    .line 65
    :cond_3
    const-string v0, "HandleUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the handle seems abnormal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method
