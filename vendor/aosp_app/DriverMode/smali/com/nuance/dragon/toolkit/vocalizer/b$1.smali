.class final Lcom/nuance/dragon/toolkit/vocalizer/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ReleaseListener;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocalizer/b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/b;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ReleaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$1;->b:Lcom/nuance/dragon/toolkit/vocalizer/b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ReleaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$1;->b:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->a(Lcom/nuance/dragon/toolkit/vocalizer/b;)Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;->a()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ReleaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$1;->b:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->b(Lcom/nuance/dragon/toolkit/vocalizer/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocalizer/b$1$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/vocalizer/b$1$1;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/b$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
