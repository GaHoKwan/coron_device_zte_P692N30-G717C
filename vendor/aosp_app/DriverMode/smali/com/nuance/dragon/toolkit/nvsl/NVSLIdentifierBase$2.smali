.class final Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ReleaseListener;

.field final synthetic b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ReleaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ReleaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->h(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->d(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;->a()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Z)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->i(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ReleaseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2$1;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
