.class public Lano;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field final synthetic a:Lcom/sohu/inputmethod/settings/ui/PixelPreference;


# direct methods
.method private constructor <init>(Lcom/sohu/inputmethod/settings/ui/PixelPreference;)V
    .locals 2
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lano;->a:Lcom/sohu/inputmethod/settings/ui/PixelPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 302
    iget-object v0, p0, Lano;->a:Lcom/sohu/inputmethod/settings/ui/PixelPreference;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lano;->a:Lcom/sohu/inputmethod/settings/ui/PixelPreference;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->getContext()Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lano;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sohu/inputmethod/settings/ui/PixelPreference;Lann;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lano;-><init>(Lcom/sohu/inputmethod/settings/ui/PixelPreference;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lano;->a:Lcom/sohu/inputmethod/settings/ui/PixelPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a(Lcom/sohu/inputmethod/settings/ui/PixelPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 317
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 322
    if-nez p2, :cond_0

    .line 323
    iget-object v0, p0, Lano;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030020

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 325
    :cond_0
    const v0, 0x7f0700c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/LineView;

    .line 326
    iget-object v1, p0, Lano;->a:Lcom/sohu/inputmethod/settings/ui/PixelPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->b(Lcom/sohu/inputmethod/settings/ui/PixelPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/LineView;->setStrokeWidth(I)V

    .line 327
    iget-object v1, p0, Lano;->a:Lcom/sohu/inputmethod/settings/ui/PixelPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->b(Lcom/sohu/inputmethod/settings/ui/PixelPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lano;->a:Lcom/sohu/inputmethod/settings/ui/PixelPreference;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/ui/PixelPreference;->a(Lcom/sohu/inputmethod/settings/ui/PixelPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/LineView;->setChecked(Z)V

    .line 342
    :goto_0
    return-object p2

    .line 330
    :cond_1
    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/LineView;->setChecked(Z)V

    goto :goto_0
.end method
