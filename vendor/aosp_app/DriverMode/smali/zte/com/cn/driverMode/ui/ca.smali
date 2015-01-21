.class final Lzte/com/cn/driverMode/ui/ca;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ca;->a:Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ca;->a:Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice;->finish()V

    return-void
.end method
