.class public Lcom/iflytek/ui/UploadDialog;
.super Lcom/iflytek/ui/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iflytek/ui/i;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/iflytek/ui/j;

    invoke-direct {v0, p1}, Lcom/iflytek/ui/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/ui/UploadDialog;->a:Lcom/iflytek/ui/h;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public setContent(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/UploadDialog;->a:Lcom/iflytek/ui/h;

    check-cast v0, Lcom/iflytek/ui/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/ui/j;->a(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/iflytek/speech/SpeechListener;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/UploadDialog;->a:Lcom/iflytek/ui/h;

    check-cast v0, Lcom/iflytek/ui/j;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/j;->a(Lcom/iflytek/speech/SpeechListener;)V

    return-void
.end method

.method public showErrorView(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/UploadDialog;->a:Lcom/iflytek/ui/h;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/ui/h;->a(ZZ)V

    return-void
.end method
