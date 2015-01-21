.class final Lcom/ctc/System/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ctc/c/o;


# instance fields
.field final synthetic a:Lcom/ctc/System/KeepAliveService;


# direct methods
.method constructor <init>(Lcom/ctc/System/KeepAliveService;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    iput-boolean v1, v0, Lcom/ctc/System/KeepAliveService;->a:Z

    if-eqz p1, :cond_6

    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "nextTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "update"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "task"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "triggerType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "triggerTime"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v4}, Lcom/ctc/c/h;->b(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/ctc/System/KeepAliveService;->b:J

    iget-object v0, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v5, "NextAliveDate"

    iget-object v6, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    iget-wide v6, v6, Lcom/ctc/System/KeepAliveService;->b:J

    invoke-virtual {v0, v5, v6, v7}, Lcom/ctc/c/n;->a(Ljava/lang/String;J)V

    const-string v0, "smgp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ctc/c/g;->h:Ljava/lang/String;

    const-string v0, "isPushApp"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "0"

    const-string v1, "clientInfoReport"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "baseinfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "applist"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v2, "1"

    :cond_1
    if-eqz v1, :cond_2

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v1, "1"

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Baseinfo in keepAlive: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Applist in keepAlive: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v6, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v6}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v6

    const-string v7, "MyConstant.TriggerType"

    invoke-virtual {v6, v7, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v6}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v6

    const-string v7, "MyConstant.TriggerTime"

    invoke-virtual {v6, v7, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v4}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v4

    const-string v6, "SMGP"

    sget-object v7, Lcom/ctc/c/g;->h:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v4}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v4

    const-string v6, "MyConstant.IsPushApp"

    invoke-virtual {v4, v6, v5}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v4}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v4

    const-string v6, "MyConstant.IsReportClientInfo"

    invoke-virtual {v4, v6, v0}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v4}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v4

    const-string v6, "MyConstant.Baseinfo"

    invoke-virtual {v4, v6, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v4}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v4

    const-string v6, "MyConstant.Applist"

    invoke-virtual {v4, v6, v1}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v4}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v4

    const-string v6, "MyConstant.TriggerTime"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "0"

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {}, Lcom/ctc/System/KeepAliveService;->a()V

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v0, "1"

    iget-object v1, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v1}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v1

    const-string v2, "MyConstant.IsReportClientInfo"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v1, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    const-class v2, Lcom/ctc/System/PushAPPService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v1}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v1

    const-string v2, "PushAPPService_TriggerType"

    const-string v3, "KeepAlive"

    invoke-virtual {v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-virtual {v1, v0}, Lcom/ctc/System/KeepAliveService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "MyConstant.NEED_REPORT_CLIENT_INFO"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    const-string v1, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    const-class v2, Lcom/ctc/System/PushAPPService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v1}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v1

    const-string v2, "PushAPPService_TriggerType"

    const-string v3, "KeepAlive"

    invoke-virtual {v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-virtual {v1, v0}, Lcom/ctc/System/KeepAliveService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "MyConstant.NEED_REPORT_CLIENT_INFO"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5fc3\u8df3\u63a5\u53e3\u8fd4\u56deException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_8
    :try_start_1
    const-string v1, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    const-class v2, Lcom/ctc/System/ReportClientInfoService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-virtual {v1, v0}, Lcom/ctc/System/KeepAliveService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "MyConstant.NEED_REPORT_CLIENT_INFO"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/ctc/System/f;->a:Lcom/ctc/System/KeepAliveService;

    invoke-static {v0}, Lcom/ctc/System/KeepAliveService;->a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "MyConstant.NEED_REPORT_CLIENT_INFO"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
