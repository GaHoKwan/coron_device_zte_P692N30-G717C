.class public final Lcom/iflytek/ui/o;
.super Lcom/iflytek/ui/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public g:Z

.field private h:Landroid/view/View;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Lcom/iflytek/speech/SpeechRecognizer;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:Lcom/iflytek/ui/RecognizerDialogListener;

.field private v:J

.field private w:Lcom/iflytek/speech/RecognizerListener;

.field private volatile x:I

.field private y:Lcom/iflytek/a/a;

.field private z:Lcom/iflytek/a/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/ui/h;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/ui/o;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/ui/o;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/ui/o;->r:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/iflytek/ui/o;->s:Z

    iput-boolean v3, p0, Lcom/iflytek/ui/o;->t:Z

    iput-boolean v4, p0, Lcom/iflytek/ui/o;->g:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/ui/o;->v:J

    new-instance v0, Lcom/iflytek/ui/n;

    invoke-direct {v0, p0}, Lcom/iflytek/ui/n;-><init>(Lcom/iflytek/ui/o;)V

    iput-object v0, p0, Lcom/iflytek/ui/o;->w:Lcom/iflytek/speech/RecognizerListener;

    iput-object v2, p0, Lcom/iflytek/ui/o;->y:Lcom/iflytek/a/a;

    new-instance v0, Lcom/iflytek/ui/p;

    invoke-direct {v0, p0}, Lcom/iflytek/ui/p;-><init>(Lcom/iflytek/ui/o;)V

    iput-object v0, p0, Lcom/iflytek/ui/o;->z:Lcom/iflytek/a/a$b;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "leftcancel="

    invoke-static {p2, v0, v3}, Lcom/iflytek/ui/o;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/ui/o;->t:Z

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/iflytek/speech/SpeechRecognizer;->createRecognizer(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/o;->o:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.iflytek.isr.showhelp"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/ui/o;->s:Z

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->f()V

    new-instance v0, Lcom/iflytek/a/a;

    invoke-direct {v0, p1}, Lcom/iflytek/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/ui/o;->y:Lcom/iflytek/a/a;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/ui/o;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/ui/o;->x:I

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object v0, v2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Lcom/iflytek/speech/SpeechError;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    iget-object v0, v0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    iget-boolean v1, p0, Lcom/iflytek/ui/o;->f:Z

    invoke-virtual {p1, v1}, Lcom/iflytek/speech/SpeechError;->getErrorDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/A;->a(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/iflytek/c/a;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/ui/o;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/iflytek/speech/SpeechError;->getOperation()Lcom/iflytek/speech/SpeechError$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/ui/o;->g:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->c:Lcom/iflytek/speech/SpeechError$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/speech/SpeechError$a;->b:Lcom/iflytek/speech/SpeechError$a;

    :cond_0
    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->c:Lcom/iflytek/speech/SpeechError$a;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/iflytek/ui/o;->l()V

    :cond_1
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/ui/o;->x:I

    return-void

    :cond_2
    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->a:Lcom/iflytek/speech/SpeechError$a;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/iflytek/ui/o;->k()V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->b:Lcom/iflytek/speech/SpeechError$a;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/iflytek/ui/o;->m()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/ui/o;Lcom/iflytek/speech/SpeechError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/ui/o;->a(Lcom/iflytek/speech/SpeechError;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/ui/o;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/ui/o;->d(Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/iflytek/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 p2, 0x1

    :cond_1
    :goto_0
    return p2

    :cond_2
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    const/4 p2, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/ui/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/ui/o;->i()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/d;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    invoke-virtual {v0, v5}, Lcom/iflytek/ui/d;->a(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    invoke-virtual {v0}, Lcom/iflytek/ui/d;->b()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v6, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    invoke-virtual {v1, v0}, Lcom/iflytek/ui/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v6, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/iflytek/ui/o;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->k:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/iflytek/ui/o;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/ui/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/ui/o;->j()V

    return-void
.end method

.method static synthetic d(Lcom/iflytek/ui/o;)Lcom/iflytek/ui/RecognizerDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/o;->u:Lcom/iflytek/ui/RecognizerDialogListener;

    return-object v0
.end method

.method private d(Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    const-string v1, "more_blank"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/iflytek/ui/w;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    invoke-virtual {v2, p1}, Lcom/iflytek/ui/d;->a(Z)V

    if-eqz p1, :cond_0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    invoke-virtual {v3, v2}, Lcom/iflytek/ui/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "morebuttonmarginleft"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "morebuttonmargintop"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "morebuttonmarginright"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/ui/x;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v6

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "morebuttonmarginbottom"

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/ui/x;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/iflytek/ui/o;->h:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "more_expanded"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/iflytek/ui/w;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/ui/o;->k:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/iflytek/ui/o;->m:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/iflytek/ui/o;->m:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLines(I)V

    iget-object v2, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    invoke-virtual {v3, v2}, Lcom/iflytek/ui/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v6, 0x5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/iflytek/ui/o;->h:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/iflytek/ui/o;->h:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "more_collapsed"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/iflytek/ui/w;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/ui/o;->k:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/iflytek/ui/o;->y:Lcom/iflytek/a/a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/ui/o;->y:Lcom/iflytek/a/a;

    invoke-virtual {v2}, Lcom/iflytek/a/a;->d()V

    :cond_1
    iget-object v2, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/iflytek/ui/o;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/o;->m:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/ui/o;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/ui/o;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    return-object v0
.end method

.method private g()V
    .locals 5

    iget-wide v0, p0, Lcom/iflytek/ui/o;->v:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/ui/o;->v:J

    iget-wide v2, p0, Lcom/iflytek/ui/o;->v:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/o;->o:Lcom/iflytek/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/iflytek/ui/o;->w:Lcom/iflytek/speech/RecognizerListener;

    iget-object v2, p0, Lcom/iflytek/ui/o;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/ui/o;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/ui/o;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/speech/SpeechRecognizer;->startListening(Lcom/iflytek/speech/RecognizerListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/ui/o;->i()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/iflytek/ui/o;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/o;->k:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x5

    iget-boolean v0, p0, Lcom/iflytek/ui/o;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    invoke-static {v2}, Lcom/iflytek/c/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/d;->a(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v4, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    invoke-virtual {v1, v0}, Lcom/iflytek/ui/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/iflytek/ui/o;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/o;->p:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/d;->b(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput v3, p0, Lcom/iflytek/ui/o;->x:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/d;->b(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private i()V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    iget-object v0, v0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    invoke-virtual {v0}, Lcom/iflytek/ui/A;->b()V

    iget-boolean v0, p0, Lcom/iflytek/ui/o;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-static {v3}, Lcom/iflytek/c/a;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/ui/o;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iput v3, p0, Lcom/iflytek/ui/o;->x:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    iget-object v0, v0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    invoke-virtual {v0}, Lcom/iflytek/ui/A;->c()V

    invoke-static {v3}, Lcom/iflytek/c/a;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/ui/o;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iput v3, p0, Lcom/iflytek/ui/o;->x:I

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/iflytek/ui/o;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    new-instance v1, Lcom/iflytek/ui/l;

    invoke-direct {v1, p0}, Lcom/iflytek/ui/l;-><init>(Lcom/iflytek/ui/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/o;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/ui/o;->d(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    new-instance v1, Lcom/iflytek/ui/m;

    invoke-direct {v1, p0}, Lcom/iflytek/ui/m;-><init>(Lcom/iflytek/ui/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private m()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-static {v2}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private n()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/ui/o;->s:Z

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.iflytek.isr.showhelp"

    iget-boolean v2, p0, Lcom/iflytek/ui/o;->s:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/o;->o:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SpeechRecognizer;->setRecordInterval(I)V

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/o;->o:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SpeechRecognizer;->setSampleRate(Lcom/iflytek/speech/SpeechConfig$RATE;)V

    return-void
.end method

.method public a(Lcom/iflytek/ui/RecognizerDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/o;->u:Lcom/iflytek/ui/RecognizerDialogListener;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/iflytek/ui/o;->p:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/ui/o;->q:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/ui/o;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/ui/o;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/o;->p:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/iflytek/c/a;->c(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/d;->b([Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/iflytek/c/a;->c(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/d;->b([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/ui/o;->g:Z

    return-void
.end method

.method public b(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/o;->o:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SpeechRecognizer;->getDownflowBytes(Z)I

    move-result v0

    return v0
.end method

.method public c(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/o;->o:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SpeechRecognizer;->getUpflowBytes(Z)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/iflytek/ui/h;->c()V

    iget-boolean v0, p0, Lcom/iflytek/ui/o;->s:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/ui/o;->h()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Recognizer Button Click"

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/ui/o;->g()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/o;->o:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechRecognizer;->cancel()V

    iget-object v0, p0, Lcom/iflytek/ui/o;->y:Lcom/iflytek/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/o;->y:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->d()V

    :cond_0
    const/4 v0, 0x5

    iget v1, p0, Lcom/iflytek/ui/o;->x:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    invoke-virtual {v0}, Lcom/iflytek/ui/d;->b()V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-super {p0}, Lcom/iflytek/ui/h;->d()V

    return-void
.end method

.method protected e()Z
    .locals 2

    invoke-super {p0}, Lcom/iflytek/ui/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/o;->o:Lcom/iflytek/speech/SpeechRecognizer;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechRecognizer;->Destory(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 10

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v0, p0, Lcom/iflytek/ui/o;->t:Z

    if-nez v0, :cond_0

    const-string v0, "recognizer"

    invoke-static {v3, v0, p0}, Lcom/iflytek/ui/w;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    :goto_0
    const-string v0, "container"

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/o;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    const-string v4, "drawablepanelbackground"

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/ui/x;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "frameworkwidth"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "frameworkheight"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/ui/x;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/iflytek/ui/d;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/iflytek/c/a;->c(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/iflytek/ui/d;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    iget-object v1, p0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    const/4 v4, 0x0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "control"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/o;->h:Landroid/view/View;

    const-string v0, "recognize"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "heightbutton"

    invoke-virtual {v1, v4, v5}, Lcom/iflytek/ui/x;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    const-string v4, "buttoncolor"

    invoke-virtual {v1, v4}, Lcom/iflytek/ui/x;->c(Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fontsizebutton"

    invoke-virtual {v1, v4, v5}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    const-string v0, "cancel"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "heightbutton"

    invoke-virtual {v1, v4, v5}, Lcom/iflytek/ui/x;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    const-string v4, "buttoncolor"

    invoke-virtual {v1, v4}, Lcom/iflytek/ui/x;->c(Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fontsizebutton"

    invoke-virtual {v1, v4, v5}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/iflytek/ui/o;->t:Z

    if-nez v4, :cond_1

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "buttonleftmarginleft"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "buttonleftmargintop"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v6

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "buttonleftmarginright"

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v7

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "buttonleftmarginbottom"

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "buttonrightmarginleft"

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "buttonrightmargintop"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "buttonrightmarginright"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v6

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "buttonrightmarginbottom"

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    const-string v0, "more"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/o;->k:Landroid/view/View;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v0

    const-string v1, "morebuttoncolor"

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/x;->b(Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const-string v0, "more_item_bg.xml"

    invoke-static {v3, v0}, Lcom/iflytek/ui/w;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v0, "retrieve"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/o;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/o;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->n:Landroid/widget/Button;

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->n:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->n:Landroid/widget/Button;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->n:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "fontsizemore"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextSize(F)V

    const-string v0, "more_item_bg.xml"

    invoke-static {v3, v0}, Lcom/iflytek/ui/w;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v0, "playback"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/o;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/o;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->m:Landroid/widget/Button;

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->m:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->m:Landroid/widget/Button;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->m:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "fontsizemore"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextSize(F)V

    const-string v0, "more_item_bg.xml"

    invoke-static {v3, v0}, Lcom/iflytek/ui/w;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v0, "retry"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/o;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/o;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->l:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->l:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->l:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fontsizemore"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    :goto_2
    return-void

    :cond_0
    const-string v0, "recognizer_exchange"

    invoke-static {v3, v0, p0}, Lcom/iflytek/ui/w;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "buttonleftmarginleft"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "buttonleftmargintop"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v6

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "buttonleftmarginright"

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v7

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "buttonleftmarginbottom"

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "buttonrightmarginleft"

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "buttonrightmargintop"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "buttonrightmarginright"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v6

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "buttonrightmarginbottom"

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/ui/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/iflytek/ui/o;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Recognizer Button Click,State = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/iflytek/ui/o;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/ui/o;->x:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/ui/o;->n()V

    invoke-direct {p0}, Lcom/iflytek/ui/o;->g()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/ui/o;->g()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/ui/o;->o:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechRecognizer;->stopListening()V

    invoke-direct {p0}, Lcom/iflytek/ui/o;->j()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/o;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x5

    iget v1, p0, Lcom/iflytek/ui/o;->x:I

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/iflytek/msc/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/ui/o;->d()V

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/ui/o;->l:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/ui/o;->y:Lcom/iflytek/a/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/ui/o;->y:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->d()V

    :cond_4
    invoke-direct {p0}, Lcom/iflytek/ui/o;->g()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/iflytek/ui/o;->m:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/iflytek/ui/o;->y:Lcom/iflytek/a/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/ui/o;->y:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->d()V

    :cond_6
    iget-object v0, p0, Lcom/iflytek/ui/o;->m:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->o:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechRecognizer;->d()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/ui/o;->o:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechRecognizer;->e()I

    move-result v1

    new-instance v2, Lcom/iflytek/a/c;

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v5, v4}, Lcom/iflytek/a/c;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/iflytek/a/c;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    iget-object v0, p0, Lcom/iflytek/ui/o;->y:Lcom/iflytek/a/a;

    iget-object v1, p0, Lcom/iflytek/ui/o;->z:Lcom/iflytek/a/a$b;

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/a/a;->a(Lcom/iflytek/a/c;Lcom/iflytek/a/a$b;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/iflytek/ui/o;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u51fa\u9519"

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/iflytek/ui/o;->n:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/o;->o:Lcom/iflytek/speech/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechRecognizer;->d()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    iget-object v0, p0, Lcom/iflytek/ui/o;->y:Lcom/iflytek/a/a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iflytek/ui/o;->y:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->d()V

    :cond_8
    iget-object v0, p0, Lcom/iflytek/ui/o;->o:Lcom/iflytek/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/iflytek/ui/o;->w:Lcom/iflytek/speech/RecognizerListener;

    iget-object v3, p0, Lcom/iflytek/ui/o;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/ui/o;->q:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/ui/o;->r:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/speech/SpeechRecognizer;->a(Lcom/iflytek/speech/RecognizerListener;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/iflytek/ui/o;->j()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
