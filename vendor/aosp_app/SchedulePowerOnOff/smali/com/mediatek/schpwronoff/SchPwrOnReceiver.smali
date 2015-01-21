.class public Lcom/mediatek/schpwronoff/SchPwrOnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SchPwrOnReceiver.java"


# static fields
.field private static final STALE_WINDOW:I = 0x708

.field private static final TAG:Ljava/lang/String; = "SchPwrOnReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 62
    const/4 v0, 0x0

    .line 67
    .local v0, alarm:Lcom/mediatek/schpwronoff/Alarm;
    const-string v7, "intent.extra.alarm_raw"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 68
    .local v1, data:[B
    if-eqz v1, :cond_0

    .line 69
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 70
    .local v3, in:Landroid/os/Parcel;
    array-length v7, v1

    invoke-virtual {v3, v1, v12, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 71
    invoke-virtual {v3, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    sget-object v7, Lcom/mediatek/schpwronoff/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #alarm:Lcom/mediatek/schpwronoff/Alarm;
    check-cast v0, Lcom/mediatek/schpwronoff/Alarm;

    .line 75
    .end local v3           #in:Landroid/os/Parcel;
    .restart local v0       #alarm:Lcom/mediatek/schpwronoff/Alarm;
    :cond_0
    if-nez v0, :cond_2

    .line 76
    const-string v7, "SchPwrOnReceiver"

    const-string v8, "SchPwrOnReceiver failed to parse the alarm from the intent"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    const/16 v6, 0x3e8

    .line 82
    .local v6, stateWindowTimeoff:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 83
    .local v4, now:J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "HH:mm:ss.SSS aaa"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 84
    .local v2, format:Ljava/text/SimpleDateFormat;
    const-string v7, "SchPwrOnReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SchPwrOnReceiver.onReceive() id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " setFor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    iget-wide v10, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-wide v7, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    const-wide/32 v9, 0x1b7740

    add-long/2addr v7, v9

    cmp-long v7, v4, v7

    if-lez v7, :cond_3

    .line 88
    const-string v7, "SchPwrOnReceiver"

    const-string v8, "SchPwrOnReceiver ignoring stale alarm"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_3
    const-string v7, "SchPwrOnReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SchPwrOnReceiver.onReceive() id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time out "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget v7, v0, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 103
    iget-object v7, v0, Lcom/mediatek/schpwronoff/Alarm;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v7}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 106
    const-string v7, "SchPwrOnReceiver"

    const-string v8, "SchPwrOnReceiver.onReceive(): isRepeatSet()"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p1}, Lcom/mediatek/schpwronoff/Alarms;->setNextAlertPowerOn(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 109
    :cond_4
    const-string v7, "SchPwrOnReceiver"

    const-string v8, "SchPwrOnReceiver.onReceive(): not isRepeatSet()"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget v7, v0, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    invoke-static {p1, v7, v12}, Lcom/mediatek/schpwronoff/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .line 112
    :cond_5
    iget v7, v0, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 113
    const-string v7, "SchPwrOnReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SchPwrOnReceiver.onReceive() id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " get power off time out "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
