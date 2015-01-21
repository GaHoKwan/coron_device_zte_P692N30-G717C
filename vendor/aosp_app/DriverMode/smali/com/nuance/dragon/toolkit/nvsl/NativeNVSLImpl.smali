.class Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL;


# static fields
.field static a:Z


# instance fields
.field private b:Lcom/nuance/dragon/toolkit/file/FileManager;

.field private c:J

.field private d:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;

.field private e:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->a:Z

    :try_start_0
    const-string v0, "dmt_nvsl"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;

    const-string v2, "Failed to load native library."

    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->a:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/file/FileManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;)Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->d:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;)Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLResultListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->e:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLResultListener;

    return-object v0
.end method

.method private native nvslCancel(J)V
.end method

.method private native nvslCreate([JLcom/nuance/dragon/toolkit/file/FileManager;Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl$InputDeviceListener;)I
.end method

.method private native nvslDestroy(J)V
.end method

.method private native nvslEnableVerboseLogging(Z)V
.end method

.method private native nvslStartAdapting(JLjava/lang/String;I)I
.end method

.method private native nvslStartDetectingLanuage(JI)I
.end method

.method private native nvslStartEnrolling(JLjava/lang/String;I)I
.end method

.method private native nvslStartIdentifying(J[Ljava/lang/String;I)I
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "Error destroy NVSL: native NVSL does not exist!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    invoke-direct {p0, v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->nvslDestroy(J)V

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->nvslEnableVerboseLogging(Z)V

    return-void
.end method

.method public final a(ILcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLResultListener;)Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-string v1, "Error starting nvsl language detection: native NVSL does not exist."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->d:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->e:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLResultListener;

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    invoke-direct {p0, v1, v2, p1}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->nvslStartDetectingLanuage(JI)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->a()V

    if-eqz p1, :cond_1

    new-array v2, v0, [J

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v4, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl$1;

    invoke-direct {v4, p0}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl$1;-><init>(Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;)V

    invoke-direct {p0, v2, v3, p1, v4}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->nvslCreate([JLcom/nuance/dragon/toolkit/file/FileManager;Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl$InputDeviceListener;)I

    move-result v3

    if-nez v3, :cond_0

    aget-wide v4, v2, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    aget-wide v1, v2, v1

    iput-wide v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create native NVSL (error status = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;)Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-string v1, "Error starting nvsl enrollment: native NVSL does not exist."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object p3, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->d:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->e:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLResultListener;

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->nvslStartEnrolling(JLjava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/util/List;ILcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLResultListener;)Z
    .locals 6

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    const-string v0, "Error starting nvsl enrollment: native NVSL does not exist."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "To start identification against all stored voiceprints"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iput-object p3, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->d:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->e:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLResultListener;

    iget-wide v3, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    invoke-direct {p0, v3, v4, v0, p2}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->nvslStartIdentifying(J[Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Voiceprint ["

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, v3, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    move-object v0, v3

    goto :goto_1
.end method

.method public final b()V
    .locals 4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    invoke-direct {p0, v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->nvslCancel(J)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;ILcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;)Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-string v1, "Error starting nvsl enrollment: native NVSL does not exist."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object p3, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->d:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLAudioListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->e:Lcom/nuance/dragon/toolkit/nvsl/NativeNVSL$NVSLResultListener;

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->c:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/nuance/dragon/toolkit/nvsl/NativeNVSLImpl;->nvslStartAdapting(JLjava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
