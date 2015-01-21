.class public abstract Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;
.super Ljava/lang/Object;


# static fields
.field public static LOAD_NATIVE_VEX_LIBRARY_SUCCESS:Z

.field public static LOAD_NATIVE_VFA_LIBRARY_SUCCESS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerAutomotiveImpl;->a:Z

    sput-boolean v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->LOAD_NATIVE_VFA_LIBRARY_SUCCESS:Z

    sget-boolean v0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->a:Z

    sput-boolean v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->LOAD_NATIVE_VEX_LIBRARY_SUCCESS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVocalizer(Lcom/nuance/dragon/toolkit/file/FileManager;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/c;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;->VOCALIZER_EXPRESSIVE:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    invoke-direct {v0, v1, p0}, Lcom/nuance/dragon/toolkit/vocalizer/c;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;Lcom/nuance/dragon/toolkit/file/FileManager;)V

    return-object v0
.end method

.method public static createVocalizer(Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/c;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;->VOCALIZER_EXPRESSIVE:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    invoke-direct {v0, v1, p0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/c;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createVocalizer(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;Lcom/nuance/dragon/toolkit/file/FileManager;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/c;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/c;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;Lcom/nuance/dragon/toolkit/file/FileManager;)V

    return-object v0
.end method

.method public static createVocalizer(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/dragon/toolkit/vocalizer/c;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public abstract cancelTts()V
.end method

.method public abstract generateTts(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;
.end method

.method public abstract generateTts(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;
.end method

.method public abstract getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
.end method

.method public abstract getAvailableLanguages(I)Ljava/util/List;
.end method

.method public abstract getAvailableModels()Ljava/util/List;
.end method

.method public abstract getAvailableModels(I)Ljava/util/List;
.end method

.method public abstract getAvailableVoices(I)Ljava/util/List;
.end method

.method public abstract getAvailableVoices(ILcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;)Ljava/util/List;
.end method

.method public abstract load(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;)V
.end method

.method public abstract load(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$LoadListener;)V
.end method

.method public abstract loadResource(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceLoadListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract release(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ReleaseListener;)V
.end method

.method public abstract releaseResource(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceReleaseListener;)V
.end method

.method public abstract setAudioChunkBufferCount(I)V
.end method

.method public abstract setAudioChunkSize(I)V
.end method

.method public abstract setTtsPitch(I)V
.end method

.method public abstract setTtsSpeed(I)V
.end method

.method public abstract setTtsVolume(I)V
.end method
