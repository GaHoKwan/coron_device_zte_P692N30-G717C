.class public Lcom/iflytek/speech/SynthesizerPlayer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/SynthesizerPlayer$a;
    }
.end annotation


# static fields
.field private static e:Lcom/iflytek/speech/SynthesizerPlayer;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/speech/c;

.field private c:Lcom/iflytek/a/a;

.field private d:Lcom/iflytek/a/c;

.field private f:Lcom/iflytek/speech/SynthesizerPlayerListener;

.field private g:I

.field private h:Z

.field private i:Lcom/iflytek/speech/b;

.field private j:Lcom/iflytek/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/speech/SynthesizerPlayer;->e:Lcom/iflytek/speech/SynthesizerPlayer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->f:Lcom/iflytek/speech/SynthesizerPlayerListener;

    iput v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->g:I

    iput-boolean v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->h:Z

    new-instance v0, Lcom/iflytek/speech/g;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/g;-><init>(Lcom/iflytek/speech/SynthesizerPlayer;)V

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->i:Lcom/iflytek/speech/b;

    new-instance v0, Lcom/iflytek/speech/h;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/h;-><init>(Lcom/iflytek/speech/SynthesizerPlayer;)V

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->j:Lcom/iflytek/a/a$b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/iflytek/speech/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/c;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->f:Lcom/iflytek/speech/SynthesizerPlayerListener;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/speech/SynthesizerPlayer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->h:Z

    return-void
.end method

.method static synthetic b(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/c;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/speech/SynthesizerPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->h:Z

    return v0
.end method

.method public static createSynthesizerPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/SynthesizerPlayer;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/SynthesizerPlayer;->e:Lcom/iflytek/speech/SynthesizerPlayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/speech/SynthesizerPlayer;->e:Lcom/iflytek/speech/SynthesizerPlayer;

    :cond_0
    sget-object v0, Lcom/iflytek/speech/SynthesizerPlayer;->e:Lcom/iflytek/speech/SynthesizerPlayer;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/speech/SynthesizerPlayer;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->g:I

    return v0
.end method

.method static synthetic e(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/a$b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->j:Lcom/iflytek/a/a$b;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/speech/SynthesizerPlayer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getSynthesizerPlayer()Lcom/iflytek/speech/SynthesizerPlayer;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/SynthesizerPlayer;->e:Lcom/iflytek/speech/SynthesizerPlayer;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/c;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    return-object v0
.end method


# virtual methods
.method public Destory()Z
    .locals 2

    invoke-virtual {p0}, Lcom/iflytek/speech/SynthesizerPlayer;->cancel()V

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v0}, Lcom/iflytek/speech/c;->Destory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/speech/SynthesizerPlayer;->e:Lcom/iflytek/speech/SynthesizerPlayer;

    :cond_0
    return v0
.end method

.method public Destory(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/iflytek/speech/SynthesizerPlayer;->cancel()V

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/c;->Destory(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/speech/SynthesizerPlayer;->e:Lcom/iflytek/speech/SynthesizerPlayer;

    :cond_0
    return v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v0}, Lcom/iflytek/speech/c;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->d()V

    :cond_1
    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    invoke-virtual {v0}, Lcom/iflytek/a/c;->g()V

    :cond_2
    return-void
.end method

.method public getDownflowBytes(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/c;->a(Z)I

    move-result v0

    return v0
.end method

.method public getState()Lcom/iflytek/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->a()Lcom/iflytek/a/a$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/a/a$a;->d:Lcom/iflytek/a/a$a;

    goto :goto_0
.end method

.method public getUpflowBytes(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/c;->b(Z)I

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->b()Z

    :cond_0
    return-void
.end method

.method public playText(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/SynthesizerPlayerListener;)V
    .locals 6

    const/16 v4, 0x7530

    const/16 v3, 0x13

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v0}, Lcom/iflytek/speech/c;->isAvaible()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/c$a;

    iget-object v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/iflytek/speech/SynthesizerPlayer$a;

    invoke-direct {v2, p0, p3}, Lcom/iflytek/speech/SynthesizerPlayer$a;-><init>(Lcom/iflytek/speech/SynthesizerPlayer;Lcom/iflytek/speech/SynthesizerPlayerListener;)V

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/c$a;-><init>(Lcom/iflytek/speech/c;Lcom/iflytek/speech/b;)V

    new-instance v1, Lcom/iflytek/speech/SpeechError;

    invoke-direct {v1, v3, v4}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/c$a;->a(Lcom/iflytek/speech/SpeechError;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->a()Lcom/iflytek/a/a$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/a/a$a;->d:Lcom/iflytek/a/a$a;

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/iflytek/speech/c$a;

    iget-object v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/iflytek/speech/SynthesizerPlayer$a;

    invoke-direct {v2, p0, p3}, Lcom/iflytek/speech/SynthesizerPlayer$a;-><init>(Lcom/iflytek/speech/SynthesizerPlayer;Lcom/iflytek/speech/SynthesizerPlayerListener;)V

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/c$a;-><init>(Lcom/iflytek/speech/c;Lcom/iflytek/speech/b;)V

    new-instance v1, Lcom/iflytek/speech/SpeechError;

    invoke-direct {v1, v3, v4}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/c$a;->a(Lcom/iflytek/speech/SpeechError;)V

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/iflytek/speech/SynthesizerPlayer;->f:Lcom/iflytek/speech/SynthesizerPlayerListener;

    new-instance v0, Lcom/iflytek/a/a;

    iget-object v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    new-instance v0, Lcom/iflytek/b/b;

    sget-object v1, Lcom/iflytek/b/a;->a:[[Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/iflytek/b/b;-><init>(Ljava/lang/String;[[Ljava/lang/String;)V

    const-string v1, "tap"

    invoke-virtual {v0, v1}, Lcom/iflytek/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iflytek/a/c;

    iget-object v3, p0, Lcom/iflytek/speech/SynthesizerPlayer;->a:Landroid/content/Context;

    invoke-static {}, Lcom/iflytek/speech/SpeechConfig;->c()I

    move-result v4

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/iflytek/a/c;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v2, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    iget-object v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    invoke-virtual {v1, p1}, Lcom/iflytek/a/c;->a(Ljava/lang/String;)V

    const-string v1, "tbt"

    invoke-virtual {v0, v1, v5}, Lcom/iflytek/b/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->g:I

    iput-boolean v5, p0, Lcom/iflytek/speech/SynthesizerPlayer;->h:Z

    invoke-static {}, Lcom/iflytek/msc/a/e;->a()V

    const-string v0, "Tts session begin"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/e;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    iget-object v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->i:Lcom/iflytek/speech/b;

    invoke-virtual {v0, p1, p2, v1}, Lcom/iflytek/speech/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/b;)Z

    goto :goto_0
.end method

.method public replay()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    iget-object v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    iget-object v2, p0, Lcom/iflytek/speech/SynthesizerPlayer;->j:Lcom/iflytek/a/a$b;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/a/a;->a(Lcom/iflytek/a/c;Lcom/iflytek/a/a$b;)Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->c()Z

    :cond_0
    return-void
.end method

.method public setBackgroundSound(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setPitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/c;->a(I)V

    return-void
.end method

.method public setSampleRate(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/c;->a(Lcom/iflytek/speech/SpeechConfig$RATE;)V

    return-void
.end method

.method public setSpeed(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/c;->b(I)V

    return-void
.end method

.method public setVoiceName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setVolume(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/c;->c(I)V

    return-void
.end method
