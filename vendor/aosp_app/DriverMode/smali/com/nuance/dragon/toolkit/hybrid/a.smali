.class final Lcom/nuance/dragon/toolkit/hybrid/a;
.super Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

.field private b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

.field private c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field private d:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field private final e:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;

.field private final f:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

.field private g:Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;

.field private h:Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;

.field private i:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;

.field private final j:Lcom/nuance/dragon/toolkit/util/internal/a;

.field private k:Lcom/nuance/dragon/toolkit/hybrid/a$a;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer;-><init>()V

    const-string v0, "elvisRecognizer"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cloudServices"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->e:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->f:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->j:Lcom/nuance/dragon/toolkit/util/internal/a;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer;-><init>()V

    const-string v0, "elvisRecognizer"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cloudServices"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "elvisInterpreter"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cloudInterpreter"

    invoke-static {v0, p4}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hybridCombiner"

    invoke-static {v0, p5}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->e:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->f:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->g:Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->h:Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->i:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->j:Lcom/nuance/dragon/toolkit/util/internal/a;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/a;)Lcom/nuance/dragon/toolkit/hybrid/a$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    return-object v0
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->release()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/a;Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    :cond_0
    invoke-interface {p3, p2}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;->onError(Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/a;Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/hybrid/a$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/hybrid/a$1;-><init>(Lcom/nuance/dragon/toolkit/hybrid/a;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    invoke-static {p1, v0}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->a(Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/util/internal/a$b;)Lcom/nuance/dragon/toolkit/util/internal/a$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->j:Lcom/nuance/dragon/toolkit/util/internal/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->b(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Lcom/nuance/dragon/toolkit/util/internal/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Lcom/nuance/dragon/toolkit/util/internal/a$b;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/hybrid/a;)Lcom/nuance/dragon/toolkit/hybrid/a$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/hybrid/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/hybrid/a;->a()V

    return-void
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/hybrid/a;)Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->e:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->b(Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->a(Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->c(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->e:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;->cancelRecognition()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->cancel()V

    :cond_0
    return-void
.end method

.method public final startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/grammar/Scenario;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 7

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->g:Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->h:Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->i:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/hybrid/a;->startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/grammar/Scenario;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    return-void
.end method

.method public final startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/grammar/Scenario;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 2

    const-string v0, "Method is not supported. Use VoconHybridRecognizer instead."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method is not supported. Use VoconHybridRecognizer instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/grammar/Scenario;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 11

    const-string v1, "audioSource"

    invoke-static {v1, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scenario"

    invoke-static {v1, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "localInterpreter"

    invoke-static {v1, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cloudInterpreter"

    invoke-static {v1, p4}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hybridCombiner"

    move-object/from16 v0, p5

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "listener"

    move-object/from16 v0, p6

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getCloudRecogSpec()Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;

    move-result-object v7

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getElvisConstraints()Ljava/util/List;

    move-result-object v8

    const-string v1, "Cloud recognition spec and Elvis constraints "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/hybrid/a;->cancel()V

    new-instance v3, Lcom/nuance/dragon/toolkit/hybrid/a$a;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/a$a;-><init>(B)V

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->a(Lcom/nuance/dragon/toolkit/hybrid/a$a;Z)Z

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/hybrid/a;->a()V

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;-><init>()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    invoke-virtual {v1, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;-><init>()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->d:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-eqz v7, :cond_1

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->f:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V

    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->a(Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->c(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->d:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    new-instance v1, Lcom/nuance/dragon/toolkit/hybrid/a$2;

    move-object v2, p0

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/nuance/dragon/toolkit/hybrid/a$2;-><init>(Lcom/nuance/dragon/toolkit/hybrid/a;Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    invoke-virtual {v9, v7, v10, v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->startRecognition(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;)V

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    if-eq v3, v1, :cond_3

    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->e(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Elvis is only used for end-pointing in this recognition."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->b(Lcom/nuance/dragon/toolkit/hybrid/a$a;Z)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->e:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    new-instance v4, Lcom/nuance/dragon/toolkit/hybrid/a$3;

    move-object/from16 v0, p6

    invoke-direct {v4, p0, v0, v3}, Lcom/nuance/dragon/toolkit/hybrid/a$3;-><init>(Lcom/nuance/dragon/toolkit/hybrid/a;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;Lcom/nuance/dragon/toolkit/hybrid/a$a;)V

    invoke-virtual {v1, v2, v4}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;->startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->b(Lcom/nuance/dragon/toolkit/hybrid/a$a;Z)Z

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->e:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;

    iget-object v9, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    new-instance v10, Lcom/nuance/dragon/toolkit/hybrid/a$4;

    move-object/from16 v0, p6

    invoke-direct {v10, p0, v0}, Lcom/nuance/dragon/toolkit/hybrid/a$4;-><init>(Lcom/nuance/dragon/toolkit/hybrid/a;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    new-instance v1, Lcom/nuance/dragon/toolkit/hybrid/a$5;

    move-object v2, p0

    move-object v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/nuance/dragon/toolkit/hybrid/a$5;-><init>(Lcom/nuance/dragon/toolkit/hybrid/a;Lcom/nuance/dragon/toolkit/hybrid/a$a;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    invoke-virtual {v7, v9, v8, v10, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;->startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V

    goto :goto_1
.end method

.method public final stopRecognition()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->e:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;->stopListening()V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/hybrid/a;->a()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->e(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->b(Lcom/nuance/dragon/toolkit/hybrid/a$a;Z)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/a;->k:Lcom/nuance/dragon/toolkit/hybrid/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/a$a;->c(Lcom/nuance/dragon/toolkit/hybrid/a$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->processResult()V

    :cond_0
    return-void
.end method
