.class final Lzte/com/cn/driverMode/ui/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/cb;->a:Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cb;->a:Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "zte.com.cn.driverMode.broadcase.MissedCallNoticeFinish"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cb;->a:Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice;->finish()V

    return-void
.end method
