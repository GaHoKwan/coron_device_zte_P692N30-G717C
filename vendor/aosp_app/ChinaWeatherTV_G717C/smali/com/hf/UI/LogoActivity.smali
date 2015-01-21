.class public Lcom/hf/UI/LogoActivity;
.super Landroid/app/Activity;
.source "LogoActivity.java"


# instance fields
.field private isRuning:Z

.field private mCoNameTextView:Landroid/widget/TextView;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hf/UI/LogoActivity;->isRuning:Z

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/LogoActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/hf/UI/LogoActivity;->showPermissionDialog(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1(Lcom/hf/UI/LogoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/hf/UI/LogoActivity;->initWeather()V

    return-void
.end method

.method static synthetic access$2(Lcom/hf/UI/LogoActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/hf/UI/LogoActivity;->isRuning:Z

    return-void
.end method

.method private checkPermission()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/hf/UI/LogoActivity$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/LogoActivity$1;-><init>(Lcom/hf/UI/LogoActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 113
    invoke-virtual {v0, v1}, Lcom/hf/UI/LogoActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    return-void
.end method

.method private declared-synchronized initWeather()V
    .locals 2

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/hf/UI/LogoActivity$6;

    invoke-direct {v0, p0}, Lcom/hf/UI/LogoActivity$6;-><init>(Lcom/hf/UI/LogoActivity;)V

    iput-object v0, p0, Lcom/hf/UI/LogoActivity;->mTask:Landroid/os/AsyncTask;

    .line 250
    iget-object v0, p0, Lcom/hf/UI/LogoActivity;->mTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setRootViewBackground()V
    .locals 5

    .prologue
    .line 170
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 171
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v3, "preference_background_index"

    invoke-static {p0}, Lcom/hf/utils/Util;->getDefaultBgIndex(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 172
    .local v2, selected:I
    const v0, 0x7f02003c

    .line 173
    .local v0, id:I
    packed-switch v2, :pswitch_data_0

    .line 192
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/hf/UI/LogoActivity;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 193
    return-void

    .line 177
    :pswitch_1
    const v0, 0x7f02003d

    .line 178
    goto :goto_0

    .line 180
    :pswitch_2
    const v0, 0x7f02003e

    .line 181
    goto :goto_0

    .line 183
    :pswitch_3
    const v0, 0x7f02003f

    .line 184
    goto :goto_0

    .line 186
    :pswitch_4
    const v0, 0x7f020006

    .line 187
    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showPermissionDialog(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "preferences"

    .prologue
    const/4 v4, 0x0

    .line 118
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, dialog:Lcom/hf/UI/HFDialog;
    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setIcon(I)V

    .line 120
    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setTitle(I)V

    .line 121
    invoke-virtual {v0, v4}, Lcom/hf/UI/HFDialog;->setTitlePaddingBottom(I)V

    .line 122
    const v1, 0x7f080018

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f080001

    invoke-virtual {p0, v3}, Lcom/hf/UI/LogoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/hf/UI/LogoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setContent(Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/hf/UI/LogoActivity$2;

    invoke-direct {v1, p0}, Lcom/hf/UI/LogoActivity$2;-><init>(Lcom/hf/UI/LogoActivity;)V

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 133
    const v1, 0x7f080017

    new-instance v2, Lcom/hf/UI/LogoActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/hf/UI/LogoActivity$3;-><init>(Lcom/hf/UI/LogoActivity;Lcom/hf/UI/HFDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 141
    const v1, 0x7f080016

    new-instance v2, Lcom/hf/UI/LogoActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/hf/UI/LogoActivity$4;-><init>(Lcom/hf/UI/LogoActivity;Lcom/hf/UI/HFDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setNeutralButton(ILandroid/view/View$OnClickListener;)V

    .line 150
    const v1, 0x7f0800a1

    new-instance v2, Lcom/hf/UI/LogoActivity$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/hf/UI/LogoActivity$5;-><init>(Lcom/hf/UI/LogoActivity;Lcom/hf/UI/HFDialog;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 166
    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->show()V

    .line 167
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 6

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 260
    iget-boolean v3, p0, Lcom/hf/UI/LogoActivity;->isRuning:Z

    if-eqz v3, :cond_2

    .line 261
    iget-object v3, p0, Lcom/hf/UI/LogoActivity;->mTask:Landroid/os/AsyncTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v2

    .line 262
    .local v2, success:Z
    iget-object v3, p0, Lcom/hf/UI/LogoActivity;->mTask:Landroid/os/AsyncTask;

    invoke-virtual {v3}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    .line 265
    .local v1, cancle:Z
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_0

    .line 266
    const-string v3, "ZTE-doInBackground"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "finish : cancle = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/hf/UI/LogoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/hf/HFWeatherApp;

    .line 269
    .local v0, app:Lcom/hf/HFWeatherApp;
    if-eqz v2, :cond_1

    .line 270
    invoke-virtual {v0}, Lcom/hf/HFWeatherApp;->clearData()V

    .line 273
    :cond_1
    invoke-virtual {v0}, Lcom/hf/HFWeatherApp;->stopInitWeathers()V

    .line 274
    invoke-static {p0}, Lcom/hf/manager/HFPackageManager;->getInstance(Landroid/content/Context;)Lcom/hf/manager/HFPackageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hf/manager/HFPackageManager;->exitFromActivity()V

    .line 277
    .end local v0           #app:Lcom/hf/HFWeatherApp;
    .end local v1           #cancle:Z
    .end local v2           #success:Z
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lcom/hf/utils/Util;->isZTE(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/hf/utils/Util;->isNubia(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/hf/manager/MemoryManager;->getInstance(Landroid/content/Context;)Lcom/hf/manager/MemoryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hf/manager/MemoryManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    const v2, 0x7f08000e

    invoke-virtual {p0, v2}, Lcom/hf/UI/LogoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 45
    invoke-virtual {p0}, Lcom/hf/UI/LogoActivity;->finish()V

    .line 90
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 51
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 52
    invoke-static {p0}, Lcom/hf/utils/Util;->isNubia(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    const v2, 0x7f03001a

    invoke-virtual {p0, v2}, Lcom/hf/UI/LogoActivity;->setContentView(I)V

    .line 57
    :goto_1
    const v2, 0x7f0b006a

    invoke-virtual {p0, v2}, Lcom/hf/UI/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/hf/UI/LogoActivity;->mRootView:Landroid/widget/RelativeLayout;

    .line 58
    invoke-direct {p0}, Lcom/hf/UI/LogoActivity;->setRootViewBackground()V

    .line 59
    const v2, 0x7f0b006f

    invoke-virtual {p0, v2}, Lcom/hf/UI/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hf/UI/LogoActivity;->mVersionTextView:Landroid/widget/TextView;

    .line 60
    iget-object v2, p0, Lcom/hf/UI/LogoActivity;->mVersionTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "v"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/hf/utils/Util;->getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v2, 0x7f0b0071

    invoke-virtual {p0, v2}, Lcom/hf/UI/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hf/UI/LogoActivity;->mCoNameTextView:Landroid/widget/TextView;

    .line 64
    invoke-static {p0}, Lcom/hf/utils/Util;->isNubia(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    iget-object v2, p0, Lcom/hf/UI/LogoActivity;->mCoNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    :goto_2
    const v2, 0x7f0b0070

    invoke-virtual {p0, v2}, Lcom/hf/UI/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, company:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/hf/utils/Util;->isZTE(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 77
    const v2, 0x7f080005

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 82
    :goto_3
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_2

    .line 83
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/hf/UI/LogoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 85
    const-string v2, "DisplayMetrics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "heightPixels = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; widthPixels = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    :cond_2
    invoke-direct {p0}, Lcom/hf/UI/LogoActivity;->checkPermission()V

    goto/16 :goto_0

    .line 55
    .end local v0           #company:Landroid/widget/TextView;
    :cond_3
    const v2, 0x7f030019

    invoke-virtual {p0, v2}, Lcom/hf/UI/LogoActivity;->setContentView(I)V

    goto/16 :goto_1

    .line 67
    :cond_4
    invoke-static {p0}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    iget-object v2, p0, Lcom/hf/UI/LogoActivity;->mCoNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 70
    :cond_5
    iget-object v2, p0, Lcom/hf/UI/LogoActivity;->mCoNameTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 79
    .restart local v0       #company:Landroid/widget/TextView;
    :cond_6
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
