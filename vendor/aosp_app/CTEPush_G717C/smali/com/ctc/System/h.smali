.class final Lcom/ctc/System/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ctc/System/PushAPPService;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Ljava/util/List;

.field private final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/ctc/System/PushAPPService;Ljava/util/List;Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/h;->a:Lcom/ctc/System/PushAPPService;

    iput-object p2, p0, Lcom/ctc/System/h;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/ctc/System/h;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/ctc/System/h;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/ctc/System/h;->e:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ctc/System/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkLocalAppList2ToDown and  pushAppList.size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    iget-object v0, p0, Lcom/ctc/System/h;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ctc/System/h;->d:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/System/h;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ctc/System/h;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    iget-object v4, p0, Lcom/ctc/System/h;->c:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/ctc/b/f;->b(Landroid/content/Context;Lcom/ctc/a/a;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ctc/System/h;->d:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
