.class public Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "SecurityInfoSettingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;",
        ">;"
    }
.end annotation


# instance fields
.field private cloudBindController:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    return-void
.end method

.method private checkValidity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "securityNumber"
    .parameter "hostName"

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->checkEmptyInput(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 144
    .local v0, bResult:Z
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->analyticNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 146
    const/4 v0, 0x0

    .line 153
    .end local v0           #bResult:Z
    :cond_0
    :goto_0
    return v0

    .line 148
    .restart local v0       #bResult:Z
    :cond_1
    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1, p2}, Lcom/zte/retrieve/controller/Controller;->setHostName(Ljava/lang/String;)Z

    .line 149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private jumpToMasterControlActivity()V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->finish()V

    .line 295
    return-void
.end method


# virtual methods
.method public analyticNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "securityNumber"

    .prologue
    .line 175
    move-object v0, p1

    .line 176
    .local v0, phone:Ljava/lang/String;
    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 178
    const-string v2, ">"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 177
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_0
    invoke-static {v0}, Lcom/zte/retrieve/utils/TextHelper;->isPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v1, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->toastShow(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    .line 185
    .end local v0           #phone:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 184
    .restart local v0       #phone:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1, v0}, Lcom/zte/retrieve/controller/Controller;->setSecurityNum(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public checkEmptyInput(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "securityNumber"
    .parameter "hostName"

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-static {p1}, Lcom/zte/retrieve/utils/TextHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    invoke-static {p2}, Lcom/zte/retrieve/utils/TextHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public displayBindingSuccess()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isCloudActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->showLocalOpenedDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->showLocalOpenedDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isCloudActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->showCloudOpendDialog()V

    goto :goto_0

    .line 278
    :cond_2
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->jumpToMasterControlActivity()V

    goto :goto_0
.end method

.method public handleChooseContactBtnClick()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->showContactChooser()V

    .line 56
    return-void
.end method

.method public handleFinishCommand()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setICCIDConfigFile(Landroid/content/Context;)V

    .line 72
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->closePendingActivity()V

    .line 75
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->increaseUseTimes()V

    .line 78
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLocalSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setLocalActiveStatus(I)Z

    .line 80
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->startService(Landroid/content/Context;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isCloudSelect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    const v1, 0x7f06003e

    const v2, 0x7f06003f

    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->showLoginDialog(II)V

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLocalSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->showLocalOpenedDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleLoginFailDialogClick(I)V
    .locals 0
    .parameter "which"

    .prologue
    .line 240
    packed-switch p1, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 242
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->startLoginAccount()V

    goto :goto_0

    .line 245
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->jumpToRetrieveMasterView()V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleNetErrorDialogClick()V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->showLocalOpenedDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->jumpToMasterControlActivity()V

    goto :goto_0
.end method

.method public handleNextBtnClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "securityNumber"
    .parameter "hostName"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->checkValidity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->handleFinishCommand()V

    goto :goto_0
.end method

.method public handlePickContactNumClick(Landroid/content/Intent;)V
    .locals 12
    .parameter "data"

    .prologue
    .line 189
    if-nez p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 197
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 198
    if-eqz v7, :cond_2

    .line 199
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 201
    .local v10, phone:Ljava/lang/String;
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, name:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handlePickContactNumClick get contact phone is:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 203
    invoke-static {v10}, Lcom/zte/retrieve/utils/CommonFunctions;->formatNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 204
    .local v11, phoneFormated:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handlePickContactNumClick contact phone after formatting is:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f060026

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, contactText:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    invoke-interface {v0, v6}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->setText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v6           #contactText:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #phone:Ljava/lang/String;
    .end local v11           #phoneFormated:Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_0

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 210
    :catch_0
    move-exception v8

    .line 211
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    if-eqz v7, :cond_0

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 213
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 214
    if-eqz v7, :cond_3

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_3
    throw v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;)V

    .line 31
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->checkNumberEmpty()V

    .line 32
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->checkHostnameEmpty()V

    .line 33
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->setEditTextSize()V

    .line 34
    new-instance v1, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;

    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0, v2}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;-><init>(Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->cloudBindController:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;

    .line 36
    return-void
.end method

.method public isCloudSelect()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isCloudSelect()Z

    move-result v0

    return v0
.end method

.method public jumpToIntructView()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/InstructGuideViewActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->finish()V

    .line 255
    return-void
.end method

.method public jumpToRetrieveMasterView()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->finish()V

    .line 109
    return-void
.end method

.method public loginStatusJudged()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 113
    const/4 v1, 0x0

    .line 116
    .local v1, tokenSaved:Ljava/lang/String;
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->isRegisterServiceConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    const-string v3, "Haven\'t bind sevice"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 129
    :goto_0
    return v2

    .line 121
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getMyService()Lorg/zx/AuthComp/IMyService;

    move-result-object v3

    invoke-interface {v3}, Lorg/zx/AuthComp/IMyService;->getToken()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    :goto_1
    if-eqz v1, :cond_1

    .line 126
    const/4 v2, 0x1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 128
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "Haven\'t get token"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public promptBindingResult(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public sendMsg(Landroid/os/Handler;ILjava/lang/String;)V
    .locals 4
    .parameter "handler"
    .parameter "code"
    .parameter "msgStr"

    .prologue
    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 228
    .local v1, msg:Landroid/os/Message;
    const-string v2, "result"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iput p2, v1, Landroid/os/Message;->what:I

    .line 230
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public showLocalOpenDialog()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->showLocalOpenedDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public showLoginFailedDialog()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->cloudBindController:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;->showLoginFailedDialog()V

    .line 303
    return-void
.end method

.method public startBindingProcess()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->cloudBindController:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;->startBindingProcess()V

    .line 222
    return-void
.end method

.method public startLoginAccount()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->initAccountManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->loginStatusJudged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->cloudBindController:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;->startBindingProcess()V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v0, "user is not logined, start account manager"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;->startAccountManagerView()V

    goto :goto_0
.end method
