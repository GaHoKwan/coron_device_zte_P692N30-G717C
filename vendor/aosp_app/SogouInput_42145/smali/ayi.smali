.class public Layi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/voice/VoiceInputView;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/voice/VoiceInputView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Layi;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    iput-object p2, p0, Layi;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 438
    iget-object v0, p0, Layi;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    sget-object v1, Layl;->c:Layl;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;Layl;)Layl;

    .line 439
    iget-object v0, p0, Layi;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->g()V

    .line 440
    iget-object v0, p0, Layi;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->b(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Layi;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    const/4 v1, 0x0

    iget-object v2, p0, Layi;->a:Ljava/lang/String;

    iget-object v3, p0, Layi;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v3}, Lcom/sohu/inputmethod/voice/VoiceInputView;->b(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Layi;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v4}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b02e2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 444
    :cond_0
    return-void
.end method
