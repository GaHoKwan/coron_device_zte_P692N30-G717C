.class Lcom/zte/zdm/application/mmi/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Timer;

.field final synthetic b:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/ax;->b:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/ax;->a:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/ax;->b:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->e(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/ax;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
