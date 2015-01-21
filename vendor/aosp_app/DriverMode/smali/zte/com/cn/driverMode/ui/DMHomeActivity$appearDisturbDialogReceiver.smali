.class public Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMHomeActivity;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const v8, 0x7f080204

    const v7, 0x7f080203

    const v6, 0x7f080202

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zte.com.cn.drivermod.appeardisturbdialog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "DMHomeActivity"

    const-string v3, "appearDisturbDialogReceiver--setdisturbButton-false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v2, v2, Lzte/com/cn/driverMode/ui/DMHomeActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v2, v2, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    const-string v3, "need_show_disturb_hint_dialog"

    invoke-virtual {v2, v3, v1}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v3, v3, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    const v5, 0x7f0800ca

    invoke-virtual {v4, v5}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "RESULT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->b()V

    :goto_0
    return-void

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(Z)V

    goto :goto_0

    :cond_5
    const-string v0, "DMHomeActivity"

    const-string v2, "appearDisturbDialogReceiver--setdisturbButton-true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$appearDisturbDialogReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method
