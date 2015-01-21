.class public abstract Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier;
.super Ljava/lang/Object;


# static fields
.field public static LOAD_NATIVE_LIBRARY_SUCCESS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->a:Z

    sput-boolean v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier;->LOAD_NATIVE_LIBRARY_SUCCESS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNVSLIdentifier(Lcom/nuance/dragon/toolkit/file/FileManager;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierImpl;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierImpl;-><init>(Lcom/nuance/dragon/toolkit/file/FileManager;)V

    return-object v0
.end method

.method public static createNVSLIdentifier(Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierImpl;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierImpl;-><init>(Lcom/nuance/dragon/toolkit/file/FileManager;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract enableVerboseAndroidLogging(Z)V
.end method

.method public abstract initialize(Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;)V
.end method

.method public abstract initialize(Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$InitializeListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract release(Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ReleaseListener;)V
.end method

.method public abstract startAdaption(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;)V
.end method

.method public abstract startEnrollment(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/nvsl/NVSLVoiceprint;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$AdaptationStepListener;)V
.end method

.method public abstract startIdentification(Lcom/nuance/dragon/toolkit/audio/AudioSource;Ljava/util/List;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;)V
.end method

.method public abstract startLanguageDetection(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$SignalListener;Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier$ResultListener;)V
.end method

.method public abstract stopListening()V
.end method
