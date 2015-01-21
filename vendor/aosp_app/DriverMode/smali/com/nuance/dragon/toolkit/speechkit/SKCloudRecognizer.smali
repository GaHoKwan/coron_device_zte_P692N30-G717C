.class public final Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

.field private final b:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

.field private final c:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

.field private final d:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

.field private final e:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;

.field private final f:I

.field private final g:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;

.field private final h:Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;

.field private i:F

.field private j:Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

.field private o:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

.field private p:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

.field private q:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

.field private r:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;ILjava/lang/String;ZLcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->b:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    if-nez p4, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->c:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    :goto_0
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;

    new-instance v1, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$1;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->h:Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->d:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->e:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;

    iput p3, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->f:I

    iput-object p6, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->g:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;

    return-void

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v1, p4, p5}, Lcom/nuance/dragon/toolkit/audio/sources/StreamingFileRecorderSource;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->c:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;F)F
    .locals 0

    iput p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->i:F

    return p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->r:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    return-object p1
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->m:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->r:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->r:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->r:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    :cond_0
    iput-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->n:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->o:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->p:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->q:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->c:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->stopRecording()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->b:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->cancel()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->d:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->release()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->n:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->n:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->h:Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->c:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->d:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->h:Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->g:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;

    invoke-interface {v0, p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;->onListeningStart(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V

    return-void
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->r:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->j:Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;

    return-object v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->d:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    return-object v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->h:Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;

    return-object v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->p:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    return-object v0
.end method

.method static synthetic j(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->p:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    return-object v0
.end method

.method static synthetic k(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a()V

    return-void
.end method

.method static synthetic l(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->g:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;

    return-object v0
.end method

.method static synthetic m(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->q:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    return-object v0
.end method

.method static synthetic n(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->q:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->m:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->a()V

    goto :goto_0
.end method

.method public final getAudioLevel()F
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->i:F

    return v0
.end method

.method public final setPrompt(ILcom/nuance/dragon/toolkit/speechkit/SKPrompt;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->n:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->o:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->p:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    goto :goto_0

    :pswitch_3
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->q:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final start()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->k:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Already started"

    invoke-static {p0, v0, v3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->m:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Already finished"

    invoke-static {p0, v0, v3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->k:Z

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->l:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->c:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    new-instance v1, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$2;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->startRecording(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->f:I

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;

    new-instance v1, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$3;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$3;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;-><init>(Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->j:Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->j:Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->d:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->b:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->e:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->j:Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->j:Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;

    :goto_2
    new-instance v3, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;

    invoke-direct {v3, p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$4;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->startRecognition(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$Listener;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->d:Lcom/nuance/dragon/toolkit/audio/pipes/SpeexEncoderPipe;

    goto :goto_2
.end method

.method public final stopListening()V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->k:Z

    const-string v2, "Not started yet"

    invoke-static {p0, v0, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->m:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "Already finished"

    invoke-static {p0, v0, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->l:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->l:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->b:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;->processResult()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->c:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->stopRecording()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->g:Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;

    invoke-interface {v0, p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;->onListeningStop(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->o:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->r:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->r:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a()V

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->o:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->r:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->o:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;->r:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    new-instance v1, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$5;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$5;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;)V

    goto :goto_1
.end method
