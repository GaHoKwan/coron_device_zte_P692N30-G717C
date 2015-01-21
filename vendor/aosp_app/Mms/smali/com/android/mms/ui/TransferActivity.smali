.class public Lcom/android/mms/ui/TransferActivity;
.super Landroid/app/Activity;
.source "TransferActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.mediatek.mms.action.openguide"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    new-instance v2, Landroid/content/Intent;

    sget-object v5, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->SERVICE_CENTER:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, it:Landroid/content/Intent;
    invoke-static {p0, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 72
    .end local v2           #it:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 73
    return-void

    .line 59
    :cond_1
    const-string v5, "com.mediatek.mms.action.opengroup"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    new-instance v2, Landroid/content/Intent;

    sget-object v5, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->CHAT_DETAILS_BY_THREAD_ID:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .restart local v2       #it:Landroid/content/Intent;
    const-string v5, "thread_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 62
    .local v3, threadId:J
    const-string v5, "thread_id"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 63
    const-string v5, "boolean"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const-string v5, "contact_id"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, contactId:I
    const-string v5, "contact_id"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-static {p0, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
