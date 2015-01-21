.class public Layb;
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
    .line 619
    iput-object p1, p0, Layb;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Layb;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    sget-object v1, Layl;->c:Layl;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;Layl;)Layl;

    .line 622
    iget-object v0, p0, Layb;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)V

    .line 623
    return-void
.end method
