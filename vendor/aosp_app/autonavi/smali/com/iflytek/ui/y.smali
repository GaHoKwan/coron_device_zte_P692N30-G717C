.class Lcom/iflytek/ui/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/speech/SynthesizerPlayerListener;


# instance fields
.field final synthetic a:Lcom/iflytek/ui/r;


# direct methods
.method constructor <init>(Lcom/iflytek/ui/r;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/y;->a:Lcom/iflytek/ui/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferPercent(III)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/y;->a:Lcom/iflytek/ui/r;

    invoke-static {v0}, Lcom/iflytek/ui/r;->a(Lcom/iflytek/ui/r;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public onEnd(Lcom/iflytek/speech/SpeechError;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/y;->a:Lcom/iflytek/ui/r;

    invoke-static {v0}, Lcom/iflytek/ui/r;->e(Lcom/iflytek/ui/r;)Lcom/iflytek/ui/SynthesizerDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/y;->a:Lcom/iflytek/ui/r;

    invoke-static {v0}, Lcom/iflytek/ui/r;->e(Lcom/iflytek/ui/r;)Lcom/iflytek/ui/SynthesizerDialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/ui/SynthesizerDialogListener;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/y;->a:Lcom/iflytek/ui/r;

    invoke-static {v0, p1}, Lcom/iflytek/ui/r;->a(Lcom/iflytek/ui/r;Lcom/iflytek/speech/SpeechError;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/y;->a:Lcom/iflytek/ui/r;

    invoke-static {v0}, Lcom/iflytek/ui/r;->f(Lcom/iflytek/ui/r;)V

    goto :goto_0
.end method

.method public onPlayBegin()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/y;->a:Lcom/iflytek/ui/r;

    invoke-static {v0}, Lcom/iflytek/ui/r;->a(Lcom/iflytek/ui/r;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/iflytek/ui/y;->a:Lcom/iflytek/ui/r;

    invoke-static {v0}, Lcom/iflytek/ui/r;->d(Lcom/iflytek/ui/r;)V

    return-void
.end method

.method public onPlayPaused()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/y;->a:Lcom/iflytek/ui/r;

    invoke-static {v0}, Lcom/iflytek/ui/r;->b(Lcom/iflytek/ui/r;)V

    iget-object v0, p0, Lcom/iflytek/ui/y;->a:Lcom/iflytek/ui/r;

    invoke-static {v0}, Lcom/iflytek/ui/r;->c(Lcom/iflytek/ui/r;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public onPlayPercent(III)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/y;->a:Lcom/iflytek/ui/r;

    invoke-static {v0}, Lcom/iflytek/ui/r;->a(Lcom/iflytek/ui/r;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public onPlayResumed()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/y;->a:Lcom/iflytek/ui/r;

    invoke-static {v0}, Lcom/iflytek/ui/r;->d(Lcom/iflytek/ui/r;)V

    return-void
.end method