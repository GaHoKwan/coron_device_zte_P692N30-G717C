.class final Lzte/com/cn/driverMode/ui/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/cf;->a:Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.broadcase.MissedCallNoticeFinish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/cf;->a:Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cf;->a:Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->finish()V

    return-void
.end method
