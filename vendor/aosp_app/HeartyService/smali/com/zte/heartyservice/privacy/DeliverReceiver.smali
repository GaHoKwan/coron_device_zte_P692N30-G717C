.class public Lcom/zte/heartyservice/privacy/DeliverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeliverReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f0a0353

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 16
    const-string v5, "info"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 17
    .local v2, deliverBundle:Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 18
    .local v4, number:Ljava/lang/String;
    const/4 v3, 0x0

    .line 19
    .local v3, message:Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 20
    .local v0, date:J
    if-eqz v2, :cond_0

    .line 21
    const-string v5, "number"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    const-string v5, "message"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    const-string v5, "date"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DeliverReceiver;->getResultCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 31
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v7

    invoke-virtual {p1, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 34
    :goto_0
    return-void

    .line 27
    :pswitch_0
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v7

    invoke-virtual {p1, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
