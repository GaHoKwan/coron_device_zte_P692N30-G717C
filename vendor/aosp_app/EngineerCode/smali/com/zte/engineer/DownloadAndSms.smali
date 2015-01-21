.class public Lcom/zte/engineer/DownloadAndSms;
.super Lcom/zte/engineer/EmActivity;
.source "DownloadAndSms.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.DownloadAndSms"


# instance fields
.field context:Landroid/content/Context;

.field private mBtnOk:Landroid/widget/Button;

.field private mBtnSwitch:Landroid/widget/Button;

.field private mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

.field private mIsDownLoadOn:I

.field private mIsSmsSecurityOn:Z

.field private mTxtViewSmsState:Landroid/widget/TextView;

.field private mTxtViewSmsState1:Landroid/widget/TextView;

.field private mTxtViewSmsState2:Landroid/widget/TextView;

.field private mTxtViewSmsState3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/zte/engineer/EmActivity;-><init>()V

    .line 26
    iput v0, p0, Lcom/zte/engineer/DownloadAndSms;->mIsDownLoadOn:I

    .line 27
    iput-boolean v0, p0, Lcom/zte/engineer/DownloadAndSms;->mIsSmsSecurityOn:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/DownloadAndSms;->mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zte/engineer/DownloadAndSms;->mBtnOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 103
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f060130

    const v7, 0x7f05008b

    const v6, 0x7f05001e

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 32
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 34
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 35
    iput-boolean v4, p0, Lcom/zte/engineer/EmActivity;->Ishield:Z

    .line 36
    const-string v1, "Emode.DownloadAndSms"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mTxtViewSmsState:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mTxtViewSmsState1:Landroid/widget/TextView;

    .line 40
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mTxtViewSmsState2:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mTxtViewSmsState3:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f08001b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mBtnOk:Landroid/widget/Button;

    .line 44
    iget-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mTxtViewSmsState:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f06012d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f06012f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {}, Lcom/zte/engineer/EmodeSvrManager;->getInstance()Lcom/zte/engineer/EmodeSvrManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

    .line 49
    iget-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mEmodesvr:Lcom/zte/engineer/EmodeSvrManager;

    invoke-virtual {v1, v5}, Lcom/zte/engineer/EmodeSvrManager;->getDownloadFlagState(I)I

    move-result v0

    .line 50
    .local v0, downloaddata:I
    const-string v1, "Emode.DownloadAndSms"

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

    .line 52
    const/16 v1, 0x31

    if-ne v1, v0, :cond_0

    .line 53
    iput v4, p0, Lcom/zte/engineer/DownloadAndSms;->mIsDownLoadOn:I

    .line 58
    :goto_0
    const-string v1, "Emode.DownloadAndSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate:mIsDownLoadOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/engineer/DownloadAndSms;->mIsDownLoadOn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v1, p0, Lcom/zte/engineer/DownloadAndSms;->mIsDownLoadOn:I

    if-ne v4, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mTxtViewSmsState1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f06012c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mTxtViewSmsState1:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    :goto_1
    iget v1, p0, Lcom/zte/engineer/DownloadAndSms;->mIsDownLoadOn:I

    if-ne v4, v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mTxtViewSmsState3:Landroid/widget/TextView;

    const v2, 0x7f060133

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mTxtViewSmsState3:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 91
    :goto_2
    return-void

    .line 55
    :cond_0
    iput v5, p0, Lcom/zte/engineer/DownloadAndSms;->mIsDownLoadOn:I

    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mTxtViewSmsState1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f06012b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mTxtViewSmsState1:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mTxtViewSmsState3:Landroid/widget/TextView;

    const v2, 0x7f060132

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mTxtViewSmsState3:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v1, p0, Lcom/zte/engineer/DownloadAndSms;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onResume()V

    .line 96
    const-string v0, "Emode.DownloadAndSms"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method
