.class public Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMHomeActivity;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "DMHomeActivity"

    const-string v1, "wakedUpReceiver@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->H:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->j:Landroid/widget/ImageView;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iput v3, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->F:I

    const-string v0, "DMHomeActivity"

    const-string v1, "wakeup--setmusicButtonTrue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const-string v0, "DMHomeActivity"

    const-string v1, "wakeup--setdisturbButton-True"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$wakedUpReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
