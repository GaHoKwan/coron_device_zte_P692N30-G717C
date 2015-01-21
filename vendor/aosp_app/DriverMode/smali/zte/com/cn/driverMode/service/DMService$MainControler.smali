.class public Lzte/com/cn/driverMode/service/DMService$MainControler;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "DMService"

    const-string v1, "MainControler Broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "DMService"

    const-string v1, "MainControler: error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v0, "UI"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    const-string v2, "WaitTts"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lzte/com/cn/driverMode/service/DMService;->aR:Z

    new-instance v1, Lzte/com/cn/driverMode/service/cd;

    invoke-direct {v1}, Lzte/com/cn/driverMode/service/cd;-><init>()V

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/cd;->a(I)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->m:Lzte/com/cn/driverMode/service/bv;

    const/16 v3, 0x1020

    invoke-virtual {v2, v3}, Lzte/com/cn/driverMode/service/bv;->removeMessages(I)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iput-boolean v4, v2, Lzte/com/cn/driverMode/service/DMService;->r:Z

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    :cond_2
    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->q:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->p:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/ca;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v2, v5}, Lzte/com/cn/driverMode/service/ca;->a(Z)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/ca;->d()V

    :cond_3
    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/l;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/l;->g()Z

    :cond_4
    const/16 v2, 0xf

    if-eq v0, v2, :cond_5

    const/16 v2, 0x10

    if-ne v0, v2, :cond_7

    :cond_5
    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->q:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->p:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/ca;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v2, v5}, Lzte/com/cn/driverMode/service/ca;->a(Z)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/ca;->d()V

    :cond_6
    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/l;->f()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/l;->h()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/l;->c()Z

    :cond_7
    sparse-switch v0, :sswitch_data_0

    :goto_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->a(Lzte/com/cn/driverMode/service/DMService;Lzte/com/cn/driverMode/service/cd;)V

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "phonenumber"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/cd;->b(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    const-string v0, "DMService"

    const-string v1, "CALL_NUMBER_LIST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/l;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/l;->b()Z

    :cond_8
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ca;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v0, v5}, Lzte/com/cn/driverMode/service/ca;->a(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ca;->d()V

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    const-string v2, "name_index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/service/DMService;->a(Lzte/com/cn/driverMode/service/DMService;I)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->g()V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "navName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/cd;->c(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$MainControler;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->a(Lzte/com/cn/driverMode/service/DMService;Lzte/com/cn/driverMode/service/cd;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method
