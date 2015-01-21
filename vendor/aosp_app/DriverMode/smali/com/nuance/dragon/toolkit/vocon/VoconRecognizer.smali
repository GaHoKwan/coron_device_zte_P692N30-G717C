.class public abstract Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;
.super Lcom/nuance/dragon/toolkit/language/LanguageEvent;


# static fields
.field public static LOAD_NATIVE_LIBRARY_SUCCESS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a:Z

    sput-boolean v0, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->LOAD_NATIVE_LIBRARY_SUCCESS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/language/LanguageEvent;-><init>()V

    return-void
.end method

.method public static createVoconRecognizer(Lcom/nuance/dragon/toolkit/file/FileManager;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/e;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/vocon/e;-><init>(Lcom/nuance/dragon/toolkit/file/FileManager;)V

    return-object v0
.end method

.method public static createVoconRecognizer(Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/e;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/vocon/e;-><init>(Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public abstract cancelCompilation()V
.end method

.method public abstract cancelRebuild()V
.end method

.method public abstract cancelRecognition()V
.end method

.method public abstract checkWakeupPhrases(Ljava/util/List;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$WakeupCheckListener;)V
.end method

.method public abstract clean(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;)V
.end method

.method public abstract clean(Ljava/util/List;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;)V
.end method

.method public abstract clearGrammar(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V
.end method

.method public abstract compileContext(Ljava/util/List;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CompileListener;)V
.end method

.method public abstract enableVerboseAndroidLogging(Z)V
.end method

.method public abstract getAvailableModels()Ljava/util/List;
.end method

.method public abstract getAvailableModels(Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;)Ljava/util/List;
.end method

.method public abstract initialize(Lcom/nuance/dragon/toolkit/vocon/VoconConfig;Ljava/lang/String;)V
.end method

.method public abstract initialize(Lcom/nuance/dragon/toolkit/vocon/VoconConfig;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$InitializeListener;)V
.end method

.method public abstract loadGrammar(Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V
.end method

.method public abstract loadResource(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceLoadListener;)V
.end method

.method public abstract loadState(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V
.end method

.method public abstract loadStateAndGrammar(Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract release(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ReleaseListener;)V
.end method

.method public abstract releaseResource(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceReleaseListener;)V
.end method

.method public abstract saveState()V
.end method

.method public abstract saveState(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SaveListener;)V
.end method

.method public abstract startFuzzyMatchRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/vocon/VoconContext;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
.end method

.method public abstract startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
.end method

.method public abstract startSeamlessWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
.end method

.method public abstract startSeamlessWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
.end method

.method public abstract startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;ILcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V
.end method

.method public abstract startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V
.end method

.method public abstract startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;ZLcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V
.end method

.method public abstract startTimedRecognitionMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/vocon/VoconContext;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
.end method

.method public abstract startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
.end method

.method public abstract startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/Map;Ljava/util/List;ILcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
.end method

.method public abstract stopListening()V
.end method
