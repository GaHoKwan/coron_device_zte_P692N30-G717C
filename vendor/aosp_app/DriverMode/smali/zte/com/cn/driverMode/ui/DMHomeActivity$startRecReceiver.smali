.class public Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMHomeActivity;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DMHomeActivity"

    const-string v1, "startRecReceiver---receive start rec......."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    const/4 v1, 0x2

    iput v1, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->F:I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHomeActivity$startRecReceiver;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->H:Z

    return-void
.end method