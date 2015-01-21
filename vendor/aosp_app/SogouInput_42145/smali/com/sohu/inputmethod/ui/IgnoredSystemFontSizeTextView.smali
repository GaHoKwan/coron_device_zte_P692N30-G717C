.class public Lcom/sohu/inputmethod/ui/IgnoredSystemFontSizeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/sohu/inputmethod/ui/IgnoredSystemFontSizeTextView;->a:Landroid/content/Context;

    .line 22
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/IgnoredSystemFontSizeTextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/ui/IgnoredSystemFontSizeTextView;->setTextSize(F)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object p1, p0, Lcom/sohu/inputmethod/ui/IgnoredSystemFontSizeTextView;->a:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/IgnoredSystemFontSizeTextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/ui/IgnoredSystemFontSizeTextView;->setTextSize(F)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object p1, p0, Lcom/sohu/inputmethod/ui/IgnoredSystemFontSizeTextView;->a:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/IgnoredSystemFontSizeTextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/ui/IgnoredSystemFontSizeTextView;->setTextSize(F)V

    .line 35
    return-void
.end method

.method private a(F)F
    .locals 4
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/IgnoredSystemFontSizeTextView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 55
    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v0, p1, v0

    .line 56
    iget v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 57
    iget v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v1

    .line 58
    div-float/2addr v0, v1

    .line 60
    :cond_0
    return v0
.end method


# virtual methods
.method public setTextSize(F)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/IgnoredSystemFontSizeTextView;->a(F)F

    move-result v0

    .line 43
    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 47
    return-void
.end method
