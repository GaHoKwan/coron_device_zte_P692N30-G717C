.class public Lajh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x20

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 214
    iget-object v0, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->f(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->f(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;I)I

    .line 222
    :goto_1
    const/16 v0, 0x7d

    .line 223
    iget-object v2, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)I

    move-result v2

    if-lt v2, v3, :cond_2

    .line 224
    iget-object v0, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Z)Z

    .line 225
    iget-object v0, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0, v3}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;I)I

    .line 226
    const/16 v0, 0x3e8

    .line 228
    :cond_2
    iget-object v2, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)I

    move-result v2

    if-gtz v2, :cond_3

    .line 229
    iget-object v2, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v2, v4}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;I)I

    .line 230
    iget-object v2, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Z)Z

    .line 232
    :cond_3
    iget-object v2, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->f(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)I

    move-result v3

    if-eq v3, v4, :cond_4

    iget-object v1, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)I

    move-result v1

    :cond_4
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 233
    iget-object v1, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->f(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 234
    iget-object v1, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/os/Handler;

    iget-object v2, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Ljava/lang/Runnable;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 219
    :cond_5
    iget-object v0, p0, Lajh;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;I)I

    goto :goto_1
.end method
