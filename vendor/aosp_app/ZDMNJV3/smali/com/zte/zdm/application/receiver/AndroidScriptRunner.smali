.class public Lcom/zte/zdm/application/receiver/AndroidScriptRunner;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final a:Ljava/lang/String; = "com.zte.zdm.SCRIPT_RUNNER"

.field private static final b:Ljava/lang/String; = "AndroidScriptRunner"

.field private static final c:Ljava/lang/String; = "sessionType"

.field private static final d:Ljava/lang/String; = "fumoSession"

.field private static final e:Ljava/lang/String; = "ciFumoSession"

.field private static final f:Ljava/lang/String; = "niaSession"


# instance fields
.field private g:Lcom/zte/zdm/application/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/zte/zdm/g/a;->c(Ljava/lang/Object;)V

    const-string v0, "AndroidScriptRunner"

    const-string v1, "run scipt file..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/receiver/AndroidScriptRunner;->g:Lcom/zte/zdm/application/a;

    const-string v0, "fumoSession"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/AndroidScriptRunner;->g:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->b()Lcom/zte/zdm/application/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/c;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "niaSession"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/AndroidScriptRunner;->g:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->b()Lcom/zte/zdm/application/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/c;->a()V

    goto :goto_0

    :cond_1
    const-string v0, "ciFumoSession"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/AndroidScriptRunner;->g:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->b()Lcom/zte/zdm/application/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/c;->b()V

    goto :goto_0

    :cond_2
    const-string v0, "AndroidScriptRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown session type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.zte.zdm.SCRIPT_RUNNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sessionType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/receiver/AndroidScriptRunner;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
