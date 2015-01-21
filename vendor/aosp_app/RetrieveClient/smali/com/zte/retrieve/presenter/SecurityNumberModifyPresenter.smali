.class public Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "SecurityNumberModifyPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/ISecurityNumberModifyView;",
        ">;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    return-void
.end method

.method private checkValidity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "securityNumber"
    .parameter "hostName"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-static {p1}, Lcom/zte/retrieve/utils/TextHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;->toastShow(Ljava/lang/String;)V

    move v0, v1

    .line 84
    :goto_0
    return v0

    .line 75
    :cond_0
    invoke-static {p2}, Lcom/zte/retrieve/utils/TextHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f060028

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;->toastShow(Ljava/lang/String;)V

    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->analyticNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    .line 80
    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0, p2}, Lcom/zte/retrieve/controller/Controller;->setHostName(Ljava/lang/String;)Z

    .line 84
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public analyticNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "securityNumber"

    .prologue
    .line 88
    move-object v0, p1

    .line 89
    .local v0, phone:Ljava/lang/String;
    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 91
    const-string v2, ">"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 90
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    invoke-static {v0}, Lcom/zte/retrieve/utils/TextHelper;->isPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v1, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;->toastShow(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    .line 98
    .end local v0           #phone:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 97
    .restart local v0       #phone:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1, v0}, Lcom/zte/retrieve/controller/Controller;->setSecurityNum(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public getContactNameFromPhoneBook(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNum"

    .prologue
    const/4 v2, 0x0

    .line 102
    const/4 v6, 0x0

    .line 103
    .local v6, contactName:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 107
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "display_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 110
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 111
    return-object v6
.end method

.method public handleCancleBtnClick()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/retrieve/controller/Controller;->navigateToExistActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 60
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;->finish()V

    .line 61
    return-void
.end method

.method public handleChooseContactBtnClick()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;->showContactChooser()V

    .line 44
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setPickingContack(Z)V

    .line 45
    return-void
.end method

.method public handlePickContactNumClick(Landroid/content/Intent;)V
    .locals 12
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0, v2}, Lcom/zte/retrieve/controller/Controller;->setPickingContack(Z)V

    .line 116
    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 122
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 124
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 125
    if-eqz v7, :cond_2

    .line 126
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, phone:Ljava/lang/String;
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 129
    .local v9, name:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "before format phone is:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 130
    invoke-static {v11}, Lcom/zte/retrieve/utils/CommonFunctions;->formatNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 131
    .local v10, newNumber:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "after format phone is:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f060026

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, contactText:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;

    invoke-interface {v0, v6}, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;->setText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v6           #contactText:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #newNumber:Ljava/lang/String;
    .end local v11           #phone:Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_0

    .line 141
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 136
    :catch_0
    move-exception v8

    .line 137
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    if-eqz v7, :cond_0

    .line 141
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 139
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 140
    if-eqz v7, :cond_3

    .line 141
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_3
    throw v0
.end method

.method public handleSaveBtnClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "securityNumber"
    .parameter "hostName"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->checkValidity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 49
    .local v0, bResult:Z
    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v1, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f060071

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;->toastShow(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/zte/retrieve/controller/Controller;->navigateToExistActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 52
    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v1, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;

    invoke-interface {v1}, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;->finish()V

    .line 56
    :cond_0
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    .line 29
    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v2, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;

    invoke-interface {v2}, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;->setEditTextSize()V

    .line 30
    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getHostName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, securityNum:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->getContactNameFromPhoneBook(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, phoneName:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 34
    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v2, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;

    iget-object v3, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v3}, Lcom/zte/retrieve/controller/Controller;->getHostName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 35
    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-interface {v2, v3, v4}, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .end local v0           #phoneName:Ljava/lang/String;
    .end local v1           #securityNum:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 37
    .restart local v0       #phoneName:Ljava/lang/String;
    .restart local v1       #securityNum:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v2, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;

    iget-object v3, p0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v3}, Lcom/zte/retrieve/controller/Controller;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/zte/retrieve/iview/ISecurityNumberModifyView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
