.class public Lcom/ctc/System/PushAPPService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/ctc/c/n;

.field private b:Lcom/ctc/System/o;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Notification;

.field private e:Landroid/app/NotificationManager;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/ctc/System/PushAPPService;->b:Lcom/ctc/System/o;

    iput-object v0, p0, Lcom/ctc/System/PushAPPService;->d:Landroid/app/Notification;

    iput-object v0, p0, Lcom/ctc/System/PushAPPService;->e:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic a(Lcom/ctc/System/PushAPPService;Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/ctc/System/h;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/ctc/System/h;-><init>(Lcom/ctc/System/PushAPPService;Ljava/util/List;Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-object v4
.end method

.method static synthetic a(Lcom/ctc/System/PushAPPService;Ljava/util/List;)Ljava/util/List;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-object v2

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    invoke-static {p0, v0}, Lcom/ctc/b/f;->a(Landroid/content/Context;Lcom/ctc/a/a;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a()V
    .locals 4

    invoke-static {p0}, Lcom/ctc/b/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/ctc/c/l;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v3, Lcom/ctc/System/i;

    invoke-direct {v3, p0}, Lcom/ctc/System/i;-><init>(Lcom/ctc/System/PushAPPService;)V

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/ctc/c/l;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLcom/ctc/c/o;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/ctc/c/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ctc/System/PushAPPService;)V
    .locals 0

    invoke-direct {p0}, Lcom/ctc/System/PushAPPService;->a()V

    return-void
.end method

.method static synthetic a(Lcom/ctc/System/PushAPPService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/PushAPPService;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ctc/System/PushAPPService;Lorg/json/JSONObject;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/ctc/c/n;

    invoke-direct {v0, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    const-string v1, "appupdateReport"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "report"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "report"

    invoke-virtual {v0, v2, v1}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MyConstant.NEED_REPORT_CLIENT_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ctc/System/ReportClientInfoService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/ctc/System/PushAPPService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v1, "MyConstant.NEED_REPORT_CLIENT_INFO"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "clientInfoReport"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "baseinfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "applist"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_2

    const-string v3, "MyConstant.Baseinfo"

    invoke-virtual {v0, v3, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_3

    const-string v2, "MyConstant.Applist"

    invoke-virtual {v0, v2, v1}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/System/ReportClientInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ctc/System/PushAPPService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    const-string v2, "MyConstant.Baseinfo"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "MyConstant.Applist"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/ctc/System/PushAPPService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/PushAPPService;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ctc/System/PushAPPService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/PushAPPService;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/PushAPPService;->a:Lcom/ctc/c/n;

    return-object v0
.end method

.method static synthetic d(Lcom/ctc/System/PushAPPService;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/System/PushArrivedReportService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ctc/System/PushAPPService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic e(Lcom/ctc/System/PushAPPService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/PushAPPService;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ctc/System/PushAPPService;)Landroid/app/Notification;
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/ctc/c/g;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/ctc/c/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ctc/c/g;->f:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/ctc/System/PushAPPService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020002

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ctc/epush/PushDialogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f060035

    invoke-virtual {p0, v2}, Lcom/ctc/System/PushAPPService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f060031

    invoke-virtual {p0, v3}, Lcom/ctc/System/PushAPPService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v1

    :cond_0
    const v0, 0x7f060036

    invoke-virtual {p0, v0}, Lcom/ctc/System/PushAPPService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/ctc/System/PushAPPService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/PushAPPService;->e:Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/ctc/System/PushAPPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ctc/System/PushAPPService;->e:Landroid/app/NotificationManager;

    new-instance v0, Lcom/ctc/c/n;

    invoke-direct {v0, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ctc/System/PushAPPService;->a:Lcom/ctc/c/n;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/ctc/System/PushAPPService;->b:Lcom/ctc/System/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctc/System/PushAPPService;->b:Lcom/ctc/System/o;

    invoke-virtual {p0, v0}, Lcom/ctc/System/PushAPPService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    sget-boolean v0, Lcom/ctc/System/DownOrUnInstalAPPService;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/ctc/c/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ctc/System/PushAPPService;->a()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/ctc/System/o;

    invoke-direct {v0, p0, v4}, Lcom/ctc/System/o;-><init>(Lcom/ctc/System/PushAPPService;B)V

    iput-object v0, p0, Lcom/ctc/System/PushAPPService;->b:Lcom/ctc/System/o;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ctc/System/PushAPPService;->b:Lcom/ctc/System/o;

    invoke-virtual {p0, v1, v0}, Lcom/ctc/System/PushAPPService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/ctc/c/n;

    invoke-direct {v1, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    const-string v0, "ISDATA_WIFI"

    new-array v2, v5, [Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v0, "ISDATA_WIFI"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "MyConstant.NEED_CLOSE_WIFI"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_3
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/ctc/System/PushAPPService;->a:Lcom/ctc/c/n;

    const-string v1, "ISDATA"

    new-array v2, v5, [Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "need open 3G: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/ctc/System/PushAPPService;->a:Lcom/ctc/c/n;

    invoke-static {p0, v0}, Lcom/ctc/c/h;->a(Landroid/content/Context;Lcom/ctc/c/n;)V

    iget-object v0, p0, Lcom/ctc/System/PushAPPService;->a:Lcom/ctc/c/n;

    const-string v1, "ISDATA"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
