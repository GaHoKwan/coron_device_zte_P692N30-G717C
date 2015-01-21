.class public Lcom/sohu/inputmethod/settings/ui/ImagePreference;
.super Landroid/preference/Preference;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/graphics/Bitmap;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/TextView;

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const-string v0, "create image preference"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->b(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 36
    const v2, 0x7f030055

    move-object v1, p1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/LinearLayout;

    .line 37
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0197

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701c8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/ImageView;

    .line 42
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/content/Context;

    const v1, 0x7f02012a

    invoke-static {v0, v1}, Laox;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/graphics/Bitmap;

    .line 43
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/content/Context;

    const v1, 0x7f02012b

    invoke-static {v0, v1}, Laox;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->b:Landroid/graphics/Bitmap;

    .line 44
    invoke-static {p1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->h()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 45
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-static {p1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->D()Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/TextView;

    const v1, 0x7f0b020e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private static final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    :cond_1
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/graphics/Bitmap;

    .line 106
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->b:Landroid/graphics/Bitmap;

    .line 107
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/LinearLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 111
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/TextView;

    .line 112
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/ImageView;

    .line 113
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/LinearLayout;

    .line 114
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/content/Context;

    .line 115
    return-void
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method
