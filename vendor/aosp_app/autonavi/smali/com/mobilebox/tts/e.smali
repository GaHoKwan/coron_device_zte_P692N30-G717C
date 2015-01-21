.class Lcom/mobilebox/tts/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:[B

.field private synthetic b:Lcom/mobilebox/tts/b;


# direct methods
.method constructor <init>(Lcom/mobilebox/tts/b;[B)V
    .locals 4

    iput-object p1, p0, Lcom/mobilebox/tts/e;->b:Lcom/mobilebox/tts/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v1, p2

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mobilebox/tts/e;->a:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/mobilebox/tts/e;->a:[B

    aget-byte v3, p2, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/mobilebox/tts/e;->a:[B

    invoke-static {v0}, Lcom/mobilebox/tts/TtsEngine;->ivTTS_SynthText([B)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobilebox/tts/e;->b:Lcom/mobilebox/tts/b;

    invoke-static {v0}, Lcom/mobilebox/tts/b;->g(Lcom/mobilebox/tts/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobilebox/tts/e;->b:Lcom/mobilebox/tts/b;

    invoke-static {v0}, Lcom/mobilebox/tts/b;->g(Lcom/mobilebox/tts/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/mobilebox/tts/e;->a()V

    return-void
.end method
