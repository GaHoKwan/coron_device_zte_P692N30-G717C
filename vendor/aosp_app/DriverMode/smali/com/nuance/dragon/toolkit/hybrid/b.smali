.class final Lcom/nuance/dragon/toolkit/hybrid/b;
.super Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

.field private b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

.field private c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field private d:Lcom/nuance/dragon/toolkit/audio/AudioSource;

.field private final e:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

.field private final f:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

.field private final g:Lcom/nuance/dragon/toolkit/util/internal/a;

.field private h:Lcom/nuance/dragon/toolkit/hybrid/b$a;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer;-><init>()V

    const-string v0, "voconRecognizer"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cloudServices"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->e:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->f:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->g:Lcom/nuance/dragon/toolkit/util/internal/a;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/b;)Lcom/nuance/dragon/toolkit/hybrid/b$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    return-object v0
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->release()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    :cond_1
    return-void
.end method

.method private a(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/hybrid/b;->a()V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->a:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->b:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->d:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    :cond_0
    invoke-interface {p3, p2}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;->onError(Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/hybrid/b$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/hybrid/b$3;-><init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    invoke-static {p1, v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/util/internal/a$b;)Lcom/nuance/dragon/toolkit/util/internal/a$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->g:Lcom/nuance/dragon/toolkit/util/internal/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->b(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/util/internal/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Lcom/nuance/dragon/toolkit/util/internal/a$b;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;Ljava/util/List;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;ZLcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 8

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/hybrid/b$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/hybrid/b$1;-><init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;Ljava/util/List;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;Lcom/nuance/dragon/toolkit/hybrid/b$a;ZLcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    invoke-static {p1, v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/util/internal/a$b;)Lcom/nuance/dragon/toolkit/util/internal/a$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->g:Lcom/nuance/dragon/toolkit/util/internal/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->b(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/util/internal/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Lcom/nuance/dragon/toolkit/util/internal/a$b;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/hybrid/b;)Lcom/nuance/dragon/toolkit/hybrid/b$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/hybrid/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/hybrid/b;->a()V

    return-void
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/hybrid/b;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->e:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->b(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->e:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->cancelRecognition()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->cancel()V

    :cond_0
    return-void
.end method

.method public final startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/grammar/Scenario;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 2

    const-string v0, "Method is not supported. See other startRecognition() methods."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method is not supported. See other startRecognition() methods."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/grammar/Scenario;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 14

    const-string v1, "audioSource"

    invoke-static {v1, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scenario"

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "localArbitrationInterpreter"

    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "listener"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getCloudRecogSpec()Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getVoconContexts()Ljava/util/List;

    move-result-object v8

    const-string v1, "Cloud recognition spec and Vocon contexts"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-static {v1, v3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/hybrid/b;->cancel()V

    new-instance v3, Lcom/nuance/dragon/toolkit/hybrid/b$a;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;-><init>(B)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Ljava/util/List;)Ljava/util/List;

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Z)Z

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/hybrid/b;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    if-eqz v2, :cond_1

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->f:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    invoke-direct {v1, v4}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V

    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v1

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->d:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    new-instance v5, Lcom/nuance/dragon/toolkit/hybrid/b$4;

    move-object/from16 v0, p4

    invoke-direct {v5, p0, v3, v0}, Lcom/nuance/dragon/toolkit/hybrid/b$4;-><init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    invoke-virtual {v1, v2, v4, v5}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->startRecognition(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;)V

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    if-eq v3, v1, :cond_3

    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->f(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "VoCon is only used for end-pointing in this recognition."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->b(Lcom/nuance/dragon/toolkit/hybrid/b$a;Z)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->e:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    new-instance v4, Lcom/nuance/dragon/toolkit/hybrid/b$5;

    move-object/from16 v0, p4

    invoke-direct {v4, p0, v0, v3}, Lcom/nuance/dragon/toolkit/hybrid/b$5;-><init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;Lcom/nuance/dragon/toolkit/hybrid/b$a;)V

    invoke-virtual {v1, v2, v4}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V

    goto :goto_1

    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->START_ENABLE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->MINSPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_LSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_SPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->EVENT_TIMER:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->KNOWN_SPEAKER_CHANGES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->FARTALK:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->SPEAKER_ADAPTATION:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v6, 0x258

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE_FX:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v6, 0x12c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAXNBEST:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAXNBEST_SECONDPASS:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->setParams(Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->b(Lcom/nuance/dragon/toolkit/hybrid/b$a;Z)Z

    iget-object v10, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->e:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    iget-object v11, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    new-instance v12, Lcom/nuance/dragon/toolkit/hybrid/b$6;

    move-object/from16 v0, p4

    invoke-direct {v12, p0, v0}, Lcom/nuance/dragon/toolkit/hybrid/b$6;-><init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    const/4 v13, 0x0

    new-instance v1, Lcom/nuance/dragon/toolkit/hybrid/b$7;

    move-object v2, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/nuance/dragon/toolkit/hybrid/b$7;-><init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Ljava/util/List;ILcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    move-object v2, v10

    move-object v3, v11

    move-object v4, v9

    move-object v5, v8

    move-object v6, v12

    move-object v7, v13

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    goto/16 :goto_1
.end method

.method public final startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/grammar/Scenario;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V
    .locals 13

    const-string v1, "audioSource"

    invoke-static {v1, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scenario"

    invoke-static {v1, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "localInterpreter"

    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cloudInterpreter"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hybridCombiner"

    move-object/from16 v0, p5

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "listener"

    move-object/from16 v0, p6

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getCloudRecogSpec()Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;

    move-result-object v7

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/grammar/Scenario;->getVoconContexts()Ljava/util/List;

    move-result-object v8

    const-string v1, "Cloud recognition spec and Vocon contexts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/hybrid/b;->cancel()V

    new-instance v3, Lcom/nuance/dragon/toolkit/hybrid/b$a;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;-><init>(B)V

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Z)Z

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/hybrid/b;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    if-eqz v7, :cond_1

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->f:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V

    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->d:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    new-instance v1, Lcom/nuance/dragon/toolkit/hybrid/b$8;

    move-object v2, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/nuance/dragon/toolkit/hybrid/b$8;-><init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    invoke-virtual {v9, v7, v10, v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->startRecognition(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;)V

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    if-eq v3, v1, :cond_3

    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->f(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "VoCon is only used for end-pointing in this recognition."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->b(Lcom/nuance/dragon/toolkit/hybrid/b$a;Z)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->e:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    new-instance v4, Lcom/nuance/dragon/toolkit/hybrid/b$9;

    move-object/from16 v0, p6

    invoke-direct {v4, p0, v0, v3}, Lcom/nuance/dragon/toolkit/hybrid/b$9;-><init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;Lcom/nuance/dragon/toolkit/hybrid/b$a;)V

    invoke-virtual {v1, v2, v4}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V

    goto :goto_1

    :cond_4
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->START_ENABLE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->MINSPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_LSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_SPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->EVENT_TIMER:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->KNOWN_SPEAKER_CHANGES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->FARTALK:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->SPEAKER_ADAPTATION:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v4, 0x258

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE_FX:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAXNBEST:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAXNBEST_SECONDPASS:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->setParams(Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->b(Lcom/nuance/dragon/toolkit/hybrid/b$a;Z)Z

    iget-object v10, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->e:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    iget-object v11, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->c:Lcom/nuance/dragon/toolkit/audio/AudioSource;

    new-instance v12, Lcom/nuance/dragon/toolkit/hybrid/b$10;

    move-object/from16 v0, p6

    invoke-direct {v12, p0, v0}, Lcom/nuance/dragon/toolkit/hybrid/b$10;-><init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    const/4 v7, 0x0

    new-instance v1, Lcom/nuance/dragon/toolkit/hybrid/b$2;

    move-object v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/nuance/dragon/toolkit/hybrid/b$2;-><init>(Lcom/nuance/dragon/toolkit/hybrid/b;Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Lcom/nuance/dragon/toolkit/hybrid/HybridRecognizer$Listener;)V

    move-object v2, v10

    move-object v3, v11

    move-object v4, v9

    move-object v5, v8

    move-object v6, v12

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V

    goto/16 :goto_1
.end method

.method public final stopRecognition()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->e:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->stopListening()V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/hybrid/b;->a()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->f(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->b(Lcom/nuance/dragon/toolkit/hybrid/b$a;Z)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b;->h:Lcom/nuance/dragon/toolkit/hybrid/b$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->processResult()V

    :cond_0
    return-void
.end method
