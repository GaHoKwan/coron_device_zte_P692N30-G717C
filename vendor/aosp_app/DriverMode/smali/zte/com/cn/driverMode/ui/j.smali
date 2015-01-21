.class final Lzte/com/cn/driverMode/ui/j;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMBaseActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/j;->a:Lzte/com/cn/driverMode/ui/DMBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/j;->a:Lzte/com/cn/driverMode/ui/DMBaseActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
