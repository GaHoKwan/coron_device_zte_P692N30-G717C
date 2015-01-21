.class final Lzte/com/cn/driverMode/ui/i;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMBaseActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/i;->a:Lzte/com/cn/driverMode/ui/DMBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/i;->a:Lzte/com/cn/driverMode/ui/DMBaseActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->finish()V

    return-void
.end method
