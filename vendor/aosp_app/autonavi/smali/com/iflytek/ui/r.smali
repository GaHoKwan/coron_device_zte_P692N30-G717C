.class public Lcom/iflytek/ui/r;
.super Lcom/iflytek/ui/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static synthetic u:[I


# instance fields
.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/iflytek/speech/SynthesizerPlayer;

.field private k:Lcom/iflytek/ui/SynthesizerDialogListener;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/ProgressBar;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/view/View;

.field private t:Lcom/iflytek/speech/SynthesizerPlayerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/ui/h;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/ui/r;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/ui/r;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/ui/r;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    iput-object v1, p0, Lcom/iflytek/ui/r;->k:Lcom/iflytek/ui/SynthesizerDialogListener;

    new-instance v0, Lcom/iflytek/ui/y;

    invoke-direct {v0, p0}, Lcom/iflytek/ui/y;-><init>(Lcom/iflytek/ui/r;)V

    iput-object v0, p0, Lcom/iflytek/ui/r;->t:Lcom/iflytek/speech/SynthesizerPlayerListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/iflytek/speech/SynthesizerPlayer;->createSynthesizerPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/SynthesizerPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->i()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/ui/r;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->o:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a(Lcom/iflytek/speech/SpeechError;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/ui/r;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/d;

    iget-object v0, v0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    invoke-virtual {v0, v2}, Lcom/iflytek/ui/A;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/d;

    iget-object v0, v0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    invoke-virtual {p1}, Lcom/iflytek/speech/SpeechError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/A;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/d;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/iflytek/c/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/d;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/r;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/r;->a(Z)V

    invoke-static {}, Lcom/iflytek/ui/r;->k()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/speech/SpeechError;->getOperation()Lcom/iflytek/speech/SpeechError$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechError$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/ui/r;->g:I

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/iflytek/ui/r;->r()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/ui/r;->p()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/ui/r;->q()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/iflytek/ui/r;Lcom/iflytek/speech/SpeechError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/ui/r;->a(Lcom/iflytek/speech/SpeechError;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/ui/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/ui/r;->n()V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/ui/r;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->p:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/ui/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/ui/r;->m()V

    return-void
.end method

.method static synthetic e(Lcom/iflytek/ui/r;)Lcom/iflytek/ui/SynthesizerDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->k:Lcom/iflytek/ui/SynthesizerDialogListener;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/ui/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/ui/r;->o()V

    return-void
.end method

.method static synthetic g(Lcom/iflytek/ui/r;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/ui/r;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k()[I
    .locals 3

    sget-object v0, Lcom/iflytek/ui/r;->u:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/iflytek/speech/SpeechError$a;->values()[Lcom/iflytek/speech/SpeechError$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->d:Lcom/iflytek/speech/SpeechError$a;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->c:Lcom/iflytek/speech/SpeechError$a;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->a:Lcom/iflytek/speech/SpeechError$a;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->b:Lcom/iflytek/speech/SpeechError$a;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/iflytek/ui/r;->u:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private l()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/ui/r;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/d;

    iget-object v0, v0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    invoke-virtual {v0, v2}, Lcom/iflytek/ui/A;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/d;

    iget-object v0, v0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    invoke-virtual {v0}, Lcom/iflytek/ui/A;->a()V

    iget-object v0, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/d;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/iflytek/c/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/d;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/r;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/iflytek/ui/r;->a(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    iget-object v1, p0, Lcom/iflytek/ui/r;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/ui/r;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/ui/r;->t:Lcom/iflytek/speech/SynthesizerPlayerListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/speech/SynthesizerPlayer;->playText(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/SynthesizerPlayerListener;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/ui/r;->g:I

    return-void
.end method

.method private m()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/ui/r;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->p:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/iflytek/ui/r;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/d;

    iget-object v0, v0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    invoke-virtual {v0, v4}, Lcom/iflytek/ui/A;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/d;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/iflytek/c/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/d;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/r;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/iflytek/ui/r;->a(Z)V

    iput v3, p0, Lcom/iflytek/ui/r;->g:I

    return-void
.end method

.method private n()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/ui/r;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->p:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/iflytek/ui/r;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/d;

    iget-object v0, v0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    invoke-virtual {v0, v3}, Lcom/iflytek/ui/A;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/r;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/iflytek/ui/r;->a(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/ui/r;->g:I

    return-void
.end method

.method private o()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/ui/r;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->p:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/iflytek/ui/r;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/d;

    iget-object v0, v0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    invoke-virtual {v0, v3}, Lcom/iflytek/ui/A;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/r;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/iflytek/ui/r;->a(Z)V

    iput v2, p0, Lcom/iflytek/ui/r;->g:I

    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/r;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    new-instance v1, Lcom/iflytek/ui/z;

    invoke-direct {v1, p0}, Lcom/iflytek/ui/z;-><init>(Lcom/iflytek/ui/r;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/r;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/r;->a(Z)V

    return-void
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->setPitch(I)V

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->setSampleRate(Lcom/iflytek/speech/SpeechConfig$RATE;)V

    return-void
.end method

.method public a(Lcom/iflytek/ui/SynthesizerDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/r;->k:Lcom/iflytek/ui/SynthesizerDialogListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->setVoiceName(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/r;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/ui/r;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 7

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "buttonrightmarginleft"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "buttonrightmargintop"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "buttonrightmarginright"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "buttonrightmarginbottom"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object v1, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "buttonmarginleft"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "buttonmargintop"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "buttonmarginright"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "buttonmarginbottom"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public b(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->getDownflowBytes(Z)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->setSpeed(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->setBackgroundSound(Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->getUpflowBytes(Z)I

    move-result v0

    return v0
.end method

.method protected c()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/ui/h;->c()V

    invoke-direct {p0}, Lcom/iflytek/ui/r;->l()V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->setVolume(I)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->cancel()V

    invoke-super {p0}, Lcom/iflytek/ui/h;->d()V

    return-void
.end method

.method protected e()Z
    .locals 2

    invoke-super {p0}, Lcom/iflytek/ui/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SynthesizerPlayer;->Destory(I)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Lcom/iflytek/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->getState()Lcom/iflytek/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-super {p0}, Lcom/iflytek/ui/h;->finalize()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->pause()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->resume()V

    return-void
.end method

.method public i()V
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "synthesizer"

    invoke-static {v2, v0, p0}, Lcom/iflytek/ui/w;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "container"

    invoke-virtual {p0, v1}, Lcom/iflytek/ui/r;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    const-string v4, "drawablepanelbackground"

    invoke-virtual {v3, v2, v4}, Lcom/iflytek/ui/x;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "frameworkwidth"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "frameworkheight"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/ui/x;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/iflytek/ui/d;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/iflytek/c/a;->c(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/iflytek/ui/d;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v3, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/d;

    iget-object v3, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/d;

    const/4 v4, 0x0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/d;

    invoke-virtual {v1}, Lcom/iflytek/ui/d;->a()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/ui/r;->l:Landroid/view/View;

    const-string v1, "progressbar"

    invoke-virtual {p0, v1}, Lcom/iflytek/ui/r;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/iflytek/ui/r;->o:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/iflytek/ui/r;->o:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/iflytek/ui/r;->o:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/iflytek/ui/r;->o:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    const-string v1, "control"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/ui/r;->s:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v6, 0x5

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/iflytek/ui/r;->s:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "retry"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "heightbutton"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setHeight(I)V

    iget-object v1, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    const-string v4, "buttoncolor"

    invoke-virtual {v3, v4}, Lcom/iflytek/ui/x;->c(Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fontsizebutton"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v1, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "statelistbuttonleft"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "buttonleftmarginleft"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "buttonleftmargintop"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "buttonleftmarginright"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v6

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "buttonleftmarginbottom"

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "heightbutton"

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/ui/x;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    const-string v3, "buttoncolor"

    invoke-virtual {v1, v3}, Lcom/iflytek/ui/x;->c(Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fontsizebutton"

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/r;->a(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->m:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v0

    const-string v1, "drawableplay"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/ui/x;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/r;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v0

    const-string v1, "drawablestop"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/ui/x;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/r;->r:Landroid/graphics/drawable/Drawable;

    const-string v0, "play"

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/r;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iflytek/ui/r;->p:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/iflytek/ui/r;->p:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "statlelistplayground"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->p:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/iflytek/ui/r;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public j()V
    .locals 2

    iget v0, p0, Lcom/iflytek/ui/r;->g:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->replay()V

    iget-object v0, p0, Lcom/iflytek/ui/r;->o:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/iflytek/ui/r;->m()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/ui/r;->l()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->resume()V

    invoke-direct {p0}, Lcom/iflytek/ui/r;->m()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/iflytek/ui/r;->j:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->pause()V

    invoke-direct {p0}, Lcom/iflytek/ui/r;->n()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/r;->n:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->d()V

    invoke-virtual {p0}, Lcom/iflytek/ui/r;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/ui/r;->j()V

    goto :goto_0
.end method
