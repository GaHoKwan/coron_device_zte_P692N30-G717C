.class public abstract Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;
.super Lcom/nuance/dragon/toolkit/language/LanguageEvent;


# static fields
.field public static LOAD_NATIVE_LIBRARY_SUCCESS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->a:Z

    sput-boolean v0, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;->LOAD_NATIVE_LIBRARY_SUCCESS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/language/LanguageEvent;-><init>()V

    return-void
.end method

.method public static createElvisImpersonator()Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/elvis/b;-><init>()V

    return-object v0
.end method

.method public static createElvisRecognizer(Lcom/nuance/dragon/toolkit/file/FileManager;)Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/c;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/elvis/c;-><init>(Lcom/nuance/dragon/toolkit/file/FileManager;)V

    return-object v0
.end method

.method public static createElvisRecognizer(Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/c;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/elvis/c;-><init>(Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public abstract cancelRebuild()V
.end method

.method public abstract cancelRecognition()V
.end method

.method public abstract checkAdaptationStatus(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationCheckListener;)V
.end method

.method public abstract checkWakeupPhrases(Ljava/util/List;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$WakeupCheckListener;)V
.end method

.method public abstract clearGrammar(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V
.end method

.method public abstract enableRecognitionLogging(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract enableVerboseAndroidLogging(Z)V
.end method

.method public abstract findConstraint(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/Constraint;
.end method

.method public abstract findWordSlot(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/WordSlot;
.end method

.method public abstract getAvailableModels()Ljava/util/List;
.end method

.method public abstract getAvailableModels(I)Ljava/util/List;
.end method

.method public abstract getAvailableModels(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;)Ljava/util/List;
.end method

.method public abstract getRecognitionLoggingStatus()I
.end method

.method public abstract initialize(Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;Ljava/lang/String;)V
.end method

.method public abstract initialize(Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;Ljava/lang/String;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$InitializeListener;)V
.end method

.method public abstract loadGrammar(Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V
.end method

.method public abstract loadState(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V
.end method

.method public abstract loadStateAndGrammar(Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract release(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ReleaseListener;)V
.end method

.method public abstract saveState()V
.end method

.method public abstract saveState(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$SaveListener;)V
.end method

.method public abstract setActiveConstraintNames(Ljava/util/List;)V
.end method

.method public abstract setActiveConstraints(Ljava/util/List;)V
.end method

.method public abstract setCustomPronunciations(Ljava/util/List;)V
.end method

.method public abstract setWakeupPenalty(I)V
.end method

.method public abstract setWakeupPhrases(Ljava/util/List;)V
.end method

.method public final varargs setWakeupPhrases([Ljava/lang/String;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;->setWakeupPhrases(Ljava/util/List;)V

    return-void
.end method

.method public abstract startAdaptation(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/lang/String;ZLcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationStepListener;)V
.end method

.method public abstract startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V
.end method

.method public abstract startRecognition(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V
.end method

.method public abstract startSeamlessWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V
.end method

.method public abstract startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V
.end method

.method public abstract startSpeechDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;ZLcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V
.end method

.method public abstract startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V
.end method

.method public abstract startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;ILcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V
.end method

.method public abstract startWakeupMode(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$ResultListener;)V
.end method

.method public abstract stopListening()V
.end method
