.class final Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;

.field final synthetic b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$InitializeListener;

.field final synthetic c:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$InitializeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;->c:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$InitializeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;->c:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;->languageIdFile:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Z)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;->c:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;->c:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->d(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;

    invoke-interface {v0, v2}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;->c:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v2, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$InitializeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;->c:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1$1;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1$1;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$1;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
