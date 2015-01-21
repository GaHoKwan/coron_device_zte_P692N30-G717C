.class public Laoz;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/view/View;

.field private a:Landroid/view/ViewGroup;

.field private a:Lapb;

.field private a:Lcom/sohu/inputmethod/sogou/ComposingView;

.field private a:Z

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Lapb;

    invoke-direct {v0, p0, v2}, Lapb;-><init>(Laoz;Lapa;)V

    iput-object v0, p0, Laoz;->a:Lapb;

    .line 25
    iput v1, p0, Laoz;->a:I

    .line 26
    iput-boolean v1, p0, Laoz;->a:Z

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Laoz;->b:I

    .line 33
    iput-object p1, p0, Laoz;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Laoz;->a:Landroid/view/View;

    .line 36
    invoke-virtual {p0, v1}, Laoz;->setClippingEnabled(Z)V

    .line 37
    invoke-virtual {p0, v2}, Laoz;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Laoz;->setInputMethodMode(I)V

    .line 40
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 42
    const v1, 0x7f03001c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Laoz;->a:Landroid/view/ViewGroup;

    .line 43
    iget-object v0, p0, Laoz;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0700b9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/ComposingView;

    iput-object v0, p0, Laoz;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    .line 44
    iget-object v0, p0, Laoz;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Laoz;->setContentView(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method static synthetic a(Laoz;)I
    .locals 1
    .parameter

    .prologue
    .line 13
    iget v0, p0, Laoz;->a:I

    return v0
.end method

.method static synthetic a(Laoz;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Laoz;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Laoz;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Laoz;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic a(Laoz;)Z
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-boolean v0, p0, Laoz;->a:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/sohu/inputmethod/sogou/ComposingView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Laoz;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Laoz;->a:Lapb;

    invoke-virtual {v0}, Lapb;->b()V

    .line 61
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iput p1, p0, Laoz;->a:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoz;->a:Z

    .line 70
    return-void
.end method

.method public a(Laou;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p1}, Laou;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoz;->a:Lcom/sohu/inputmethod/sogou/ComposingView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/ComposingView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Laoz;->a:Lapb;

    invoke-virtual {v0}, Lapb;->b()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Laoz;->a:Lapb;

    invoke-virtual {v0}, Lapb;->a()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Laoz;->a:Lapb;

    invoke-virtual {v0}, Lapb;->a()V

    .line 65
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoz;->a:Z

    .line 74
    return-void
.end method
