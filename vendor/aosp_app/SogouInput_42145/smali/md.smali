.class public Lmd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Intent;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/LayoutInflater;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

.field private a:Ljava/lang/String;

.field private a:Lld;

.field private a:Ln;

.field private a:[Llc;

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Llc;

    iput-object v0, p0, Lmd;->a:[Llc;

    .line 117
    new-instance v0, Lme;

    invoke-direct {v0, p0}, Lme;-><init>(Lmd;)V

    iput-object v0, p0, Lmd;->a:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lmd;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    .line 41
    iput-object p2, p0, Lmd;->a:Landroid/content/Intent;

    .line 42
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lmd;->a:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method

.method private a(Ln;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 93
    iget-object v0, p0, Lmd;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Lmd;->a:Landroid/os/Handler;

    invoke-static {v0, p1, p2, v1}, Lle;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Ln;Ljava/lang/String;Landroid/os/Handler;)Lld;

    move-result-object v0

    iput-object v0, p0, Lmd;->a:Lld;

    .line 96
    iget-object v0, p0, Lmd;->a:Lld;

    invoke-virtual {v0}, Lld;->a()Ljava/lang/CharSequence;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmd;->a:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lmd;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lmd;->a:[Llc;

    new-instance v1, Llc;

    iget-object v2, p0, Lmd;->a:Lld;

    invoke-direct {v1, v2, v4}, Llc;-><init>(Lld;I)V

    aput-object v1, v0, v4

    .line 102
    iget-object v0, p0, Lmd;->a:[Llc;

    new-instance v1, Llc;

    iget-object v2, p0, Lmd;->a:Lld;

    invoke-direct {v1, v2, v3}, Llc;-><init>(Lld;I)V

    aput-object v1, v0, v3

    .line 103
    iget-object v0, p0, Lmd;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmd;->a:Ljava/lang/String;

    const-string v1, "http://weixin.qq.com/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lmd;->a:Landroid/widget/Button;

    iget-object v1, p0, Lmd;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v2, 0x7f0b03c4

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lmd;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lmd;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v2, 0x7f0b03c7

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lmd;->a:Landroid/widget/ImageView;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    iget-object v0, p0, Lmd;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cv:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cv:I

    .line 114
    :goto_0
    iget-object v0, p0, Lmd;->a:Landroid/widget/Button;

    iget-object v1, p0, Lmd;->a:[Llc;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lmd;->a:Landroid/widget/Button;

    iget-object v1, p0, Lmd;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v2, 0x7f0b03d2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lmd;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lmd;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v2, 0x7f0b03c8

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lmd;->a:Landroid/widget/ImageView;

    const v1, 0x7f020123

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 112
    iget-object v0, p0, Lmd;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cx:I

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Landroid/view/View;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lmd;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 47
    iput-object v3, p0, Lmd;->a:Landroid/view/View;

    .line 48
    iget-object v1, p0, Lmd;->a:Landroid/view/LayoutInflater;

    if-eqz p1, :cond_1

    const v0, 0x7f03004c

    :goto_0
    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmd;->a:Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Lmd;->a()V

    .line 51
    iget-object v0, p0, Lmd;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lmd;->a:Landroid/content/Intent;

    const-string v1, "START_SOGOU_RESULTACTIVITY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lmd;->a:Landroid/content/Intent;

    const-string v1, "SOGOU_DIMCODE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    new-array v1, v2, [Lp;

    .line 56
    new-array v2, v2, [B

    .line 57
    new-instance v3, Ln;

    sget-object v4, La;->a:La;

    invoke-direct {v3, v0, v2, v1, v4}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;)V

    iput-object v3, p0, Lmd;->a:Ln;

    .line 59
    const-string v0, "THEME_TYPE"

    iput-object v0, p0, Lmd;->b:Ljava/lang/String;

    .line 70
    :goto_1
    iget-object v0, p0, Lmd;->a:Ln;

    iget-object v1, p0, Lmd;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmd;->a(Ln;Ljava/lang/String;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lmd;->a:Landroid/view/View;

    return-object v0

    .line 48
    :cond_1
    const v0, 0x7f03004d

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lmd;->a:Landroid/content/Intent;

    const-string v1, "SCAN_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;

    .line 63
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

    iput-object v0, p0, Lmd;->a:Ln;

    .line 68
    invoke-virtual {v7}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmd;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(I)Llc;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lmd;->a:[Llc;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lmd;->a:Landroid/view/View;

    const v1, 0x7f07019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmd;->a:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lmd;->a:Landroid/view/View;

    const v1, 0x7f07019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmd;->a:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lmd;->a:Landroid/view/View;

    const v1, 0x7f0701a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmd;->b:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lmd;->a:Landroid/view/View;

    const v1, 0x7f0701a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmd;->a:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lmd;->a:Landroid/view/View;

    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmd;->a:Landroid/widget/LinearLayout;

    .line 83
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lmd;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    return-void
.end method
