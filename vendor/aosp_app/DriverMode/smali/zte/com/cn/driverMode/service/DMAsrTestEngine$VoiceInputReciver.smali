.class public Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMAsrTestEngine;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMAsrTestEngine;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;->a:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v3, 0x0

    const-string v0, "asrresult"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/cl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/cl;->a()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;->a:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const-string v0, "DMAsrTestEngine"

    const-string v1, "ERRORS!!  application resultList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;->a:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->d:Lzte/com/cn/driverMode/service/DMApplication;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;->a:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v2, v3

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/bb;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bb;->a()I

    move-result v5

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/bb;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bb;->b()Ljava/util/List;

    move-result-object v0

    new-instance v6, Lzte/com/cn/driverMode/service/bb;

    invoke-direct {v6, v5, v0}, Lzte/com/cn/driverMode/service/bb;-><init>(ILjava/util/List;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "DMAsrTestEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "conf:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;->a:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->h:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;->a:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->g:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1009

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;->a:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->g:Lzte/com/cn/driverMode/service/bv;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;->a:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->g:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1003

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMAsrTestEngine$VoiceInputReciver;->a:Lzte/com/cn/driverMode/service/DMAsrTestEngine;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMAsrTestEngine;->g:Lzte/com/cn/driverMode/service/bv;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
