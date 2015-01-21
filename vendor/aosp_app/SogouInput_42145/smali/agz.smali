.class public Lagz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lagz;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------------position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "------------ bitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lagz;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lhk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lagz;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lhk;

    move-result-object v0

    iget-object v0, v0, Lhk;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    :cond_0
    :goto_1
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lagz;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 186
    iget-object v0, p0, Lagz;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lagz;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
