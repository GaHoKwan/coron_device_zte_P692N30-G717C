.class Lcom/iflytek/ui/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/speech/RecognizerListener;


# instance fields
.field final synthetic a:Lcom/iflytek/ui/o;


# direct methods
.method constructor <init>(Lcom/iflytek/ui/o;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/o;

    invoke-static {v0}, Lcom/iflytek/ui/o;->a(Lcom/iflytek/ui/o;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/o;

    invoke-static {v0}, Lcom/iflytek/ui/o;->b(Lcom/iflytek/ui/o;)V

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onEnd(Lcom/iflytek/speech/SpeechError;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/o;

    invoke-static {v0}, Lcom/iflytek/ui/o;->d(Lcom/iflytek/ui/o;)Lcom/iflytek/ui/RecognizerDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/o;

    invoke-static {v0}, Lcom/iflytek/ui/o;->d(Lcom/iflytek/ui/o;)Lcom/iflytek/ui/RecognizerDialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/ui/RecognizerDialogListener;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/o;

    iget-boolean v0, v0, Lcom/iflytek/ui/o;->e:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/o;

    invoke-virtual {v0}, Lcom/iflytek/ui/o;->a()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/o;

    invoke-static {v0, p1}, Lcom/iflytek/ui/o;->a(Lcom/iflytek/ui/o;Lcom/iflytek/speech/SpeechError;)V

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/o;

    invoke-static {v0}, Lcom/iflytek/ui/o;->c(Lcom/iflytek/ui/o;)V

    return-void
.end method

.method public onResults(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/speech/RecognizerResult;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/o;

    invoke-static {v0}, Lcom/iflytek/ui/o;->d(Lcom/iflytek/ui/o;)Lcom/iflytek/ui/RecognizerDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/o;

    invoke-static {v0}, Lcom/iflytek/ui/o;->d(Lcom/iflytek/ui/o;)Lcom/iflytek/ui/RecognizerDialogListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/ui/RecognizerDialogListener;->onResults(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/f;->a(II)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVolumeChanged = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/o;

    iget-object v0, v0, Lcom/iflytek/ui/o;->a:Lcom/iflytek/ui/d;

    iget-object v0, v0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/A;->a(I)V

    return-void
.end method
