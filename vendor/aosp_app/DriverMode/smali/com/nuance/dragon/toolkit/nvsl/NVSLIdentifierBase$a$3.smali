.class final Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$3;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$3;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$3;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->c(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    move-result-object v0

    sget-object v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$3;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$3;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLError;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Lcom/nuance/dragon/toolkit/nvsl/NVSLError;)V

    goto :goto_0
.end method
