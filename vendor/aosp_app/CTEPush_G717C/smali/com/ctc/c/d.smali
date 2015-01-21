.class final Lcom/ctc/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ctc/c/a;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/ctc/c/a;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/c/d;->a:Lcom/ctc/c/a;

    iput-object p2, p0, Lcom/ctc/c/d;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/ctc/c/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ctc/c/d;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ctc/c/d;->a:Lcom/ctc/c/a;

    iget-object v1, p0, Lcom/ctc/c/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/ctc/c/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ctc/c/a;->a(Lcom/ctc/c/a;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/c/d;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/c/d;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
