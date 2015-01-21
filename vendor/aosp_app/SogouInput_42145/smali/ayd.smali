.class public Layd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/voice/VoiceInputView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/voice/VoiceInputView;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Layd;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v0, p0, Layd;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Layl;

    move-result-object v0

    sget-object v1, Layl;->a:Layl;

    if-eq v0, v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Layd;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)F

    move-result v0

    .line 215
    iget-object v1, p0, Layd;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v1}, Lcom/sohu/inputmethod/voice/VoiceInputView;->b(Lcom/sohu/inputmethod/voice/VoiceInputView;)F

    move-result v1

    .line 217
    iget-object v2, p0, Layd;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v2}, Lcom/sohu/inputmethod/voice/VoiceInputView;->c(Lcom/sohu/inputmethod/voice/VoiceInputView;)F

    move-result v2

    sub-float/2addr v2, v0

    sub-float v0, v1, v0

    div-float v0, v2, v0

    const/high16 v1, 0x40c0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 218
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 219
    iget-object v0, p0, Layd;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 220
    iget-object v0, p0, Layd;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Layd;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/voice/VoiceInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020128

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v0, p0, Layd;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    .line 225
    packed-switch v1, :pswitch_data_0

    .line 230
    add-int/lit8 v2, v1, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    add-int/lit16 v2, v2, 0x1388

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 233
    :goto_1
    iget-object v0, p0, Layd;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;I)I

    .line 235
    :cond_1
    iget-object v0, p0, Layd;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Layd;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v1}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 227
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    goto :goto_1

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
