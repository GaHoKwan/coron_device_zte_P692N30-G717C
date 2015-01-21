.class public Lls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkq;


# instance fields
.field private a:F

.field private a:I

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Intent;

.field private a:Landroid/graphics/Bitmap;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/LayoutInflater;

.field private a:Landroid/view/View;

.field private a:Landroid/view/ViewGroup;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/ProgressBar;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

.field private a:Ljava/lang/String;

.field private a:Lkr;

.field private a:Lld;

.field private a:Lls;

.field private a:Ln;

.field private final a:Z

.field private a:[Llc;

.field private b:I

.field private b:Landroid/app/AlertDialog;

.field private b:Landroid/widget/ImageView;

.field private b:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private c:Landroid/app/AlertDialog;

.field private c:Landroid/widget/ImageView;

.field private c:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/app/AlertDialog;

.field private d:Landroid/widget/ImageView;

.field private d:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private d:Z

.field private e:Landroid/widget/ImageView;

.field private e:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/LinearLayout;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/LinearLayout;

.field private k:Ljava/lang/String;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v2, p0, Lls;->a:Z

    .line 58
    iput-object v1, p0, Lls;->a:Lld;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Llc;

    iput-object v0, p0, Lls;->a:[Llc;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lls;->b:Ljava/lang/String;

    .line 105
    iput-boolean v2, p0, Lls;->c:Z

    .line 106
    iput-boolean v2, p0, Lls;->d:Z

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lls;->e:Z

    .line 108
    iput-object v1, p0, Lls;->a:Lkr;

    .line 115
    iput-object v1, p0, Lls;->c:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lls;->d:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lls;->e:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lls;->f:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lls;->g:Ljava/lang/String;

    .line 120
    const/high16 v0, -0x4080

    iput v0, p0, Lls;->a:F

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lls;->a:I

    .line 122
    iput-object v1, p0, Lls;->h:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lls;->i:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lls;->j:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lls;->k:Ljava/lang/String;

    .line 165
    iput v2, p0, Lls;->b:I

    .line 166
    iput v2, p0, Lls;->c:I

    .line 168
    iput-boolean v2, p0, Lls;->f:Z

    .line 727
    new-instance v0, Llx;

    invoke-direct {v0, p0}, Llx;-><init>(Lls;)V

    iput-object v0, p0, Lls;->a:Landroid/os/Handler;

    .line 172
    iput-object p1, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    .line 173
    iput-object p2, p0, Lls;->a:Landroid/content/Intent;

    .line 174
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lls;->a:Landroid/view/LayoutInflater;

    .line 176
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    invoke-static {v0}, Lkr;->a(Landroid/content/Context;)Lkr;

    move-result-object v0

    iput-object v0, p0, Lls;->a:Lkr;

    .line 177
    iput-object p0, p0, Lls;->a:Lls;

    .line 178
    return-void
.end method

.method static synthetic a(Lls;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lls;->b:I

    return v0
.end method

.method static synthetic a(Lls;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lls;->b:I

    return p1
.end method

.method static synthetic a(Lls;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lls;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lls;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lls;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lls;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    return-object v0
.end method

.method static synthetic a(Lls;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lls;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lls;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lls;)Lkr;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->a:Lkr;

    return-object v0
.end method

.method static synthetic a(Lls;)Lld;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->a:Lld;

    return-object v0
.end method

.method static synthetic a(Lls;)Lls;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->a:Lls;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 1215
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1216
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1217
    return-void
.end method

.method private a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1094
    iget-object v0, p0, Lls;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lls;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1096
    iget-object v0, p0, Lls;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1098
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 957
    iget-object v0, p0, Lls;->a:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lls;->a:Landroid/app/AlertDialog;

    .line 960
    :cond_0
    iget-object v0, p0, Lls;->a:Landroid/app/AlertDialog;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 961
    iget-object v0, p0, Lls;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v3, 0x7f0b02ab

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lly;

    invoke-direct {v3, p0}, Lly;-><init>(Lls;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 969
    iget-object v0, p0, Lls;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 970
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 971
    iget-object v0, p0, Lls;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 972
    :cond_1
    return-void
.end method

.method static synthetic a(Lls;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lls;->c()V

    return-void
.end method

.method static synthetic a(Lls;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lls;->a(I)V

    return-void
.end method

.method static synthetic a(Lls;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lls;->a(II)V

    return-void
.end method

.method static synthetic a(Lls;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lls;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ln;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 261
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Lls;->a:Landroid/os/Handler;

    invoke-static {v0, p1, p2, v1, p0}, Lle;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Ln;Ljava/lang/String;Landroid/os/Handler;Lkq;)Lld;

    move-result-object v0

    iput-object v0, p0, Lls;->a:Lld;

    .line 264
    iget-object v0, p0, Lls;->a:Lld;

    invoke-virtual {v0}, Lld;->a()Ljava/lang/CharSequence;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lls;->b:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lls;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lls;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lls;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lls;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lls;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lls;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lls;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const-string v1, "http://10.1.60.32/web/index.php?"

    .line 274
    iget-object v0, p0, Lls;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lls;->b:Ljava/lang/String;

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->F()Ljava/lang/String;

    move-result-object v0

    .line 276
    sget-object v2, Laox;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    if-eqz v0, :cond_0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lls;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "un="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lls;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lls;->b:Ljava/lang/String;

    .line 281
    :cond_0
    iget-object v0, p0, Lls;->a:[Llc;

    new-instance v1, Llc;

    iget-object v2, p0, Lls;->a:Lld;

    invoke-direct {v1, v2, v5}, Llc;-><init>(Lld;I)V

    aput-object v1, v0, v5

    .line 282
    iget-object v0, p0, Lls;->a:[Llc;

    new-instance v1, Llc;

    iget-object v2, p0, Lls;->a:Lld;

    invoke-direct {v1, v2, v6}, Llc;-><init>(Lld;I)V

    aput-object v1, v0, v6

    .line 283
    iget-object v0, p0, Lls;->a:[Llc;

    new-instance v1, Llc;

    iget-object v2, p0, Lls;->a:Lld;

    invoke-direct {v1, v2, v7}, Llc;-><init>(Lld;I)V

    aput-object v1, v0, v7

    .line 284
    iget-object v0, p0, Lls;->a:[Llc;

    new-instance v1, Llc;

    iget-object v2, p0, Lls;->a:Lld;

    invoke-direct {v1, v2, v8}, Llc;-><init>(Lld;I)V

    aput-object v1, v0, v8

    .line 285
    iget-object v0, p0, Lls;->a:[Llc;

    const/4 v1, 0x4

    new-instance v2, Llc;

    iget-object v3, p0, Lls;->a:Lld;

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Llc;-><init>(Lld;I)V

    aput-object v2, v0, v1

    .line 286
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    iget-object v1, p0, Lls;->a:[Llc;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lls;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lls;->a:[Llc;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lls;->p:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lls;->a:[Llc;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lls;->n:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lls;->a:[Llc;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lls;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lls;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lls;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 300
    :cond_1
    iget-object v1, p0, Lls;->c:Ljava/lang/String;

    iget-object v2, p0, Lls;->d:Ljava/lang/String;

    iget-object v3, p0, Lls;->e:Ljava/lang/String;

    iget-object v4, p0, Lls;->f:Ljava/lang/String;

    iget-object v5, p0, Lls;->g:Ljava/lang/String;

    iget v6, p0, Lls;->a:F

    iget v7, p0, Lls;->a:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lls;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V

    .line 301
    :cond_2
    iget-object v0, p0, Lls;->j:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lls;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 302
    :cond_3
    iget-object v0, p0, Lls;->j:Ljava/lang/String;

    iget-object v1, p0, Lls;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lls;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_4
    iget-boolean v0, p0, Lls;->d:Z

    if-eqz v0, :cond_5

    .line 304
    invoke-direct {p0}, Lls;->c()V

    .line 305
    :cond_5
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 628
    if-eqz p1, :cond_0

    .line 629
    const-string v1, "null"

    .line 630
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v0

    .line 631
    :cond_1
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 641
    invoke-direct {p0, p1}, Lls;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v0

    .line 642
    :cond_1
    invoke-direct {p0, p2}, Lls;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 643
    invoke-direct {p0, p4}, Lls;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    invoke-direct {p0, p5}, Lls;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    const/4 v1, 0x0

    cmpl-float v1, p6, v1

    if-gtz v1, :cond_0

    if-gtz p7, :cond_0

    .line 647
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lls;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lls;->d:Z

    return p1
.end method

.method static synthetic b(Lls;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lls;->c:I

    return v0
.end method

.method static synthetic b(Lls;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lls;->c:I

    return p1
.end method

.method static synthetic b(Lls;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lls;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lls;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f07018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->a:Landroid/widget/LinearLayout;

    .line 215
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f07018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->b:Landroid/widget/LinearLayout;

    .line 216
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f07017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lls;->a:Landroid/widget/TextView;

    .line 217
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f07018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lls;->b:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f07018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lls;->a:Landroid/widget/ImageView;

    .line 221
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->c:Landroid/widget/LinearLayout;

    .line 222
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f07019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->d:Landroid/widget/LinearLayout;

    .line 223
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f07019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->e:Landroid/widget/LinearLayout;

    .line 224
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f07019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->f:Landroid/widget/LinearLayout;

    .line 225
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f07019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lls;->c:Landroid/widget/TextView;

    .line 226
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f07018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->g:Landroid/widget/LinearLayout;

    .line 227
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->h:Landroid/widget/LinearLayout;

    .line 228
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f07018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->i:Landroid/widget/LinearLayout;

    .line 229
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lls;->a:Landroid/view/ViewGroup;

    .line 230
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lls;->b:Landroid/widget/ImageView;

    .line 231
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lls;->d:Landroid/widget/TextView;

    .line 233
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lls;->e:Landroid/widget/TextView;

    .line 234
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070192

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->m:Landroid/widget/LinearLayout;

    .line 235
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lls;->g:Landroid/widget/TextView;

    .line 236
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lls;->a:Landroid/widget/Button;

    .line 237
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->j:Landroid/widget/LinearLayout;

    .line 238
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->k:Landroid/widget/LinearLayout;

    .line 239
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lls;->c:Landroid/widget/ImageView;

    .line 240
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lls;->d:Landroid/widget/ImageView;

    .line 241
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lls;->e:Landroid/widget/ImageView;

    .line 245
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->n:Landroid/widget/LinearLayout;

    .line 246
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->o:Landroid/widget/LinearLayout;

    .line 247
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->p:Landroid/widget/LinearLayout;

    .line 248
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lls;->h:Landroid/widget/TextView;

    .line 249
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lls;->i:Landroid/widget/TextView;

    .line 250
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lls;->a:Landroid/widget/ProgressBar;

    .line 251
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lls;->l:Landroid/widget/LinearLayout;

    .line 252
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    const v1, 0x7f070198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lls;->f:Landroid/widget/TextView;

    .line 253
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lls;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 975
    iget-object v0, p0, Lls;->d:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 976
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lls;->d:Landroid/app/AlertDialog;

    .line 978
    :cond_0
    iget-object v0, p0, Lls;->d:Landroid/app/AlertDialog;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 979
    iget-object v0, p0, Lls;->d:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v3, 0x7f0b03db

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Llz;

    invoke-direct {v3, p0}, Llz;-><init>(Lls;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 989
    iget-object v0, p0, Lls;->d:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v3, 0x7f0b03dc

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lma;

    invoke-direct {v3, p0}, Lma;-><init>(Lls;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 996
    iget-object v0, p0, Lls;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 997
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 998
    iget-object v0, p0, Lls;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 999
    :cond_1
    return-void
.end method

.method static synthetic b(Lls;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lls;->d()V

    return-void
.end method

.method static synthetic b(Lls;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lls;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lls;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lls;->c:Z

    return p1
.end method

.method static synthetic c(Lls;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lls;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->p:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lls;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const v4, 0x7f0b03cf

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v1, 0x8

    .line 652
    iget-object v0, p0, Lls;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lls;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lls;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lls;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lls;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lls;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 660
    iget-object v0, p0, Lls;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 661
    iget-boolean v0, p0, Lls;->e:Z

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 663
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 664
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v4}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lls;->h:Ljava/lang/String;

    .line 666
    :cond_0
    iget-object v0, p0, Lls;->d:Landroid/widget/LinearLayout;

    new-instance v1, Llt;

    invoke-direct {v1, p0}, Llt;-><init>(Lls;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    iget-object v0, p0, Lls;->e:Landroid/widget/LinearLayout;

    new-instance v1, Llv;

    invoke-direct {v1, p0}, Llv;-><init>(Lls;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1002
    iget-object v0, p0, Lls;->b:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1003
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lls;->b:Landroid/app/AlertDialog;

    .line 1005
    :cond_0
    iget-object v0, p0, Lls;->b:Landroid/app/AlertDialog;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1006
    iget-object v0, p0, Lls;->b:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v3, 0x7f0b03db

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmb;

    invoke-direct {v3, p0}, Lmb;-><init>(Lls;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1041
    iget-object v0, p0, Lls;->b:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v3, 0x7f0b03dc

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmc;

    invoke-direct {v3, p0}, Lmc;-><init>(Lls;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1051
    iget-object v0, p0, Lls;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1052
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1053
    iget-object v0, p0, Lls;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1054
    :cond_1
    return-void
.end method

.method static synthetic c(Lls;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lls;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lls;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lls;->f:Z

    return p1
.end method

.method static synthetic d(Lls;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lls;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 694
    iget-object v0, p0, Lls;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lls;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lls;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lls;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lls;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 700
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Llw;

    invoke-direct {v1, p0}, Llw;-><init>(Lls;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 707
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 708
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1057
    iget-object v0, p0, Lls;->c:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1058
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lls;->c:Landroid/app/AlertDialog;

    .line 1060
    :cond_0
    iget-object v0, p0, Lls;->c:Landroid/app/AlertDialog;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1061
    iget-object v0, p0, Lls;->c:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v3, 0x7f0b02ab

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Llu;

    invoke-direct {v3, p0}, Llu;-><init>(Lls;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1087
    iget-object v0, p0, Lls;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1088
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1089
    iget-object v0, p0, Lls;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1090
    :cond_1
    return-void
.end method

.method static synthetic d(Lls;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lls;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1117
    return-void
.end method

.method static synthetic e(Lls;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lls;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lls;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Z)Landroid/view/View;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 181
    iput-boolean p1, p0, Lls;->b:Z

    .line 182
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 183
    iput-object v3, p0, Lls;->a:Landroid/view/View;

    .line 184
    iget-object v1, p0, Lls;->a:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Lls;->b:Z

    if-eqz v0, :cond_1

    const v0, 0x7f03004a

    :goto_0
    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lls;->a:Landroid/view/View;

    .line 185
    invoke-direct {p0}, Lls;->b()V

    .line 187
    iget-object v0, p0, Lls;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lls;->a:Landroid/content/Intent;

    const-string v1, "START_SOGOU_RESULTACTIVITY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lls;->a:Landroid/content/Intent;

    const-string v1, "SOGOU_DIMCODE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-array v1, v2, [Lp;

    .line 193
    new-array v2, v2, [B

    .line 194
    new-instance v3, Ln;

    sget-object v4, La;->a:La;

    invoke-direct {v3, v0, v2, v1, v4}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;)V

    iput-object v3, p0, Lls;->a:Ln;

    .line 196
    const-string v0, "THEME_TYPE"

    iput-object v0, p0, Lls;->a:Ljava/lang/String;

    .line 207
    :goto_1
    iget-object v0, p0, Lls;->a:Ln;

    iget-object v1, p0, Lls;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lls;->a(Ln;Ljava/lang/String;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lls;->a:Landroid/view/View;

    return-object v0

    .line 184
    :cond_1
    const v0, 0x7f03004b

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lls;->a:Landroid/content/Intent;

    const-string v1, "SCAN_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;

    .line 200
    new-instance v0, Ln;

    invoke-virtual {v7}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()[B

    move-result-object v2

    invoke-virtual {v7}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()[Lp;

    move-result-object v3

    invoke-virtual {v7}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()La;

    move-result-object v4

    invoke-virtual {v7}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;J)V

    iput-object v0, p0, Lls;->a:Ln;

    .line 205
    invoke-virtual {v7}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lls;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lls;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Llc;
    .locals 1
    .parameter

    .prologue
    .line 690
    iget-object v0, p0, Lls;->a:[Llc;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 946
    iget-object v0, p0, Lls;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lls;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 948
    iput-object v1, p0, Lls;->a:Landroid/graphics/Bitmap;

    .line 951
    :cond_0
    iget-object v0, p0, Lls;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lls;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 954
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1204
    const-string v0, "=======onDownloadError=========="

    invoke-direct {p0, v0}, Lls;->e(Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Lku;->b:I

    .line 1208
    :cond_0
    iget-object v0, p0, Lls;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1209
    iget-object v0, p0, Lls;->a:Landroid/os/Handler;

    const/16 v1, 0xe0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1211
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lls;->f:Z

    .line 1212
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1122
    const-string v0, "===========onPrepareDownload============"

    invoke-direct {p0, v0}, Lls;->e(Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lls;->a:Landroid/os/Handler;

    const/16 v1, 0xdc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1124
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lku;->b:I

    .line 1128
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x433c

    const/high16 v4, 0x4000

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lls;->a:Lld;

    check-cast v0, Llr;

    invoke-virtual {v0, v1}, Llr;->a(Z)V

    .line 309
    iput-boolean v1, p0, Lls;->d:Z

    .line 310
    iput-boolean v6, p0, Lls;->e:Z

    .line 311
    sget-object v0, Laox;->ar:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lls;->a:Landroid/graphics/Bitmap;

    .line 312
    iget-object v0, p0, Lls;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lls;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lls;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lls;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lls;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lls;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lls;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 321
    iget-object v0, p0, Lls;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget-object v2, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v2}, Laox;->a(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v2, v0

    .line 322
    iget-object v0, p0, Lls;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget-object v3, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v3}, Laox;->a(Landroid/content/Context;)F

    move-result v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 323
    const/16 v3, 0x4c

    if-lt v2, v3, :cond_0

    const/16 v3, 0x2f

    if-ge v0, v3, :cond_1

    .line 324
    :cond_0
    iget-object v3, p0, Lls;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    const/4 v3, 0x0

    iput-object v3, p0, Lls;->a:Landroid/graphics/Bitmap;

    .line 328
    :cond_1
    :goto_0
    iget-object v3, p0, Lls;->a:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 329
    const/16 v3, 0x99

    if-le v2, v3, :cond_3

    const/16 v2, 0x99

    .line 330
    :goto_1
    const/16 v3, 0x5e

    if-le v0, v3, :cond_4

    const/16 v0, 0x5e

    .line 331
    :goto_2
    iget-object v3, p0, Lls;->a:Landroid/graphics/Bitmap;

    invoke-static {v3, v2, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lls;->a:Landroid/graphics/Bitmap;

    .line 332
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lls;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 333
    iget-object v0, p0, Lls;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lls;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    iget-object v0, p0, Lls;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lls;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 349
    :goto_3
    iget-object v0, p0, Lls;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iput-object p1, p0, Lls;->j:Ljava/lang/String;

    .line 351
    iput-object p2, p0, Lls;->k:Ljava/lang/String;

    .line 352
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 353
    iget-object v0, p0, Lls;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    sget-boolean v0, Laox;->a:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lls;->b:Z

    if-nez v0, :cond_2

    .line 355
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 356
    iget-object v1, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 357
    int-to-float v0, v0

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    float-to-int v1, v0

    .line 358
    iget-object v0, p0, Lls;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 359
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 360
    iget-object v0, p0, Lls;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 361
    iget-object v0, p0, Lls;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 363
    :cond_2
    iget-object v0, p0, Lls;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f020157

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 364
    iget-object v0, p0, Lls;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v2, 0x7f0b03cc

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :goto_4
    return-void

    .line 329
    :cond_3
    iget-object v2, p0, Lls;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    goto/16 :goto_1

    .line 330
    :cond_4
    iget-object v0, p0, Lls;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    goto/16 :goto_2

    .line 338
    :cond_5
    iget-object v0, p0, Lls;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 339
    iget-object v2, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x1e0

    if-ge v2, v3, :cond_6

    .line 340
    const/16 v2, 0x40

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 341
    const/16 v2, 0x4a

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 346
    :goto_5
    iget-object v0, p0, Lls;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lls;->a:Landroid/widget/ImageView;

    const v2, 0x7f02008f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 343
    :cond_6
    const/16 v2, 0x90

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 344
    const/16 v2, 0x9a

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_5

    .line 365
    :cond_7
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 366
    iget-object v0, p0, Lls;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    sget-boolean v0, Laox;->a:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lls;->b:Z

    if-nez v0, :cond_8

    .line 368
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 369
    iget-object v1, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 370
    int-to-float v0, v0

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    float-to-int v1, v0

    .line 371
    iget-object v0, p0, Lls;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 372
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 373
    iget-object v0, p0, Lls;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 374
    iget-object v0, p0, Lls;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 376
    :cond_8
    iget-object v0, p0, Lls;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 377
    iget-object v0, p0, Lls;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v2, 0x7f0b03cb

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 379
    :cond_9
    iget-object v0, p0, Lls;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    :cond_a
    move v0, v1

    move v2, v1

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===refreshAPKLogo=========apkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",   apkNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  apkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  appLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",   versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lls;->e(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lls;->a:Lld;

    check-cast v0, Llr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llr;->a(Z)V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lls;->d:Z

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lls;->e:Z

    .line 390
    invoke-direct/range {p0 .. p7}, Lls;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lls;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lls;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lls;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lls;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lls;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lls;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iput-object p3, p0, Lls;->e:Ljava/lang/String;

    .line 471
    :goto_0
    iput-object p5, p0, Lls;->g:Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Lls;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Lls;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    iget v0, v0, Lku;->b:I

    packed-switch v0, :pswitch_data_0

    .line 623
    :cond_0
    :goto_1
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    invoke-static {v0}, Lkr;->a(Landroid/content/Context;)Lkr;

    move-result-object v0

    iget-object v1, p0, Lls;->b:Ljava/lang/String;

    invoke-virtual {v0, p5, p7, v1}, Lkr;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lls;->i:Ljava/lang/String;

    .line 625
    return-void

    .line 399
    :cond_1
    sget-object v0, Laox;->ar:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lls;->a:Landroid/graphics/Bitmap;

    .line 400
    iget-object v0, p0, Lls;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lls;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lls;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lls;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lls;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lls;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lls;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lls;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lls;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 408
    iget-object v0, p0, Lls;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    :goto_2
    invoke-direct {p0, p1}, Lls;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 413
    iget-object v0, p0, Lls;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iput-object p1, p0, Lls;->c:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lls;->a:Lld;

    check-cast v0, Llr;

    iget-object v1, p0, Lls;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llr;->e(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lls;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    :goto_3
    invoke-direct {p0, p3}, Lls;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 428
    iput-object p3, p0, Lls;->e:Ljava/lang/String;

    .line 429
    iget-boolean v0, p0, Lls;->b:Z

    if-eqz v0, :cond_5

    .line 430
    iget-object v0, p0, Lls;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lls;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :goto_4
    iget-object v0, p0, Lls;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    :goto_5
    invoke-direct {p0, p4}, Lls;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 445
    iget-object v0, p0, Lls;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lls;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iput-object p4, p0, Lls;->f:Ljava/lang/String;

    .line 451
    :goto_6
    const/4 v0, 0x0

    cmpl-float v0, p6, v0

    if-lez v0, :cond_a

    .line 452
    iput p6, p0, Lls;->a:F

    .line 453
    float-to-int v2, p6

    .line 454
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_8

    .line 455
    iget-object v0, p0, Lls;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 456
    if-eqz v0, :cond_2

    .line 457
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 454
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 410
    :cond_3
    iget-object v0, p0, Lls;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 418
    :cond_4
    iget-object v0, p0, Lls;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 432
    :cond_5
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v1, 0x7f0b03ce

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 435
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/16 v3, 0x8f

    const/16 v4, 0x90

    const/16 v5, 0x91

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 436
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/16 v3, 0x3c

    const/16 v4, 0x3c

    const/16 v5, 0x3c

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v4, 0x22

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 437
    iget-object v0, p0, Lls;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 441
    :cond_6
    iget-object v0, p0, Lls;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 449
    :cond_7
    iget-object v0, p0, Lls;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 459
    :cond_8
    int-to-float v0, v2

    cmpg-float v0, v0, p6

    if-gez v0, :cond_9

    .line 460
    iget-object v0, p0, Lls;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 461
    if-eqz v0, :cond_9

    .line 462
    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 468
    :cond_9
    :goto_8
    iput p7, p0, Lls;->a:I

    goto/16 :goto_0

    .line 465
    :cond_a
    iget-object v0, p0, Lls;->a:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_8

    .line 497
    :pswitch_0
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const v1, 0x7f0b03cf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 499
    iget-object v0, p0, Lls;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 502
    :pswitch_1
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const v1, 0x7f0b03cf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 504
    iget-object v0, p0, Lls;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 508
    :pswitch_2
    iget-object v0, p0, Lls;->c:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 509
    iget-object v0, p0, Lls;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 510
    iget-object v0, p0, Lls;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lls;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lls;->d:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 514
    iget-object v0, p0, Lls;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 515
    iget-object v0, p0, Lls;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lls;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lls;->h:Landroid/widget/TextView;

    const v1, 0x7f0b03d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 521
    :pswitch_3
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lls;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lls;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lls;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lls;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 529
    iget-object v0, p0, Lls;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 531
    iget-object v0, p0, Lls;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lls;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 533
    iget-object v0, p0, Lls;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 534
    iget-object v0, p0, Lls;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lls;->h:Landroid/widget/TextView;

    const v1, 0x7f0b03d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 536
    iget-object v0, p0, Lls;->i:Landroid/widget/TextView;

    iget v1, p0, Lls;->b:I

    int-to-long v1, v1

    iget v3, p0, Lls;->c:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget v0, p0, Lls;->b:I

    iget v1, p0, Lls;->c:I

    invoke-direct {p0, v0, v1}, Lls;->a(II)V

    goto/16 :goto_1

    .line 541
    :pswitch_4
    iget-object v0, p0, Lls;->o:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lls;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lls;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 546
    iget-object v0, p0, Lls;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 548
    iget-object v0, p0, Lls;->d:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 549
    iget-object v0, p0, Lls;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 550
    iget-object v0, p0, Lls;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lls;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lls;->h:Landroid/widget/TextView;

    const v1, 0x7f0b03d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 554
    iget-object v0, p0, Lls;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lls;->i:Landroid/widget/TextView;

    iget v1, p0, Lls;->b:I

    int-to-long v1, v1

    iget v3, p0, Lls;->c:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget v0, p0, Lls;->b:I

    iget v1, p0, Lls;->c:I

    invoke-direct {p0, v0, v1}, Lls;->a(II)V

    goto/16 :goto_1

    .line 559
    :pswitch_5
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lls;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 561
    iget v0, p0, Lls;->b:I

    iget v1, p0, Lls;->c:I

    invoke-direct {p0, v0, v1}, Lls;->a(II)V

    .line 562
    iget-object v0, p0, Lls;->i:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lls;->c:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 566
    iget-object v0, p0, Lls;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 568
    iget-object v0, p0, Lls;->d:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 569
    iget-object v0, p0, Lls;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 570
    iget-object v0, p0, Lls;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 572
    iget-object v0, p0, Lls;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lls;->h:Landroid/widget/TextView;

    const v1, 0x7f0b03dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 576
    :pswitch_6
    iget v0, p0, Lls;->b:I

    if-lez v0, :cond_b

    iget v0, p0, Lls;->c:I

    if-lez v0, :cond_b

    iget v0, p0, Lls;->b:I

    iget v1, p0, Lls;->c:I

    if-le v0, v1, :cond_b

    .line 577
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lls;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lls;->o:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lls;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 584
    iget-object v0, p0, Lls;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lls;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 587
    iget-object v0, p0, Lls;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 588
    iget-object v0, p0, Lls;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 589
    iget-object v0, p0, Lls;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lls;->h:Landroid/widget/TextView;

    const v1, 0x7f0b03d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 591
    iget-object v0, p0, Lls;->i:Landroid/widget/TextView;

    iget v1, p0, Lls;->b:I

    int-to-long v1, v1

    iget v3, p0, Lls;->c:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget v0, p0, Lls;->b:I

    iget v1, p0, Lls;->c:I

    invoke-direct {p0, v0, v1}, Lls;->a(II)V

    goto/16 :goto_1

    .line 594
    :cond_b
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lls;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lls;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lls;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lls;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lls;->c:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 602
    iget-object v0, p0, Lls;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 604
    iget-object v0, p0, Lls;->d:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 605
    iget-object v0, p0, Lls;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 606
    iget-object v0, p0, Lls;->i:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lls;->h:Landroid/widget/TextView;

    const v1, 0x7f0b03d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 611
    :pswitch_7
    iget-object v0, p0, Lls;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const v1, 0x7f0b03d1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 614
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v1, 0x7f0b03d1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lls;->h:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 616
    iget-object v0, p0, Lls;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 617
    iget-object v0, p0, Lls;->f:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 715
    const/4 v0, 0x0

    .line 716
    iget-object v1, p0, Lls;->a:Lld;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lls;->f:Z

    if-eqz v1, :cond_0

    .line 717
    const-string v0, "tempAPK"

    .line 718
    iget-object v1, p0, Lls;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 719
    iget-object v0, p0, Lls;->i:Ljava/lang/String;

    move-object v1, v0

    .line 720
    :goto_0
    iget-object v0, p0, Lls;->a:Lld;

    check-cast v0, Llr;

    iget-object v2, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, v2, v1}, Llr;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 722
    :cond_0
    return v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lls;->f:Z

    .line 1135
    return-void
.end method

.method public c(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1141
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lku;->b:I

    .line 1144
    :cond_0
    iget-object v0, p0, Lls;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1145
    const/16 v1, 0xdd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1146
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1147
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1148
    iget-object v1, p0, Lls;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lls;->f:Z

    .line 1150
    return-void
.end method

.method public d(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1155
    const-string v0, "===========onPauseDownload============="

    invoke-direct {p0, v0}, Lls;->e(Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lku;->b:I

    .line 1159
    :cond_0
    iget-object v0, p0, Lls;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1160
    const/16 v1, 0xde

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1161
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1162
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1163
    iget-object v1, p0, Lls;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lls;->f:Z

    .line 1167
    return-void
.end method

.method public e(Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1172
    const-string v0, "=============onCancelDownload=========="

    invoke-direct {p0, v0}, Lls;->e(Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Lku;->b:I

    .line 1178
    :cond_0
    iput-boolean v2, p0, Lls;->f:Z

    .line 1179
    iput v2, p0, Lls;->b:I

    .line 1180
    iput v2, p0, Lls;->c:I

    .line 1181
    iget-object v0, p0, Lls;->a:Landroid/os/Handler;

    const/16 v1, 0xe2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1183
    return-void
.end method

.method public f(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========onFinishDownload========totalBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",   currentBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lls;->e(Ljava/lang/String;)V

    .line 1190
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lls;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Lku;->b:I

    .line 1194
    :cond_0
    iget-object v0, p0, Lls;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1195
    const/16 v1, 0xe1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1196
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1197
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1198
    iget-object v1, p0, Lls;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lls;->f:Z

    .line 1200
    return-void
.end method
