.class final Lcom/mobilebox/tts/TtsEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobilebox/tts/h;


# static fields
.field private static a:Lcom/mobilebox/tts/TtsEngine;


# instance fields
.field private b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/mobilebox/tts/TtsEngine;->a:Lcom/mobilebox/tts/TtsEngine;

    const-string v0, "TtsEngine"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.autonavi.xmgd.navigator.tob/lib/lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mobilebox/tts/TtsEngine;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static native ivTTS_Create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native ivTTS_Destroy()I
.end method

.method public static native ivTTS_SetParam(II)I
.end method

.method public static native ivTTS_SynthText([B)I
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a([B)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/mobilebox/tts/TtsEngine;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/mobilebox/tts/TtsEngine;->b:I

    const/4 v0, 0x0

    new-instance v1, Lcom/mobilebox/tts/a;

    invoke-direct {v1, p0, p1}, Lcom/mobilebox/tts/a;-><init>(Lcom/mobilebox/tts/TtsEngine;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lcom/mobilebox/tts/TtsEngine;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/mobilebox/tts/TtsEngine;->b:I

    :cond_0
    iget-object v0, p0, Lcom/mobilebox/tts/TtsEngine;->c:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mobilebox/tts/TtsEngine;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobilebox/tts/TtsEngine;->c:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    const/4 v0, 0x0

    goto :goto_0
.end method
