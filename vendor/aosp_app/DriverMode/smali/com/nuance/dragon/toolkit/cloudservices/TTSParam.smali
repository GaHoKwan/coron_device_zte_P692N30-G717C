.class public Lcom/nuance/dragon/toolkit/cloudservices/TTSParam;
.super Lcom/nuance/dragon/toolkit/cloudservices/Param;


# instance fields
.field private final c:Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;

.field private final d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/Param;-><init>(ILjava/lang/String;)V

    const-string v0, "dict"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;

    invoke-direct {v0, p3}, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam;->c:Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;

    return-void
.end method


# virtual methods
.method final a(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Param$a;)Z
    .locals 3

    const-class v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    move-object v0, p1

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/e;->c()Lcom/nuance/dragon/toolkit/cloudservices/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/b;->l()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam;->c:Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "The audio type specified in the TTSSpec does not match the player codec specified in the CloudServices"

    invoke-static {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam;->c:Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;

    invoke-interface {p1, v0, v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/a/a/a/b/b/a;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam;->c:Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;

    return-object v0
.end method
