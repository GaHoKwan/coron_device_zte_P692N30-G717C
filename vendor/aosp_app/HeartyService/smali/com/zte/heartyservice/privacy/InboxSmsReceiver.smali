.class public Lcom/zte/heartyservice/privacy/InboxSmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InboxSmsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getSmsMessageSubId(Landroid/telephony/SmsMessage;)I
    .locals 4
    .parameter "smsMessage"

    .prologue
    const/4 v2, 0x1

    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, subId:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMTKMsim()Z

    move-result v1

    if-ne v2, v1, :cond_1

    .line 28
    :try_start_0
    const-string v1, "android.telephony.SmsMessage"

    const-string v2, "getMessageSimId"

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v3}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isQualcommMsim()Z

    move-result v1

    if-ne v2, v1, :cond_0

    .line 34
    :try_start_1
    const-string v1, "android.telephony.SmsMessage"

    const-string v2, "getSubId"

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v3}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    goto :goto_0

    .line 29
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 47
    .local v13, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 53
    .local v17, smsMessage:[Landroid/telephony/SmsMessage;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getACHashSet()Ljava/util/HashSet;

    move-result-object v11

    .line 55
    .local v11, acHashSet:Ljava/util/HashSet;
    const/4 v1, 0x0

    aget-object v1, v17, v1

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, address:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    .end local v2           #address:Ljava/lang/String;
    .end local v11           #acHashSet:Ljava/util/HashSet;
    .end local v17           #smsMessage:[Landroid/telephony/SmsMessage;
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v14

    .line 49
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v2       #address:Ljava/lang/String;
    .restart local v11       #acHashSet:Ljava/util/HashSet;
    .restart local v17       #smsMessage:[Landroid/telephony/SmsMessage;
    :cond_1
    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, ac:Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsDataSpaceNotEnoughAndShowToast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 71
    .local v3, date:J
    const/4 v9, 0x0

    .line 72
    .local v9, sub_id:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMsim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    const/4 v1, 0x0

    aget-object v1, v17, v1

    invoke-static {v1}, Lcom/zte/heartyservice/privacy/InboxSmsReceiver;->getSmsMessageSubId(Landroid/telephony/SmsMessage;)I

    move-result v9

    .line 76
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v12, buf:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-object v1, v17, v1

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/16 v16, 0x1

    .local v16, n:I
    :goto_1
    move-object/from16 v0, v17

    array-length v1, v0

    move/from16 v0, v16

    if-ge v0, v1, :cond_3

    .line 79
    aget-object v1, v17, v16

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 81
    :cond_3
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v9}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertSms(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;I)Z

    .line 82
    new-instance v15, Landroid/content/Intent;

    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->INBOX_SMS_INTERCEPT:Ljava/lang/String;

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v15, intent2:Landroid/content/Intent;
    const-string v1, "ac"

    invoke-virtual {v15, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "date"

    invoke-virtual {v15, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 85
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->isEnableNotification()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    const/4 v1, 0x1

    sput-boolean v1, Lcom/zte/heartyservice/indicator/Notifier;->needSound:Z

    .line 90
    :cond_4
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->refreshPrivacyNotification()V

    .line 91
    const-string v1, "chenlu"

    const-string v5, "ACTION_REFRESH_NOTIFICATION  EXTRA_NOTIFICATION_FROM_PRIVACY Msg add 1"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/InboxSmsReceiver;->abortBroadcast()V

    goto/16 :goto_0
.end method
