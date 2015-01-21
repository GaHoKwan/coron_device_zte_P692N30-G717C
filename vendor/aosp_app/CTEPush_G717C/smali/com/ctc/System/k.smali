.class final Lcom/ctc/System/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ctc/System/i;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ctc/System/i;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/k;->a:Lcom/ctc/System/i;

    iput-object p2, p0, Lcom/ctc/System/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ctc/System/k;)Lcom/ctc/System/i;
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/k;->a:Lcom/ctc/System/i;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ctc/System/k;->a:Lcom/ctc/System/i;

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "updateAppCount"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ctc/System/k;->a:Lcom/ctc/System/i;

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->d(Lcom/ctc/System/PushAPPService;)V

    iget-object v0, p0, Lcom/ctc/System/k;->a:Lcom/ctc/System/i;

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0}, Lcom/ctc/System/PushAPPService;->stopSelf()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ctc/System/l;

    iget-object v2, p0, Lcom/ctc/System/k;->b:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/ctc/System/l;-><init>(Lcom/ctc/System/k;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
