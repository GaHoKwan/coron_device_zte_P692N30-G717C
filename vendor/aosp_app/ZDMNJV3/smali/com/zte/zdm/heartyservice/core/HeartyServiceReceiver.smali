.class public Lcom/zte/zdm/heartyservice/core/HeartyServiceReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final a:Ljava/lang/String; = "action.heartyservice.dm.CHECK_SERVER"

.field public static final b:Ljava/lang/String; = "action.heartyservice.dm.check.server.FEEDBACK"

.field public static final c:Ljava/lang/String; = "action.heartyservice.dm.tcard.RECOVERY_REBOOT"

.field private static final d:Ljava/lang/String; = "HeartyService"

.field private static final e:Ljava/lang/String; = "DELTA_FILE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceReceiver->startMsgActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "show_network_label"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/p;->a()Lcom/zte/zdm/heartyservice/ui/p;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/heartyservice/ui/q;->c:Lcom/zte/zdm/heartyservice/ui/q;

    invoke-virtual {v0, p1, v1}, Lcom/zte/zdm/heartyservice/ui/p;->a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeartyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "action.heartyservice.dm.check.server.FEEDBACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HeartyService"

    const-string v2, "onReceive: ACTION_CHECK_SERVER_FEEDBACK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/zte/zdm/heartyservice/core/HeartyServiceReceiver;->a(Landroid/content/Context;)V

    :cond_0
    const-string v1, "action.heartyservice.dm.CHECK_SERVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HeartyService"

    const-string v2, "onReceive: action.heartyservice.dm.CHECK_SERVER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/zdm/heartyservice/core/a;->a(Z)V

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zte/zdm/heartyservice/core/a;->b(Landroid/content/Context;)V

    :cond_1
    const-string v1, "action.heartyservice.dm.tcard.RECOVERY_REBOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HeartyService"

    const-string v1, "onReceive: action.heartyservice.dm.tcard.RECOVERY_REBOOT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DELTA_FILE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeartyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/zdm/heartyservice/core/a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
