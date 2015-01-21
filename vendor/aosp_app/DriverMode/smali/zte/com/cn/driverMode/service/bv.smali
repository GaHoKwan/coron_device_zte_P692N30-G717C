.class public final Lzte/com/cn/driverMode/service/bv;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/service/DMService;->b(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_0
    const-string v0, "DMService"

    const-string v1, "asr init ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/DMService;->r:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/l;->a()Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/l;->d()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    const/4 v1, 0x0

    iput-object v1, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/DMApplication;->w:Z

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.loadGrammarOk"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMService;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->c()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/service/DMService;->a(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->h()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->f(Lzte/com/cn/driverMode/service/DMService;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    const-string v2, "MUSIC_BARGIN_RESULT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/service/DMService;->b(Lzte/com/cn/driverMode/service/DMService;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_7
    const-string v0, "DMService"

    const-string v1, "DMEvent.EVENT_START_MUSICBARGIN ......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->g(Lzte/com/cn/driverMode/service/DMService;)V

    goto :goto_0

    :sswitch_8
    const-string v0, "DMService"

    const-string v1, "DMEvent.EVENT_ASR_MUSICBARGIN_RESULT_ERROR ......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->g(Lzte/com/cn/driverMode/service/DMService;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    const-string v2, "WAKEUP_RESULT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/service/DMService;->c(Lzte/com/cn/driverMode/service/DMService;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->d()V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "call_receive_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    const v2, 0x7f0801a7

    invoke-virtual {v1, v2}, Lzte/com/cn/driverMode/service/DMService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lzte/com/cn/driverMode/service/l;->a(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bv;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMService;->e:Landroid/content/Context;

    const v2, 0x7f0802e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_5
        0x1004 -> :sswitch_3
        0x1007 -> :sswitch_2
        0x1011 -> :sswitch_4
        0x1016 -> :sswitch_9
        0x1017 -> :sswitch_6
        0x1018 -> :sswitch_8
        0x3008 -> :sswitch_a
        0x6001 -> :sswitch_b
        0x6002 -> :sswitch_7
        0x6003 -> :sswitch_c
    .end sparse-switch
.end method
