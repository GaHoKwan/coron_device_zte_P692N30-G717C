.class public Laah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalm;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 4
    .parameter

    .prologue
    .line 795
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const-string v1, "onStartDownload"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    .line 796
    int-to-long v0, p1

    invoke-static {}, Laox;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 797
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 798
    const/4 v0, 0x0

    .line 800
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const-string v1, "onPrepareDownload"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xdc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 791
    return-void
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 805
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const-string v1, "onDownloading"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 807
    const/16 v1, 0xdd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 808
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 809
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 810
    iget-object v1, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 811
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const-string v1, "onCancelDownload"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xdf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 827
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 829
    return-void
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 815
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const-string v1, "onPauseDownload"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 817
    const/16 v1, 0xde

    iput v1, v0, Landroid/os/Message;->what:I

    .line 818
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 819
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 820
    iget-object v1, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 821
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 860
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 861
    return-void
.end method

.method public c(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 833
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const-string v1, "onFinishDownload"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 835
    const/16 v1, 0xdd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 836
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 837
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 838
    iget-object v1, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 839
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 841
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const-string v1, "onFailStart"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 867
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 868
    return-void
.end method

.method public d(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 845
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const-string v1, "onDownloadError"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    .line 846
    if-nez p1, :cond_0

    .line 847
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 855
    :goto_0
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 856
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 850
    const/16 v1, 0xe0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 851
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 852
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 853
    iget-object v1, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const-string v1, "onSuccessStart"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 874
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 875
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const-string v1, "onManagerDialog"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Laah;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a()V

    .line 880
    return-void
.end method
