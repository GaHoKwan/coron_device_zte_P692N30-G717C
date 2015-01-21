.class public Lcom/iflytek/ui/RecognizerDialog;
.super Lcom/iflytek/ui/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iflytek/ui/i;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/iflytek/ui/o;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/ui/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/h;

    return-void
.end method


# virtual methods
.method public getDownflowBytes(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/h;

    check-cast v0, Lcom/iflytek/ui/o;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/o;->b(Z)I

    move-result v0

    return v0
.end method

.method public getUpflowBytes(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/h;

    check-cast v0, Lcom/iflytek/ui/o;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/o;->c(Z)I

    move-result v0

    return v0
.end method

.method public setEngine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/h;

    check-cast v0, Lcom/iflytek/ui/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/ui/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/iflytek/ui/RecognizerDialogListener;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/h;

    check-cast v0, Lcom/iflytek/ui/o;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/o;->a(Lcom/iflytek/ui/RecognizerDialogListener;)V

    return-void
.end method

.method public setRecordInterval(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/h;

    check-cast v0, Lcom/iflytek/ui/o;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/o;->a(I)V

    return-void
.end method

.method public setSampleRate(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/h;

    check-cast v0, Lcom/iflytek/ui/o;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/o;->a(Lcom/iflytek/speech/SpeechConfig$RATE;)V

    return-void
.end method

.method public showErrorView(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/h;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/ui/h;->a(ZZ)V

    return-void
.end method

.method public showMoreButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/h;

    check-cast v0, Lcom/iflytek/ui/o;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/o;->a(Z)V

    return-void
.end method
