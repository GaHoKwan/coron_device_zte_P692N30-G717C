.class Lcom/zte/zdm/application/mmi/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/ao;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x8c

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/ao;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->a(Ljava/lang/Object;)V

    return-void
.end method
