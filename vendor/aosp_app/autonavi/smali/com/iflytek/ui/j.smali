.class public Lcom/iflytek/ui/j;
.super Lcom/iflytek/ui/h;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/speech/SpeechListener;


# static fields
.field private static synthetic o:[I


# instance fields
.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/view/View;

.field private j:[B

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/iflytek/speech/DataUploader;

.field private n:Lcom/iflytek/speech/SpeechListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/ui/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/ui/j;->m:Lcom/iflytek/speech/DataUploader;

    iput-object v0, p0, Lcom/iflytek/ui/j;->n:Lcom/iflytek/speech/SpeechListener;

    new-instance v0, Lcom/iflytek/speech/DataUploader;

    invoke-direct {v0}, Lcom/iflytek/speech/DataUploader;-><init>()V

    iput-object v0, p0, Lcom/iflytek/ui/j;->m:Lcom/iflytek/speech/DataUploader;

    invoke-direct {p0}, Lcom/iflytek/ui/j;->g()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/ui/j;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/ui/j;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f()[I
    .locals 3

    sget-object v0, Lcom/iflytek/ui/j;->o:[I

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
    sput-object v0, Lcom/iflytek/ui/j;->o:[I

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

.method private g()V
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "synthesizer"

    invoke-static {v1, v0, p0}, Lcom/iflytek/ui/w;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v0, "container"

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/j;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    const-string v4, "drawablepanelbackground"

    invoke-virtual {v3, v1, v4}, Lcom/iflytek/ui/x;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "frameworkwidth"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "frameworkheight"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/ui/x;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/iflytek/ui/d;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/iflytek/c/a;->c(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/iflytek/ui/d;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v3, p0, Lcom/iflytek/ui/j;->a:Lcom/iflytek/ui/d;

    iget-object v1, p0, Lcom/iflytek/ui/j;->a:Lcom/iflytek/ui/d;

    const/4 v3, 0x0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "control"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/j;->i:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v1, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/iflytek/ui/j;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "retry"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "heightbutton"

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/ui/x;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    const-string v3, "buttoncolor"

    invoke-virtual {v1, v3}, Lcom/iflytek/ui/x;->c(Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fontsizebutton"

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "buttonleftmarginleft"

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "buttonleftmargintop"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "buttonleftmarginright"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "buttonleftmarginbottom"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "cancel"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "heightbutton"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    const-string v2, "buttoncolor"

    invoke-virtual {v1, v2}, Lcom/iflytek/ui/x;->c(Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/j;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/j;->a(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fontsizebutton"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/j;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/j;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    new-instance v1, Lcom/iflytek/ui/s;

    invoke-direct {v1, p0}, Lcom/iflytek/ui/s;-><init>(Lcom/iflytek/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/j;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/j;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/speech/SpeechListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/j;->n:Lcom/iflytek/speech/SpeechListener;

    return-void
.end method

.method public a(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/j;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/ui/j;->j:[B

    iput-object p3, p0, Lcom/iflytek/ui/j;->k:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 7

    iget-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "buttonrightmarginleft"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "buttonrightmargintop"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "buttonrightmarginright"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "buttonrightmarginbottom"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object v1, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "buttonmarginleft"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "buttonmargintop"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "buttonmarginright"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "buttonmarginbottom"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method protected c()V
    .locals 6

    invoke-super {p0}, Lcom/iflytek/ui/h;->c()V

    iget-object v0, p0, Lcom/iflytek/ui/j;->m:Lcom/iflytek/speech/DataUploader;

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/iflytek/ui/j;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/ui/j;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/ui/j;->j:[B

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/speech/DataUploader;->uploadData(Landroid/content/Context;Lcom/iflytek/speech/SpeechListener;Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->a:Lcom/iflytek/ui/d;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/iflytek/c/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/d;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->a:Lcom/iflytek/ui/d;

    iget-object v0, v0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    invoke-virtual {v0}, Lcom/iflytek/ui/A;->a()V

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/j;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/j;->a(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/j;->m:Lcom/iflytek/speech/DataUploader;

    invoke-virtual {v0}, Lcom/iflytek/speech/DataUploader;->cancel()V

    return-void
.end method

.method protected e()Z
    .locals 2

    invoke-super {p0}, Lcom/iflytek/ui/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/j;->m:Lcom/iflytek/speech/DataUploader;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/DataUploader;->Destory(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->d()V

    invoke-virtual {p0}, Lcom/iflytek/ui/j;->a()V

    goto :goto_0
.end method

.method public onData([B)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/j;->n:Lcom/iflytek/speech/SpeechListener;

    invoke-interface {v0, p1}, Lcom/iflytek/speech/SpeechListener;->onData([B)V

    return-void
.end method

.method public onEnd(Lcom/iflytek/speech/SpeechError;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/j;->n:Lcom/iflytek/speech/SpeechListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/j;->n:Lcom/iflytek/speech/SpeechListener;

    invoke-interface {v0, p1}, Lcom/iflytek/speech/SpeechListener;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/ui/j;->e:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/ui/j;->a()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iflytek/ui/j;->a:Lcom/iflytek/ui/d;

    iget-object v0, v0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    iget-boolean v1, p0, Lcom/iflytek/ui/j;->f:Z

    invoke-virtual {p1, v1}, Lcom/iflytek/speech/SpeechError;->getErrorDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/A;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->a:Lcom/iflytek/ui/d;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/iflytek/c/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/d;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/j;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/j;->a(Z)V

    invoke-static {}, Lcom/iflytek/ui/j;->f()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/speech/SpeechError;->getOperation()Lcom/iflytek/speech/SpeechError$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechError$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/iflytek/ui/j;->h()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/ui/j;->i()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/ui/j;->j()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
