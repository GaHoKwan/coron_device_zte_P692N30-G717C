.class final Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ReleaseListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$2;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ReleaseListener;->onReleased(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier;)V

    return-void
.end method
