.class final Lcom/ctc/System/g;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/ctc/System/KeepAliveService;


# direct methods
.method constructor <init>(Lcom/ctc/System/KeepAliveService;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/ctc/c/h;->a(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "KeepAlive-NetWorkReceiver-intent.action: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "network change and current connect is: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v0, Lcom/ctc/System/DownOrUnInstalAPPService;->c:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, v2, Lcom/ctc/System/KeepAliveService;->c:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    iget-object v0, v0, Lcom/ctc/System/KeepAliveService;->c:Landroid/app/NotificationManager;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "down_isall"

    new-array v2, v6, [Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAlldown in keepAliveReceive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v1}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v1

    const-string v2, "com.ctc.epush.DownloadException_FLAG"

    new-array v3, v6, [Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "isOpenWifiSetting"

    new-array v2, v6, [Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyConstant.IS_OPEN_WIFI_SETTING: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/ctc/c/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "com.ctc.epush.DownloadException_FLAG"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeepAliveService.isRequesting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    iget-boolean v1, v1, Lcom/ctc/System/KeepAliveService;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    iget-boolean v0, v0, Lcom/ctc/System/KeepAliveService;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "MyConstant.TriggerType"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "3"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u51c6\u5907\u8bf7\u6c42\u5fc3\u8df3\u63a5\u53e3 \u4e14current triggerType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    iget-object v2, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v2}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v2

    const-string v3, "NextAliveDate"

    invoke-virtual {v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ctc/System/KeepAliveService;->b:J

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    iget-wide v0, v0, Lcom/ctc/System/KeepAliveService;->b:J

    invoke-static {v0, v1}, Lcom/ctc/c/h;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ctc/c/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672c\u6b21\u8bf7\u6c42\u65f6\u95f4\u4e3a: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    iget-wide v1, v1, Lcom/ctc/System/KeepAliveService;->b:J

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2, v3}, Lcom/ctc/c/h;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->b(Lcom/ctc/System/KeepAliveService;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->b(Lcom/ctc/System/KeepAliveService;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/ctc/c/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->b(Lcom/ctc/System/KeepAliveService;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/ctc/c/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->b(Lcom/ctc/System/KeepAliveService;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    iget-wide v0, v0, Lcom/ctc/System/KeepAliveService;->b:J

    invoke-static {v0, v1}, Lcom/ctc/c/h;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ctc/c/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672c\u6b21\u8bf7\u6c42\u65f6\u95f4\u4e3a: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    iget-wide v1, v1, Lcom/ctc/System/KeepAliveService;->b:J

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2, v3}, Lcom/ctc/c/h;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->b(Lcom/ctc/System/KeepAliveService;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    iget-wide v0, v0, Lcom/ctc/System/KeepAliveService;->b:J

    invoke-static {v0, v1}, Lcom/ctc/c/h;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ctc/c/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672c\u6b21\u8bf7\u6c42\u65f6\u95f4\u4e3a: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    iget-wide v1, v1, Lcom/ctc/System/KeepAliveService;->b:J

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2, v3}, Lcom/ctc/c/h;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->b(Lcom/ctc/System/KeepAliveService;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    iget-wide v0, v0, Lcom/ctc/System/KeepAliveService;->b:J

    invoke-static {v0, v1}, Lcom/ctc/c/h;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672c\u6b21\u8bf7\u6c42\u65f6\u95f4\u4e3a: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    iget-wide v1, v1, Lcom/ctc/System/KeepAliveService;->b:J

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2, v3}, Lcom/ctc/c/h;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/ctc/System/g;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->b(Lcom/ctc/System/KeepAliveService;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
