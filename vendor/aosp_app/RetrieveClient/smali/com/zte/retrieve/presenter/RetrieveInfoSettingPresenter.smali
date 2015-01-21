.class public Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "RetrieveInfoSettingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/IRetrieveInfoSettingView;",
        ">;"
    }
.end annotation


# instance fields
.field private isSettingDestroy:Z

.field private mHandler:Landroid/os/Handler;

.field private mProDialog:Landroid/app/ProgressDialog;

.field private updateUrl:Ljava/lang/String;

.field private upgradeManager:Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;

.field private verProp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->upgradeManager:Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;

    .line 50
    new-instance v0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$1;-><init>(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)V

    iput-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->verProp:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->updateUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->verProp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->isSettingDestroy:Z

    return v0
.end method

.method static synthetic access$4(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->getTopActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->upgradeManager:Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mProDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private createVersionInfoString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "feature"

    .prologue
    .line 279
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->verProp:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 280
    .local v0, featureIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 281
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->verProp:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, name:Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 283
    .local v1, indexEnd:I
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getContactNameFromPhoneBook(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNum"

    .prologue
    const/4 v2, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    .local v6, contactName:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
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

    .line 104
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 105
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const-string v2, "display_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 109
    return-object v6
.end method

.method private getHideNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "securityNumber"

    .prologue
    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "securityNumber = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 133
    if-nez p1, :cond_1

    .line 134
    const/4 p1, 0x0

    .line 155
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 136
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 137
    .local v2, length:I
    add-int/lit8 v4, v2, -0x8

    .line 140
    .local v4, start:I
    if-ltz v4, :cond_0

    .line 144
    add-int/lit8 v0, v2, -0x4

    .line 145
    .local v0, end:I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v3, newStr:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hideNumber = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 148
    :cond_2
    if-lt v1, v4, :cond_3

    if-ge v1, v0, :cond_3

    .line 149
    const/16 v5, 0x2a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private getTopActivity()Ljava/lang/String;
    .locals 5

    .prologue
    .line 307
    :try_start_0
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 308
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 310
    .local v1, cn:Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TOP___ACTIVITY === "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";pck="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 315
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #cn:Landroid/content/ComponentName;
    :goto_0
    return-object v3

    .line 312
    :catch_0
    move-exception v2

    .line 313
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 315
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 228
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mProDialog:Landroid/app/ProgressDialog;

    .line 230
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 232
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 233
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 235
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mProDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$3;

    invoke-direct {v1, p0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$3;-><init>(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 251
    return-void
.end method


# virtual methods
.method public cancelHandler()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->isSettingDestroy:Z

    .line 325
    return-void
.end method

.method public changeAccount()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveInfoSettingView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRetrieveInfoSettingView;->initAccountManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveInfoSettingView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRetrieveInfoSettingView;->startAccountView()V

    .line 180
    :cond_0
    return-void
.end method

.method public clickSettingBack()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveInfoSettingView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRetrieveInfoSettingView;->finish()V

    .line 168
    return-void
.end method

.method public dismissDialogWaitView()V
    .locals 2

    .prologue
    .line 260
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mProDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mProDialog:Landroid/app/ProgressDialog;

    .line 268
    :cond_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doUpdate()V
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f0600c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->showProgressDialog(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->upgradeManager:Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->upgradeManager:Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;

    .line 188
    :cond_0
    new-instance v0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$2;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$2;-><init>(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)V

    .line 224
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 225
    return-void
.end method

.method public getCurrentAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getUserAccount()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, account:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f060072

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .end local v0           #account:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getSecurityNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, securityNumber:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->getContactNameFromPhoneBook(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, ContactName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->getHideNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    if-nez v0, :cond_0

    .line 120
    .end local v1           #securityNumber:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1       #securityNumber:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSmsContent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 159
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, hostName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v4, 0x7f060022

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v4, 0x7f060023

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, smsContent:Ljava/lang/String;
    return-object v1
.end method

.method public modifyPwd()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/PasswordModifyActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    return-void
.end method

.method public modifySecurityNumber()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/SecurityNumberModifyActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    return-void
.end method

.method public setTopViewHandle()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 321
    return-void
.end method

.method public updateNow()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 287
    invoke-static {}, Lcom/zte/retrieve/utils/CommonFunctions;->checkSDCardIsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveInfoSettingView;

    const v1, 0x7f0600c4

    const v2, 0x7f0600c5

    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/retrieve/iview/IRetrieveInfoSettingView;->showResultDialog(IILandroid/content/Context;)V

    .line 295
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string v0, "componentName:"

    invoke-direct {p0, v0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->createVersionInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, versionCode:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download componentName=RetrieveClient"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->updateUrl:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "RetrieveClient"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".apk"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/zte/retrieve/controller/Controller;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iput-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->updateUrl:Ljava/lang/String;

    goto :goto_0
.end method
