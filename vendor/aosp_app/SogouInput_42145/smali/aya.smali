.class public Laya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/voice/VoiceInputView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/voice/VoiceInputView;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Laya;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 166
    sget-object v0, Layc;->a:[I

    iget-object v1, p0, Laya;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v1}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Layl;

    move-result-object v1

    invoke-virtual {v1}, Layl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v0, p0, Laya;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Laxw;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Laxw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_1
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lgt;->c:I

    .line 174
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lgt;->f:J

    .line 175
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    iget-object v1, p0, Laya;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v1}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgt;->a(Landroid/content/Context;)V

    .line 176
    iget-object v0, p0, Laya;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Laxw;

    move-result-object v0

    invoke-virtual {v0}, Laxw;->b()V

    .line 177
    iget-object v0, p0, Laya;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->h()V

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object v0, p0, Laya;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Laxw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laxw;->a(Z)V

    .line 181
    iget-object v0, p0, Laya;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Laxw;

    move-result-object v0

    invoke-virtual {v0}, Laxw;->a()Laxz;

    move-result-object v0

    invoke-interface {v0}, Laxz;->E()V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
