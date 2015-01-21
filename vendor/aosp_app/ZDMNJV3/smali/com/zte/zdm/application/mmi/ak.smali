.class Lcom/zte/zdm/application/mmi/ak;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/DownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/ak;->a:Lcom/zte/zdm/application/mmi/DownloadActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download handler msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->a(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/ak;->a:Lcom/zte/zdm/application/mmi/DownloadActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadActivity;->g()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/ak;->a:Lcom/zte/zdm/application/mmi/DownloadActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/ak;->a:Lcom/zte/zdm/application/mmi/DownloadActivity;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->finish()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/ak;->a:Lcom/zte/zdm/application/mmi/DownloadActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadActivity;->d(Lcom/zte/zdm/application/mmi/DownloadActivity;)V

    goto :goto_0

    :sswitch_4
    sput-boolean v3, Lcom/zte/zdm/application/c/a;->d:Z

    invoke-static {v2, v2}, Lcom/zte/zdm/application/mmi/DownloadActivity;->a(II)V

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadActivity;->d()V

    goto :goto_0

    :sswitch_5
    sput-boolean v3, Lcom/zte/zdm/application/c/a;->d:Z

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadActivity;->d()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x7d4 -> :sswitch_1
        0x7d5 -> :sswitch_3
        0x7d6 -> :sswitch_4
        0x7d7 -> :sswitch_5
        0x7d8 -> :sswitch_0
        0xbb8 -> :sswitch_2
    .end sparse-switch
.end method
