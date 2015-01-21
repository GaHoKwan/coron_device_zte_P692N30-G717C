.class public final Lzte/com/cn/driverMode/ui/by;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/by;->a:Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/by;->a:Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;->a(Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;)Lcom/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/e;->b()I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/by;->a:Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;

    new-instance v2, Lzte/com/cn/driverMode/ui/bz;

    invoke-direct {v2, p0, v0}, Lzte/com/cn/driverMode/ui/bz;-><init>(Lzte/com/cn/driverMode/ui/by;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
