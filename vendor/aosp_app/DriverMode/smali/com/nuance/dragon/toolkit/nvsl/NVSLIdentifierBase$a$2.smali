.class final Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field final synthetic c:Z

.field final synthetic d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;Lcom/nuance/dragon/toolkit/audio/AudioSource;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iput-boolean p4, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    sget-object v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->getConfigSetName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$1;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;)V

    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->c:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->d(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v3

    iget v3, v3, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    invoke-interface {v2, v0, v3, v1}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;->b(Ljava/lang/String;ILcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "Unable to start enrollment/adaption."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->d(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->b:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v3

    iget v3, v3, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    invoke-interface {v2, v0, v3, v1}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;->a(Ljava/lang/String;ILcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$2;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2$2;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
