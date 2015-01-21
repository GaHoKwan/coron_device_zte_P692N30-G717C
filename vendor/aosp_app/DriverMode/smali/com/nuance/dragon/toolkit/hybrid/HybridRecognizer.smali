.class public abstract Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHybridRecognizer(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/hybrid/a;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/hybrid/a;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V

    return-object v0
.end method

.method public static createHybridRecognizer(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;)Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer;
    .locals 6

    new-instance v0, Lcom/nuance/dragon/toolkit/hybrid/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/hybrid/a;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;)V

    return-object v0
.end method

.method public static createHybridRecognizer(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/hybrid/b;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/hybrid/b;-><init>(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V

    return-object v0
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/grammar/Scenario;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
.end method

.method public abstract startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/grammar/Scenario;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
.end method

.method public abstract startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/grammar/Scenario;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
.end method

.method public abstract stopRecognition()V
.end method
