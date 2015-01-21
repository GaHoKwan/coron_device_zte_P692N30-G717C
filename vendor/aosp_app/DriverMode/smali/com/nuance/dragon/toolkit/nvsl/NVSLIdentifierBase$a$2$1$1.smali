.class final Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    return-void
.end method
