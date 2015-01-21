.class public Lcom/mediatek/wappush/SlManager;
.super Lcom/mediatek/wappush/WapPushManager;
.source "SlManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/wappush/WapPushManager;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private autoLanuching(Ljava/lang/String;)Z
    .locals 9
    .parameter "url"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    if-nez p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v5

    .line 117
    :cond_1
    iget-object v7, p0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 119
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v7, "pref_key_wappush_sl_autoloading"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 122
    .local v2, isAutoLoading:Z
    if-eqz v2, :cond_0

    .line 124
    iget-object v5, p0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/mms/transaction/WapPushMessagingNotification;->notifySlAutoLanuchMessage(Landroid/content/Context;Ljava/lang/String;)Z

    .line 126
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->checkAndModifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 127
    .local v4, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.android.browser.application_id"

    iget-object v7, p0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v5, v6

    .line 138
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    iget-object v5, p0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0028

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 136
    const-string v5, "Mms/WapPush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scheme "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "is not supported!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public handleIncoming(Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;)V
    .locals 11
    .parameter "message"

    .prologue
    const/4 v10, 0x1

    .line 70
    if-nez p1, :cond_1

    .line 71
    const-string v8, "Mms/WapPush"

    const-string v9, "SlManager handleIncoming: null message"

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v3, 0x0

    .line 77
    .local v3, slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "address"

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->getSenderAddr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v8, "service_center"

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->getServiceCenterAddr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v8, "sim_id"

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->getSimId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v8, "url"

    iget-object v9, v3, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->url:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v8, "action"

    iget v9, v3, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->action:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, isAutoLanuching:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSlAutoLanuchEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v3, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->url:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/mediatek/wappush/SlManager;->autoLanuching(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 92
    const-string v8, "seen"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v8, "read"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const/4 v2, 0x1

    .line 97
    :cond_2
    iget-object v8, p0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI_SL:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 100
    .local v6, uri:Landroid/net/Uri;
    if-eqz v6, :cond_0

    .line 101
    const-string v8, "Mms/WapPush"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SlManager:Store msg! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-nez v2, :cond_0

    .line 103
    iget-object v8, p0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/android/mms/transaction/WapPushMessagingNotification;->getWapPushThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 104
    .local v4, threadId:J
    const-string v8, "Mms/WapPush"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert new SL message, threaId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v8, p0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v4, v5}, Lcom/android/mms/transaction/WapPushMessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 78
    .end local v2           #isAutoLanuching:Z
    .end local v4           #threadId:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "Mms/WapPush"

    const-string v9, "SlManager SiMessage error"

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
