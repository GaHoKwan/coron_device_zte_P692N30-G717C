.class public Lcom/android/mms/widget/MmsWidgetProxyActivity;
.super Landroid/app/Activity;
.source "MmsWidgetProxyActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsWidgetProxyActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/widget/MmsWidgetProxyActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/mms/widget/MmsWidgetProxyActivity;->startActivityInternal(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private getQueryUri(J)Landroid/net/Uri;
    .locals 2
    .parameter "threadId"

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms-sms/widget/thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getThreadInfo(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 3
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 167
    const-string v0, "MmsWidgetProxyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThreadInfo, uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/widget/MmsWidgetProxyActivity$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/mms/widget/MmsWidgetProxyActivity$2;-><init>(Lcom/android/mms/widget/MmsWidgetProxyActivity;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 195
    return-void
.end method

.method private getUnreadInfo(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 2
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 138
    const-string v0, "MmsWidgetProxyActivity"

    const-string v1, "folder mode -- has unread"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/widget/MmsWidgetProxyActivity$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/mms/widget/MmsWidgetProxyActivity$1;-><init>(Lcom/android/mms/widget/MmsWidgetProxyActivity;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method

.method private startActivityForConv(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, ic:Landroid/content/Intent;
    const-string v6, "conversation_type"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 54
    .local v3, msgType:I
    const-string v6, "thread_id"

    const-wide/16 v7, 0x0

    invoke-virtual {p2, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 55
    .local v4, threadId:J
    const-string v6, "MmsWidgetProxyActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "conversation mode -- msgType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  thread_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sparse-switch v3, :sswitch_data_0

    .line 84
    const-string v6, "MmsWidgetProxyActivity"

    const-string v7, "conversation mode -- normal message"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p1, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 88
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/mms/widget/MmsWidgetProxyActivity;->startActivityInternal(Landroid/content/Context;Landroid/content/Intent;)V

    .line 89
    :goto_1
    return-void

    .line 58
    :sswitch_0
    const-string v6, "MmsWidgetProxyActivity"

    const-string v7, "conversation mode -- CB"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p1, v4, v5}, Lcom/android/mms/ui/CBMessageListActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 60
    goto :goto_0

    .line 62
    :sswitch_1
    const-string v6, "MmsWidgetProxyActivity"

    const-string v7, "conversation mode -- push"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p1, v4, v5}, Lcom/android/mms/ui/WPMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 64
    goto :goto_0

    .line 67
    :sswitch_2
    const-string v6, "MmsWidgetProxyActivity"

    const-string v7, "conversation mode -- ipmessage guide"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Landroid/content/Intent;

    sget-object v6, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->SERVICE_CENTER:Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, it:Landroid/content/Intent;
    invoke-static {p1, v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 73
    .end local v1           #it:Landroid/content/Intent;
    :sswitch_3
    const-string v6, "MmsWidgetProxyActivity"

    const-string v7, "conversation mode -- ipmessage group"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v2, Landroid/content/Intent;

    sget-object v6, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->CHAT_DETAILS_BY_THREAD_ID:Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, it2:Landroid/content/Intent;
    const-string v6, "thread_id"

    invoke-virtual {v2, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 76
    const-string v6, "boolean"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    invoke-static {p1, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 80
    .end local v2           #it2:Landroid/content/Intent;
    :sswitch_4
    const-string v6, "MmsWidgetProxyActivity"

    const-string v7, "conversation mode -- more message"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    .end local v0           #ic:Landroid/content/Intent;
    const-class v6, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .restart local v0       #ic:Landroid/content/Intent;
    goto :goto_0

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xa -> :sswitch_2
        0x6e -> :sswitch_3
        0x258 -> :sswitch_4
    .end sparse-switch
.end method

.method private startActivityForFolder(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v7, 0x0

    .line 92
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/FolderViewList;

    invoke-direct {v1, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v1, ic:Landroid/content/Intent;
    const/4 v2, 0x1

    .line 94
    .local v2, shouldStartActivity:Z
    const/4 v0, 0x0

    .line 95
    .local v0, boxType:I
    const-string v5, "folder_type"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 126
    :pswitch_0
    const-string v5, "MmsWidgetProxyActivity"

    const-string v6, "folder mode -- CB or PUSH or default"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    const-string v5, "floderview_key"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v5, "MmsWidgetProxyActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folder mode -- boxType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-eqz v2, :cond_1

    .line 133
    invoke-direct {p0, p1, v1}, Lcom/android/mms/widget/MmsWidgetProxyActivity;->startActivityInternal(Landroid/content/Context;Landroid/content/Intent;)V

    .line 135
    :cond_1
    return-void

    .line 98
    :pswitch_1
    const-string v5, "MmsWidgetProxyActivity"

    const-string v6, "folder mode -- has unread"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v5, "thread_id"

    invoke-virtual {p2, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 100
    .local v3, threadId:J
    cmp-long v5, v3, v7

    if-lez v5, :cond_0

    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, v3, v4}, Lcom/android/mms/widget/MmsWidgetProxyActivity;->getQueryUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/mms/widget/MmsWidgetProxyActivity;->getUnreadInfo(Landroid/net/Uri;Landroid/content/Context;)V

    goto :goto_0

    .line 107
    .end local v3           #threadId:J
    :pswitch_2
    const-string v5, "MmsWidgetProxyActivity"

    const-string v6, "folder mode -- has draft message"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x2

    .line 109
    goto :goto_0

    .line 112
    :pswitch_3
    const-string v5, "MmsWidgetProxyActivity"

    const-string v6, "folder mode -- has error"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    .line 114
    goto :goto_0

    .line 117
    :pswitch_4
    const-string v5, "MmsWidgetProxyActivity"

    const-string v6, "folder mode -- normal message"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v5, "thread_id"

    invoke-virtual {p2, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 119
    .restart local v3       #threadId:J
    cmp-long v5, v3, v7

    if-lez v5, :cond_0

    .line 120
    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, v3, v4}, Lcom/android/mms/widget/MmsWidgetProxyActivity;->getQueryUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/mms/widget/MmsWidgetProxyActivity;->getThreadInfo(Landroid/net/Uri;Landroid/content/Context;)V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private startActivityForNew(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    const-string v1, "MmsWidgetProxyActivity"

    const-string v2, "compose new message"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, ic:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/android/mms/widget/MmsWidgetProxyActivity;->startActivityInternal(Landroid/content/Context;Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method private startActivityInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 202
    const-string v1, "MmsWidgetProxyActivity"

    const-string v2, "startActivityInternal is called"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const v1, 0x10008000

    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MmsWidgetProxyActivity"

    const-string v2, "Failed to start intent activity"

    invoke-static {v1, v2, v0}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string v2, "MmsWidgetProxyActivity"

    const-string v3, "onCreate is called"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 33
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    .local v0, context:Landroid/content/Context;
    const-string v2, "MmsWidgetProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "com android.mms.widget.ACTION_CONVERSATION_MODE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-direct {p0, v0, v1}, Lcom/android/mms/widget/MmsWidgetProxyActivity;->startActivityForConv(Landroid/content/Context;Landroid/content/Intent;)V

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 43
    return-void

    .line 37
    :cond_1
    const-string v2, "com android.mms.widget.ACTION_FOLDER_MODE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-direct {p0, v0, v1}, Lcom/android/mms/widget/MmsWidgetProxyActivity;->startActivityForFolder(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 39
    :cond_2
    const-string v2, "com.android.mms.widget.ACTION_COMPOSE_NEW_MESSAGE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-direct {p0, v0}, Lcom/android/mms/widget/MmsWidgetProxyActivity;->startActivityForNew(Landroid/content/Context;)V

    goto :goto_0
.end method
