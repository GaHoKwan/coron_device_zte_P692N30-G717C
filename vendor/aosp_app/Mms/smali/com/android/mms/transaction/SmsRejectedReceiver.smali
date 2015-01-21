.class public Lcom/android/mms/transaction/SmsRejectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsRejectedReceiver.java"


# static fields
.field public static final SMS_REJECTED_NOTIFICATION_ID:I = 0xef


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    const-string v9, "Mms/Txn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmsRejectedReceiver: onReceive() intent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "device_provisioned"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    const-string v9, "android.provider.Telephony.SMS_REJECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 54
    const-string v9, "result"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 56
    .local v6, reason:I
    const-string v9, "Mms/Txn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sms Rejected, reason="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v9, 0x3

    if-ne v6, v9, :cond_1

    const/4 v4, 0x1

    .line 58
    .local v4, outOfMemory:Z
    :goto_0
    if-nez v4, :cond_2

    .line 119
    .end local v4           #outOfMemory:Z
    .end local v6           #reason:I
    :cond_0
    :goto_1
    return-void

    .line 57
    .restart local v6       #reason:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 63
    .restart local v4       #outOfMemory:Z
    :cond_2
    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 66
    .local v2, nm:Landroid/app/NotificationManager;
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v8, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v8, viewConvIntent:Landroid/content/Intent;
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/high16 v9, 0x3400

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 73
    const-string v9, "com.android.mms"

    const-string v10, "com.android.mms.ui.FolderViewList"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p1, v9, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 80
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 83
    .local v3, notification:Landroid/app/Notification;
    const v9, 0x7f02016b

    iput v9, v3, Landroid/app/Notification;->icon:I

    .line 86
    if-eqz v4, :cond_4

    .line 87
    const v7, 0x7f0b02f6

    .line 88
    .local v7, titleId:I
    const v0, 0x7f0b02f7

    .line 93
    .local v0, bodyId:I
    :goto_2
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 94
    const/4 v9, -0x1

    iput v9, v3, Landroid/app/Notification;->defaults:I

    .line 103
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f04006f

    invoke-direct {v1, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 105
    .local v1, contentView:Landroid/widget/RemoteViews;
    const v9, 0x7f0f008b

    const v10, 0x7f02016b

    invoke-virtual {v1, v9, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 106
    const v9, 0x7f0f007b

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 107
    const v9, 0x7f0f00a1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 108
    iput-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 109
    iput-object v5, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 111
    const/16 v9, 0xef

    invoke-virtual {v2, v9, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 114
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 115
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->cancelCTDeviceLowNotification(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 90
    .end local v0           #bodyId:I
    .end local v1           #contentView:Landroid/widget/RemoteViews;
    .end local v7           #titleId:I
    :cond_4
    const v7, 0x7f0b02f8

    .line 91
    .restart local v7       #titleId:I
    const v0, 0x7f0b02f9

    .restart local v0       #bodyId:I
    goto :goto_2
.end method
