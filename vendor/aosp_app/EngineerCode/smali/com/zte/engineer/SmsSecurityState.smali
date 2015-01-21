.class public Lcom/zte/engineer/SmsSecurityState;
.super Lcom/zte/engineer/EmActivity;
.source "SmsSecurityState.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.SecuritySmsModalSet"


# instance fields
.field private mBtnOk:Landroid/widget/Button;

.field private mBtnSwitch:Landroid/widget/Button;

.field private mIsSmsAccesstypeState:Ljava/lang/String;

.field private mIsSmsFactoryState:Z

.field private mIsSmsSecurityOn:Z

.field private mTxtViewSmsState:Landroid/widget/TextView;

.field private mTxtViewSmstypeState:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/zte/engineer/EmActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 82
    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityState;->mBtnSwitch:Landroid/widget/Button;

    if-ne p1, v2, :cond_2

    .line 83
    iget-boolean v2, p0, Lcom/zte/engineer/SmsSecurityState;->mIsSmsSecurityOn:Z

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityState;->mTxtViewSmsState:Landroid/widget/TextView;

    const v3, 0x7f0600a5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 85
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zte/engineer/SmsSecurityState;->mIsSmsSecurityOn:Z

    .line 92
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;

    move-result-object v1

    .line 93
    .local v1, prop:Ljava/util/Properties;
    iget-boolean v2, p0, Lcom/zte/engineer/SmsSecurityState;->mIsSmsSecurityOn:Z

    invoke-static {v1, v2}, Lcom/zte/engineer/SmsSecurityUtil;->setSmsSwitchState(Ljava/util/Properties;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/engineer/EmodeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .end local v1           #prop:Ljava/util/Properties;
    :cond_0
    :goto_1
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityState;->mTxtViewSmsState:Landroid/widget/TextView;

    const v3, 0x7f0600a6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 88
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zte/engineer/SmsSecurityState;->mIsSmsSecurityOn:Z

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Emode.SecuritySmsModalSet"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 96
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, e:Lcom/zte/engineer/EmodeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    const v2, 0x7f060135

    invoke-static {p0, v2}, Lcom/zte/engineer/Utilities;->toastMsgInfo(Landroid/content/Context;I)V

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 103
    .end local v0           #e:Lcom/zte/engineer/EmodeException;
    :cond_2
    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityState;->mBtnOk:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f060135

    const/4 v1, 0x1

    .line 26
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 28
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 30
    const-string v1, "Emode.SecuritySmsModalSet"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityState;->mTxtViewSmsState:Landroid/widget/TextView;

    .line 33
    const v1, 0x7f080074

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityState;->mTxtViewSmstypeState:Landroid/widget/TextView;

    .line 34
    const v1, 0x7f08001c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityState;->mBtnSwitch:Landroid/widget/Button;

    .line 35
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityState;->mBtnSwitch:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v1, 0x7f08001b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityState;->mBtnOk:Landroid/widget/Button;

    .line 37
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityState;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/engineer/SmsSecurityState;->mIsSmsSecurityOn:Z

    .line 41
    const-string v1, "Emode.SecuritySmsModalSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate:bSmsState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zte/engineer/SmsSecurityState;->mIsSmsSecurityOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-boolean v1, p0, Lcom/zte/engineer/SmsSecurityState;->mIsSmsSecurityOn:Z

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityState;->mTxtViewSmsState:Landroid/widget/TextView;

    const v2, 0x7f0600a6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 49
    :goto_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecurityFactoryState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/engineer/SmsSecurityState;->mIsSmsFactoryState:Z

    .line 50
    const-string v1, "Emode.SecuritySmsModalSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate:mIsSmsFactoryState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zte/engineer/SmsSecurityState;->mIsSmsFactoryState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-boolean v1, p0, Lcom/zte/engineer/SmsSecurityState;->mIsSmsFactoryState:Z

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityState;->mBtnSwitch:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 57
    :goto_1
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecurityaccesstypeState()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityState;->mIsSmsAccesstypeState:Ljava/lang/String;

    .line 58
    const-string v1, "Emode.SecuritySmsModalSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate:mIsSmsAccesstypeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/engineer/SmsSecurityState;->mIsSmsAccesstypeState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityState;->mTxtViewSmstypeState:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS Access Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/engineer/SmsSecurityState;->mIsSmsAccesstypeState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :goto_2
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityState;->mTxtViewSmsState:Landroid/widget/TextView;

    const v2, 0x7f0600a5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/engineer/EmodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    invoke-static {p0, v4}, Lcom/zte/engineer/Utilities;->toastMsgInfo(Landroid/content/Context;I)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 54
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityState;->mBtnSwitch:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/zte/engineer/EmodeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 68
    :catch_1
    move-exception v0

    .line 69
    .local v0, e:Lcom/zte/engineer/EmodeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    invoke-static {p0, v4}, Lcom/zte/engineer/Utilities;->toastMsgInfo(Landroid/content/Context;I)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onResume()V

    .line 78
    const-string v0, "Emode.SecuritySmsModalSet"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method
