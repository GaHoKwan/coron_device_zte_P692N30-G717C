.class public Lcom/zte/retrieve/presenter/AuthRetrievePresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "AuthRetrievePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/IAuthRetrieveView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivePic()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/retrieve/presenter/AuthRetrievePresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isCloudActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/retrieve/presenter/AuthRetrievePresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const v0, 0x7f020052

    .line 72
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020015

    goto :goto_0
.end method

.method public getActiveText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Lcom/zte/retrieve/presenter/AuthRetrievePresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isCloudActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/zte/retrieve/presenter/AuthRetrievePresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const v0, 0x7f060066

    .line 59
    .local v0, stringId:I
    :goto_0
    iget-object v1, p0, Lcom/zte/retrieve/presenter/AuthRetrievePresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 48
    .end local v0           #stringId:I
    :cond_0
    const v0, 0x7f060065

    .restart local v0       #stringId:I
    goto :goto_0

    .line 51
    .end local v0           #stringId:I
    :cond_1
    iget-object v1, p0, Lcom/zte/retrieve/presenter/AuthRetrievePresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    const v0, 0x7f060064

    .restart local v0       #stringId:I
    goto :goto_0

    .line 54
    .end local v0           #stringId:I
    :cond_2
    const v0, 0x7f060067

    .line 55
    .restart local v0       #stringId:I
    const-string v1, "fatal error!!!!  none active,but come enter pwd activity "

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPasswordCorrect(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, correctPwd:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/presenter/AuthRetrievePresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getPassword()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 30
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    const/4 v2, 0x1

    .line 33
    :goto_1
    return v2

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 33
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method
