.class final Lcom/ctc/c/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ctc/c/a;

.field private final synthetic b:Lcom/ctc/c/e;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ctc/c/a;Lcom/ctc/c/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/c/c;->a:Lcom/ctc/c/a;

    iput-object p2, p0, Lcom/ctc/c/c;->b:Lcom/ctc/c/e;

    iput-object p3, p0, Lcom/ctc/c/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/ctc/c/c;->b:Lcom/ctc/c/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ctc/c/c;->b:Lcom/ctc/c/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/ctc/c/c;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/ctc/c/e;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
