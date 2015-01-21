.class public Lcom/android/mms/transaction/SimFullReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimFullReceiver.java"


# instance fields
.field private mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_provisioned"

    invoke-static {v7, v8, v10}, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_1

    const-string v7, "android.provider.Telephony.SIM_FULL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 53
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 59
    .local v1, nm:Landroid/app/NotificationManager;
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v6, viewSimIntent:Landroid/content/Intent;
    const-string v7, "simId"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 63
    .local v5, slotId:I
    const-string v7, "SimFullReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "slotId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v7, "SlotId"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    const/high16 v7, 0x800

    invoke-static {p1, v10, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 77
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 78
    .local v2, notification:Landroid/app/Notification;
    const v7, 0x7f02016b

    iput v7, v2, Landroid/app/Notification;->icon:I

    .line 81
    invoke-static {p1, v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v4

    .line 82
    .local v4, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v7

    iput-wide v7, v2, Landroid/app/Notification;->simId:J

    .line 84
    iput v11, v2, Landroid/app/Notification;->simInfoType:I

    .line 89
    :cond_0
    const/16 v7, 0xf

    invoke-static {v7}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/mms/ext/IStringReplacement;

    iput-object v7, p0, Lcom/android/mms/transaction/SimFullReceiver;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    .line 91
    iget-object v7, p0, Lcom/android/mms/transaction/SimFullReceiver;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/16 v8, 0x9

    invoke-interface {v7, v8}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, ctString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/transaction/SimFullReceiver;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v7}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 95
    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 100
    :goto_0
    const/4 v7, -0x1

    iput v7, v2, Landroid/app/Notification;->defaults:I

    .line 102
    iget v7, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 104
    iget-object v7, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const v8, 0x7f0b02f5

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, p1, v7, v8, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 109
    const/16 v7, 0xea

    invoke-virtual {v1, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 111
    .end local v0           #ctString:Ljava/lang/String;
    .end local v1           #nm:Landroid/app/NotificationManager;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    .end local v4           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .end local v5           #slotId:I
    .end local v6           #viewSimIntent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 97
    .restart local v0       #ctString:Ljava/lang/String;
    .restart local v1       #nm:Landroid/app/NotificationManager;
    .restart local v2       #notification:Landroid/app/Notification;
    .restart local v3       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v4       #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .restart local v5       #slotId:I
    .restart local v6       #viewSimIntent:Landroid/content/Intent;
    :cond_2
    const v7, 0x7f0b02f4

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_0
.end method
