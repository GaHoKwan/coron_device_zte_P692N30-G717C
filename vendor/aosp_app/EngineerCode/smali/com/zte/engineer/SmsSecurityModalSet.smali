.class public Lcom/zte/engineer/SmsSecurityModalSet;
.super Lcom/zte/engineer/EmActivity;
.source "SmsSecurityModalSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.SmsSecurityModalSet"


# instance fields
.field mCurModalText:Landroid/widget/TextView;

.field mSmsProp:Ljava/util/Properties;

.field mbutton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/zte/engineer/EmActivity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/SmsSecurityModalSet;->mSmsProp:Ljava/util/Properties;

    return-void
.end method

.method private updateShowState(Z)V
    .locals 2
    .parameter "isFactory"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zte/engineer/SmsSecurityModalSet;->mCurModalText:Landroid/widget/TextView;

    const v1, 0x7f060121

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/SmsSecurityModalSet;->mCurModalText:Landroid/widget/TextView;

    const v1, 0x7f060122

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 51
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityModalSet;->mbutton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityModalSet;->mSmsProp:Ljava/util/Properties;

    const-string v2, "IsFactorModal"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, whichState:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zte/engineer/SmsSecurityModalSet;->saveState(Z)V

    .line 54
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick():whichState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0           #whichState:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f060135

    .line 21
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 24
    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityModalSet;->mCurModalText:Landroid/widget/TextView;

    .line 25
    const v1, 0x7f080051

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityModalSet;->mbutton:Landroid/widget/Button;

    .line 26
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityModalSet;->mbutton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/SmsSecurityModalSet;->mSmsProp:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/engineer/EmodeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Emode.SmsSecurityModalSet"

    const-string v2, "onCreate:load security props failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p0, v3}, Lcom/zte/engineer/Utilities;->toastMsgInfo(Landroid/content/Context;I)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 34
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 35
    .local v0, e:Lcom/zte/engineer/EmodeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    invoke-static {p0, v3}, Lcom/zte/engineer/Utilities;->toastMsgInfo(Landroid/content/Context;I)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 43
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onResume()V

    .line 45
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityModalSet;->mSmsProp:Ljava/util/Properties;

    const-string v2, "IsFactorModal"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, curState:Ljava/lang/String;
    const-string v1, "Emode.SmsSecurityModalSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume:curState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/zte/engineer/SmsSecurityModalSet;->updateShowState(Z)V

    .line 48
    return-void
.end method

.method public saveState(Z)V
    .locals 2
    .parameter "isFactory"

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityModalSet;->mSmsProp:Ljava/util/Properties;

    invoke-static {v1, p1}, Lcom/zte/engineer/SmsSecurityUtil;->setSmsIsFactory(Ljava/util/Properties;Z)Z
    :try_end_0
    .catch Lcom/zte/engineer/EmodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-direct {p0, p1}, Lcom/zte/engineer/SmsSecurityModalSet;->updateShowState(Z)V

    .line 68
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Lcom/zte/engineer/EmodeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    const v1, 0x7f060135

    invoke-static {p0, v1}, Lcom/zte/engineer/Utilities;->toastMsgInfo(Landroid/content/Context;I)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
