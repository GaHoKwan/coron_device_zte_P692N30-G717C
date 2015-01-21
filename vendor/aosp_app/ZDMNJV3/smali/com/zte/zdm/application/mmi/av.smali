.class Lcom/zte/zdm/application/mmi/av;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/av;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/av;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    new-instance v1, Lcom/zte/zdm/application/mmi/aw;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/aw;-><init>(Lcom/zte/zdm/application/mmi/av;)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
