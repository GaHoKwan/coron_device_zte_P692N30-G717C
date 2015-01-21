.class final Lcom/iflytek/speech/SynthesizerPlayer$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/speech/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/SynthesizerPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/speech/SynthesizerPlayer;

.field private b:Lcom/iflytek/speech/SynthesizerPlayerListener;


# direct methods
.method public constructor <init>(Lcom/iflytek/speech/SynthesizerPlayer;Lcom/iflytek/speech/SynthesizerPlayerListener;)V
    .locals 1

    iput-object p1, p0, Lcom/iflytek/speech/SynthesizerPlayer$a;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer$a;->b:Lcom/iflytek/speech/SynthesizerPlayerListener;

    iput-object p2, p0, Lcom/iflytek/speech/SynthesizerPlayer$a;->b:Lcom/iflytek/speech/SynthesizerPlayerListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechError;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer$a;->b:Lcom/iflytek/speech/SynthesizerPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer$a;->b:Lcom/iflytek/speech/SynthesizerPlayerListener;

    invoke-interface {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayerListener;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;III)V"
        }
    .end annotation

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
