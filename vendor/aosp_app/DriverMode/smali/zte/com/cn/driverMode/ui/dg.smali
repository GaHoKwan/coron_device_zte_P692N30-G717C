.class final Lzte/com/cn/driverMode/ui/dg;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/dg;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "focesIndex"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dg;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->a(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;I)V

    return-void
.end method
