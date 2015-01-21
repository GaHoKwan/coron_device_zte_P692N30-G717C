.class public Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "voiceId"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->a:Ljava/lang/String;

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;
    .locals 3

    const-string v0, "voiceId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "confsetname"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;

    invoke-direct {v2, v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;-><init>(Ljava/lang/String;)V

    iput-object v1, v2, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->b:Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->b:Ljava/lang/String;

    return-void
.end method

.method public getConfigSetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toJSON()Lcom/nuance/dragon/toolkit/util/a/b;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "voiceId"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "confsetname"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge synthetic toJSON()Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;->toJSON()Lcom/nuance/dragon/toolkit/util/a/b;

    move-result-object v0

    return-object v0
.end method
