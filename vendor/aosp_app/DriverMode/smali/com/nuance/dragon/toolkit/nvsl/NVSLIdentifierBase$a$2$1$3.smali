.class final Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$3;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;

    iput p2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$3;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$3;->a:I

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;->onUpdate(F)V

    return-void
.end method
