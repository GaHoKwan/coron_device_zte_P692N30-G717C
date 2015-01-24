.class Lcom/powermo/SmartBar/cs;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/SmartBarService;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/SmartBarService;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/powermo/SmartBar/dc;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/SmartBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/powermo/SmartBar/dc;->o:Ljava/lang/String;

    sget-object v2, Lcom/powermo/SmartBar/dc;->I:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/powermo/SmartBar/dc;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/SmartBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/powermo/SmartBar/dc;->o:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "com.powermo.app.violation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "appName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appProcessName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/powermo/SmartBar/b;

    iget-object v3, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-direct {v2, v3, v0, v1}, Lcom/powermo/SmartBar/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const-string v2, "com.powermo.activity.violation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "appName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/powermo/SmartBar/a;

    iget-object v2, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-direct {v1, v2, v0}, Lcom/powermo/SmartBar/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_0

    const-string v2, "com.powermo.smartbar.action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cmd_show_toast"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    const v1, 0x7f050003

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/SmartBarService;->a(Lcom/powermo/SmartBar/SmartBarService;I)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "MultiWindowDeny"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    const v1, 0x7f050004

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/SmartBarService;->a(Lcom/powermo/SmartBar/SmartBarService;I)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "Customized"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cmd_show_toast_content"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "cmd_show_toast_duration"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_c

    :goto_1
    iget-object v1, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-static {v1, v2, v0}, Lcom/powermo/SmartBar/SmartBarService;->a(Lcom/powermo/SmartBar/SmartBarService;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-static {v1}, Lcom/powermo/SmartBar/SmartBarService;->a(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/SmartBar/db;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/powermo/SmartBar/db;->a(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-static {v1}, Lcom/powermo/SmartBar/SmartBarService;->b(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/SmartBar/ay;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/powermo/SmartBar/ay;->a(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-static {v1}, Lcom/powermo/SmartBar/SmartBarService;->c(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/SmartBar/bz;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/powermo/SmartBar/bz;->a(Landroid/content/Intent;)V

    const-string v1, "cmd_show_minilauncher"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v1, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-static {v1}, Lcom/powermo/SmartBar/SmartBarService;->d(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/SmartBar/bo;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/powermo/SmartBar/bo;->a(Z)V

    :cond_8
    :goto_2
    const-string v1, "cmd_exit_multiwindow"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-static {v1}, Lcom/powermo/SmartBar/SmartBarService;->e(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/b/a;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/powermo/b/a;->c(II)V

    :cond_9
    const-string v0, "cmd_reload"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-static {v0}, Lcom/powermo/SmartBar/SmartBarService;->f(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/SmartBar/SmartApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/SmartBar/SmartApplication;->e()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_a
    const-string v0, "cmd_toggle_shopm"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-static {v0}, Lcom/powermo/SmartBar/SmartBarService;->g(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/SmartBar/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/SmartBar/cm;->a()V

    goto/16 :goto_0

    :cond_b
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/powermo/SmartBar/cs;->a:Lcom/powermo/SmartBar/SmartBarService;

    invoke-static {v1}, Lcom/powermo/SmartBar/SmartBarService;->d(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/SmartBar/bo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powermo/SmartBar/bo;->a(Z)V

    goto :goto_2

    :cond_c
    move v0, v1

    goto/16 :goto_1
.end method
