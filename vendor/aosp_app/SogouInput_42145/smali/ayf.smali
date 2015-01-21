.class public Layf;
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
    .line 389
    iput-object p1, p0, Layf;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0x7f0b02e3

    const/4 v5, 0x0

    .line 391
    iget-object v0, p0, Layf;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->g()V

    .line 392
    iget-object v0, p0, Layf;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Layf;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    iget-object v1, p0, Layf;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v1}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02e5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Layf;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v4}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Layf;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v2}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Layf;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v3}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v5, v1, v2, v3}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 398
    :cond_0
    return-void
.end method
