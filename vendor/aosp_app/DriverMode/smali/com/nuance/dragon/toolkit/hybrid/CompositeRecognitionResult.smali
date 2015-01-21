.class public Lcom/nuance/dragon/toolkit/hybrid/CompositeRecognitionResult;
.super Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

.field private final b:Ljava/util/List;

.field private final c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;Ljava/util/List;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p4}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;-><init>(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Ljava/util/List;)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/CompositeRecognitionResult;->a:Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/CompositeRecognitionResult;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/hybrid/CompositeRecognitionResult;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    return-void
.end method


# virtual methods
.method public getEventualRemoteError()Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/CompositeRecognitionResult;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    return-object v0
.end method

.method public getRawLocalResult()Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/CompositeRecognitionResult;->a:Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    return-object v0
.end method

.method public getRawRemoteResults()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/CompositeRecognitionResult;->b:Ljava/util/List;

    return-object v0
.end method
