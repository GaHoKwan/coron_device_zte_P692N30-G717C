.class public Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;

.field private final b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;->a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-void
.end method


# virtual methods
.method public getCloudSpec()Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;->a:Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;

    return-object v0
.end method

.method public getLocalSpec()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-object v0
.end method
