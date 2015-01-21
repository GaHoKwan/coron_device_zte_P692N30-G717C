.class public Lcom/zte/heartyservice/privacy/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 18
    const-string v5, "info"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 19
    .local v4, sentBundle:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 20
    .local v3, number:Ljava/lang/String;
    const/4 v2, 0x0

    .line 21
    .local v2, message:Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 22
    .local v0, date:J
    if-eqz v4, :cond_0

    .line 23
    const-string v5, "number"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    const-string v5, "message"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    const-string v5, "date"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/SmsReceiver;->getResultCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 33
    const v5, 0x7f0a0352

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v8

    aput-object v2, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 36
    :goto_0
    return-void

    .line 29
    :pswitch_0
    const v5, 0x7f0a0351

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v8

    aput-object v2, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
