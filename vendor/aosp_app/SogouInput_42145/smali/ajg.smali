.class public Lajg;
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
    .line 195
    iput-object p1, p0, Lajg;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v3, 0x2710

    .line 197
    iget-object v0, p0, Lajg;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajg;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lajg;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    .line 199
    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v1

    add-int/lit16 v2, v1, 0x3e8

    .line 200
    const/16 v1, 0x7d

    .line 201
    if-le v2, v3, :cond_2

    .line 202
    const/4 v2, 0x0

    .line 204
    :cond_2
    if-ne v2, v3, :cond_3

    .line 205
    const/16 v1, 0x4e2

    .line 207
    :cond_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 208
    iget-object v0, p0, Lajg;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/os/Handler;

    iget-object v2, p0, Lajg;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Ljava/lang/Runnable;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
