.class public Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final b:Ljava/lang/String; = "android.intent.action.ZDM_SETTING"

.field private static final c:Ljava/lang/String; = "android.intent.action.GET_ZDM_SETTING"

.field private static final d:Ljava/lang/String; = "android.intent.action.ZDM_SETTING_INFO"

.field private static final e:Ljava/lang/String; = "KEY"

.field private static final f:Ljava/lang/String; = "VALUE"

.field private static final g:Ljava/lang/String; = "android.intent.action.START_DM_SERVER1"

.field private static final h:Ljava/lang/String; = "android.intent.action.START_DM_SERVER2"

.field private static final i:Ljava/lang/String; = "android.intent.action.START_DM_ZTE_SERVER1"

.field private static final j:Ljava/lang/String; = "android.intent.action.START_DM_ZTE_SERVER2"

.field private static final k:Ljava/lang/String; = "http://dmtest.ztems.com/zxmdmp/dm"

.field private static final l:Ljava/lang/String; = "http://dms.ztems.com:80/zxmdmp/dm"

.field private static final m:Ljava/lang/String; = "http://218.206.176.97:7001"

.field private static final n:Ljava/lang/String; = "http://dm.monternet.com:7001"

.field private static final o:Ljava/lang/String; = "10654040:4266"

.field private static final p:Ljava/lang/String; = "1065840409:4266"

.field private static final q:Ljava/lang/String; = "10655459:6838"

.field private static final r:Ljava/lang/String; = "10655464:6838"


# instance fields
.field a:Lcom/zte/zdm/application/a/a;

.field private final s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "self_regist_address"

    iput-object v0, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->s:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a:Lcom/zte/zdm/application/a/a;

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.zte.zdm/files/selfRegistryRecordFile"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a:Lcom/zte/zdm/application/a/a;

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.START_DM_SERVER2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.START_DM_ZTE_SERVER2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const-string v1, "change the server address to test server."

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a:Lcom/zte/zdm/application/a/a;

    const-string v2, "server_addr"

    const-string v3, "http://dmtest.ztems.com/zxmdmp/dm"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "change the server address to chinamobile test server."

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CMCC"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a:Lcom/zte/zdm/application/a/a;

    const-string v2, "cmcc_server_addr"

    const-string v3, "http://218.206.176.97:7001"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a:Lcom/zte/zdm/application/a/a;

    const-string v2, "self_regist_address"

    const-string v3, "1065840409:4266"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "now the server address is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a:Lcom/zte/zdm/application/a/a;

    const-string v3, "server_addr"

    const-string v4, "null"

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ZDM_SETTING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VALUE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a:Lcom/zte/zdm/application/a/a;

    invoke-virtual {v2, v0, v1}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CU"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a:Lcom/zte/zdm/application/a/a;

    const-string v2, "cmcc_server_addr"

    const-string v3, "10655464:6838"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "android.intent.action.START_DM_SERVER1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.START_DM_ZTE_SERVER1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_5
    const-string v1, "change the server address to commercial server."

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a:Lcom/zte/zdm/application/a/a;

    const-string v2, "server_addr"

    const-string v3, "http://dms.ztems.com:80/zxmdmp/dm"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CMCC"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a:Lcom/zte/zdm/application/a/a;

    const-string v2, "cmcc_server_addr"

    const-string v3, "http://dm.monternet.com:7001"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a:Lcom/zte/zdm/application/a/a;

    const-string v2, "self_regist_address"

    const-string v3, "10654040:4266"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CU"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/zte/zdm/application/b;->c([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a:Lcom/zte/zdm/application/a/a;

    const-string v2, "cmcc_server_addr"

    const-string v3, "10655459:6838"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "android.intent.action.GET_ZDM_SETTING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "KEY"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/zte/zdm/application/receiver/ChangeConnectionReceiver;->a:Lcom/zte/zdm/application/a/a;

    invoke-virtual {v2, v1, v0}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ZDM_SETTING_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "KEY"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "VALUE"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
