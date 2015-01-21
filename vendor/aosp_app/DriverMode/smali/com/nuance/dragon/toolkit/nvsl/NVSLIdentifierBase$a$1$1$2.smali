.class final Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$1$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$1$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$1;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    return-void
.end method
