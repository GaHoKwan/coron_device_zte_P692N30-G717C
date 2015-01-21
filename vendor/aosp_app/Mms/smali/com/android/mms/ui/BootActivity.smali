.class public Lcom/android/mms/ui/BootActivity;
.super Landroid/app/Activity;
.source "BootActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private enterMms()V
    .locals 4

    .prologue
    .line 83
    const-string v2, "BootActivity"

    const-string v3, "bootActivity enter MMS"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 87
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v0

    .line 88
    .local v0, dirMode:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getFolderModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/FolderViewList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "floderview_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    :goto_0
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void

    .line 92
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v6, "BootActivity"

    const-string v7, "bootActivity: onCreate"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v9}, Lcom/android/mms/MmsConfig;->setSimCardInfo(I)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 63
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "com.mediatek.mms.ipmessage.group_notification_clicked"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    const-string v6, "thread_id"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 65
    .local v4, threadId:J
    const-string v6, "boolean"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 67
    .local v2, isImportant:Z
    new-instance v3, Landroid/content/Intent;

    sget-object v6, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->CHAT_DETAILS_BY_THREAD_ID:Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v3, it:Landroid/content/Intent;
    const-string v6, "thread_id"

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 69
    const-string v6, "boolean"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    const-string v6, "need_new_task"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    invoke-static {p0, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 73
    const/4 v6, 0x1

    invoke-static {p0, v4, v5, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 74
    .local v0, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsSeen()V

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 80
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .end local v2           #isImportant:Z
    .end local v3           #it:Landroid/content/Intent;
    .end local v4           #threadId:J
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/BootActivity;->enterMms()V

    goto :goto_0
.end method
