.class public Layg;
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
    .line 404
    iput-object p1, p0, Layg;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 406
    iget-object v0, p0, Layg;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->g()V

    .line 407
    iget-object v0, p0, Layg;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Layg;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    const/4 v1, 0x0

    iget-object v2, p0, Layg;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v2}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b02d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Layg;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v3}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Layg;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v4}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b02ae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 412
    :cond_0
    return-void
.end method
