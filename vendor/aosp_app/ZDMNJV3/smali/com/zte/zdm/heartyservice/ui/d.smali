.class Lcom/zte/zdm/heartyservice/ui/d;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/heartyservice/ui/d;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/d;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;->finish()V

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/d;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/heartyservice/core/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HeartyService"

    const-string v1, "checkTCardForUpdate: updat package exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/p;->a()Lcom/zte/zdm/heartyservice/ui/p;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/d;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;

    sget-object v2, Lcom/zte/zdm/heartyservice/ui/q;->b:Lcom/zte/zdm/heartyservice/ui/q;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/heartyservice/ui/p;->a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "HeartyService"

    const-string v1, "checkTCardForUpdate: updat package not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "show_network_label"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/p;->a()Lcom/zte/zdm/heartyservice/ui/p;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/heartyservice/ui/d;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;

    sget-object v3, Lcom/zte/zdm/heartyservice/ui/q;->c:Lcom/zte/zdm/heartyservice/ui/q;

    invoke-virtual {v1, v2, v3, v0}, Lcom/zte/zdm/heartyservice/ui/p;->a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;Landroid/os/Bundle;)V

    goto :goto_0
.end method
