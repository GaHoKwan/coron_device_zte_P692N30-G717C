.class Lcom/mobilebox/tts/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private synthetic a:Lcom/mobilebox/tts/b;


# direct methods
.method private constructor <init>(Lcom/mobilebox/tts/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobilebox/tts/d;->a:Lcom/mobilebox/tts/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobilebox/tts/b;Lcom/mobilebox/tts/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobilebox/tts/d;-><init>(Lcom/mobilebox/tts/b;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/mobilebox/tts/d;->a:Lcom/mobilebox/tts/b;

    invoke-static {v0}, Lcom/mobilebox/tts/b;->e(Lcom/mobilebox/tts/b;)Lcom/mobilebox/tts/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobilebox/tts/d;->a:Lcom/mobilebox/tts/b;

    invoke-static {v0}, Lcom/mobilebox/tts/b;->e(Lcom/mobilebox/tts/b;)Lcom/mobilebox/tts/i;

    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->isSDKAbove(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobilebox/tts/d;->a:Lcom/mobilebox/tts/b;

    invoke-static {v0}, Lcom/mobilebox/tts/b;->f(Lcom/mobilebox/tts/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method