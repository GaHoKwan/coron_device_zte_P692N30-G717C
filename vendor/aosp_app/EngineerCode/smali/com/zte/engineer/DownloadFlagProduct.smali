.class public Lcom/zte/engineer/DownloadFlagProduct;
.super Lcom/zte/engineer/EmActivity;
.source "DownloadFlagProduct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.downloadflagproduct"


# instance fields
.field private mBtnOk:Landroid/widget/Button;

.field private mBtnSwitch:Landroid/widget/Button;

.field private mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

.field private mIsSmsSecurityOn:I

.field private mTxtViewSmsState:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zte/engineer/EmActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/engineer/DownloadFlagProduct;->mIsSmsSecurityOn:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/DownloadFlagProduct;->mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    iget-object v2, p0, Lcom/zte/engineer/DownloadFlagProduct;->mBtnSwitch:Landroid/widget/Button;

    if-ne p1, v2, :cond_2

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, offset:I
    const/4 v1, 0x0

    .line 69
    .local v1, value:I
    iget v2, p0, Lcom/zte/engineer/DownloadFlagProduct;->mIsSmsSecurityOn:I

    if-ne v5, v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/zte/engineer/DownloadFlagProduct;->mTxtViewSmsState:Landroid/widget/TextView;

    const v3, 0x7f0600a5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 71
    iput v4, p0, Lcom/zte/engineer/DownloadFlagProduct;->mIsSmsSecurityOn:I

    .line 72
    iget-object v2, p0, Lcom/zte/engineer/DownloadFlagProduct;->mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

    const/16 v3, 0x30

    invoke-virtual {v2, v4, v3}, Lcom/zte/engineer/EmodeSvrManager;->setDownloadFlagState(II)I

    .line 84
    .end local v0           #offset:I
    .end local v1           #value:I
    :cond_0
    :goto_0
    return-void

    .line 74
    .restart local v0       #offset:I
    .restart local v1       #value:I
    :cond_1
    iget-object v2, p0, Lcom/zte/engineer/DownloadFlagProduct;->mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

    const/16 v3, 0x31

    invoke-virtual {v2, v4, v3}, Lcom/zte/engineer/EmodeSvrManager;->setDownloadFlagState(II)I

    .line 75
    iget-object v2, p0, Lcom/zte/engineer/DownloadFlagProduct;->mTxtViewSmsState:Landroid/widget/TextView;

    const v3, 0x7f0600a6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iput v5, p0, Lcom/zte/engineer/DownloadFlagProduct;->mIsSmsSecurityOn:I

    goto :goto_0

    .line 81
    .end local v0           #offset:I
    .end local v1           #value:I
    :cond_2
    iget-object v2, p0, Lcom/zte/engineer/DownloadFlagProduct;->mBtnOk:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 27
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 29
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 31
    const-string v1, "Emode.downloadflagproduct"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/engineer/DownloadFlagProduct;->mTxtViewSmsState:Landroid/widget/TextView;

    .line 34
    const v1, 0x7f08001c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/engineer/DownloadFlagProduct;->mBtnSwitch:Landroid/widget/Button;

    .line 35
    iget-object v1, p0, Lcom/zte/engineer/DownloadFlagProduct;->mBtnSwitch:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v1, 0x7f08001b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/engineer/DownloadFlagProduct;->mBtnOk:Landroid/widget/Button;

    .line 37
    iget-object v1, p0, Lcom/zte/engineer/DownloadFlagProduct;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-static {}, Lcom/zte/engineer/EmodeSvrManager;->getInstance()Lcom/zte/engineer/EmodeSvrManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/DownloadFlagProduct;->mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

    .line 41
    iget-object v1, p0, Lcom/zte/engineer/DownloadFlagProduct;->mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

    invoke-virtual {v1, v5}, Lcom/zte/engineer/EmodeSvrManager;->getDownloadFlagState(I)I

    move-result v0

    .line 42
    .local v0, downloaddata:I
    const-string v1, "Emode.downloadflagproduct"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate:downloaddata="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/16 v1, 0x31

    if-ne v1, v0, :cond_0

    .line 45
    iput v4, p0, Lcom/zte/engineer/DownloadFlagProduct;->mIsSmsSecurityOn:I

    .line 50
    :goto_0
    const-string v1, "Emode.downloadflagproduct"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate:bSmsState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/engineer/DownloadFlagProduct;->mIsSmsSecurityOn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget v1, p0, Lcom/zte/engineer/DownloadFlagProduct;->mIsSmsSecurityOn:I

    if-ne v4, v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/zte/engineer/DownloadFlagProduct;->mTxtViewSmsState:Landroid/widget/TextView;

    const v2, 0x7f0600a6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 57
    :goto_1
    return-void

    .line 47
    :cond_0
    iput v5, p0, Lcom/zte/engineer/DownloadFlagProduct;->mIsSmsSecurityOn:I

    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/zte/engineer/DownloadFlagProduct;->mTxtViewSmsState:Landroid/widget/TextView;

    const v2, 0x7f0600a5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onResume()V

    .line 62
    const-string v0, "Emode.downloadflagproduct"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method
