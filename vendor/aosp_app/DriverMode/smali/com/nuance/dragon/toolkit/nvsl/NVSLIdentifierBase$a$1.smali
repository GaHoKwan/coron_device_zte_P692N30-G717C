.class final Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Lcom/nuance/dragon/toolkit/audio/AudioSource;ZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->b:Z

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    sget-object v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    new-instance v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$1;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;)V

    new-instance v2, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;

    invoke-direct {v2, p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1$2;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->d(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v3

    iget v3, v3, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    invoke-interface {v0, v3, v1, v2}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;->a(ILcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLResultListener;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unable to start Detection."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->getConfigSetName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->c(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->getConfigSetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;->d(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase;)Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;

    move-result-object v0

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v4

    iget v4, v4, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;->a(Ljava/util/List;ILcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLResultListener;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unable to start Identifier."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a$1;->d:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;->b(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$a;)V

    goto :goto_0
.end method
