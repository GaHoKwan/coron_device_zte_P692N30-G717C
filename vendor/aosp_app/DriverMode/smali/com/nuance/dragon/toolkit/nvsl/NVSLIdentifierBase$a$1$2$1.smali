.class final Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;

.field final synthetic b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2$1;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2$1;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2$1;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLError;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Lcom/nuance/dragon/toolkit/nvsl/NVSLError;)V

    goto :goto_0
.end method
