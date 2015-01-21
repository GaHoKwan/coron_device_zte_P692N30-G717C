.class final Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLResultListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIdentificationResult(Lcom/nuance/dragon/toolkit/nvsl/ResultJni;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nuance/dragon/toolkit/nvsl/ResultJni;->createNVSLResult(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2$1;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2$1;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
