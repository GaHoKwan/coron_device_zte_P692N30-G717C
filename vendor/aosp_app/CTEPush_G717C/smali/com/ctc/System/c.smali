.class final Lcom/ctc/System/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ctc/System/DownOrUnInstalAPPService;


# direct methods
.method constructor <init>(Lcom/ctc/System/DownOrUnInstalAPPService;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/c;->a:Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    sget-boolean v0, Lcom/ctc/c/g;->k:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ctc/System/c;->a:Lcom/ctc/System/DownOrUnInstalAPPService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
