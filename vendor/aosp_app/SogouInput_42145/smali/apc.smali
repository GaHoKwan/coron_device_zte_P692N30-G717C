.class public Lapc;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/view/View;

.field private a:Lape;

.field private a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

.field private a:Z

.field private final b:I

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lape;

    invoke-direct {v0, p0, v2}, Lape;-><init>(Lapc;Lapd;)V

    iput-object v0, p0, Lapc;->a:Lape;

    .line 26
    iput v1, p0, Lapc;->a:I

    .line 27
    iput-boolean v1, p0, Lapc;->a:Z

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lapc;->b:I

    .line 34
    iput-object p1, p0, Lapc;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lapc;->a:Landroid/view/View;

    .line 37
    invoke-virtual {p0, v1}, Lapc;->setClippingEnabled(Z)V

    .line 38
    invoke-virtual {p0, v2}, Lapc;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lapc;->setInputMethodMode(I)V

    .line 41
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lapc;->b:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lapc;->b:Landroid/view/View;

    const v1, 0x7f0700ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    iput-object v0, p0, Lapc;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    .line 48
    iget-object v0, p0, Lapc;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lapc;->setContentView(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lapc;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lapc;->a:I

    return v0
.end method

.method static synthetic a(Lapc;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lapc;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lapc;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lapc;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lapc;)Lcom/sohu/inputmethod/sogou/CandidateCloudView;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lapc;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    return-object v0
.end method

.method static synthetic a(Lapc;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-boolean v0, p0, Lapc;->a:Z

    return v0
.end method

.method static synthetic b(Lapc;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lapc;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/sohu/inputmethod/sogou/CandidateCloudView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lapc;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lapc;->a:Lape;

    invoke-virtual {v0}, Lape;->b()V

    .line 67
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iput p1, p0, Lapc;->a:I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lapc;->a:Z

    .line 72
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    const v0, 0x7f0d0015

    invoke-virtual {p0, v0}, Lapc;->setAnimationStyle(I)V

    .line 61
    :goto_0
    iget-object v0, p0, Lapc;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lapc;->a:Lape;

    invoke-virtual {v0}, Lape;->a()V

    .line 63
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lapc;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapc;->a:Z

    .line 76
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lapc;->a:Lape;

    invoke-virtual {v0}, Lape;->a()V

    .line 80
    return-void
.end method
