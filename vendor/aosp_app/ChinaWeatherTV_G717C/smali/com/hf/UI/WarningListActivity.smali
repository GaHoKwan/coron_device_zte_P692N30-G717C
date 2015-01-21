.class public Lcom/hf/UI/WarningListActivity;
.super Landroid/app/Activity;
.source "WarningListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/WarningListActivity$WarningAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WarningListActivity"


# instance fields
.field private mAdapter:Lcom/hf/UI/WarningListActivity$WarningAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWarningList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/WarningModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/WarningListActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity;->mWarningList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/WarningListActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/hf/UI/WarningListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/hf/UI/WarningListActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/hf/UI/WarningListActivity;->mWarningList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$4(Lcom/hf/UI/WarningListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/hf/UI/WarningListActivity;->refrashList()V

    return-void
.end method

.method private loadResource(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 108
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "city_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, cityId:Ljava/lang/String;
    const-string v3, "city_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, name:Ljava/lang/String;
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_0

    .line 112
    const-string v3, "WarningListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cityId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    sget-object v3, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 116
    sget-object v3, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/hf/UI/WarningListActivity;->mWarningList:Ljava/util/List;

    .line 117
    invoke-direct {p0}, Lcom/hf/UI/WarningListActivity;->refrashList()V

    .line 130
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/hf/UI/WarningListActivity;->mWarningList:Ljava/util/List;

    if-nez v3, :cond_2

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/hf/UI/WarningListActivity;->mWarningList:Ljava/util/List;

    .line 124
    :goto_1
    invoke-direct {p0, v1}, Lcom/hf/UI/WarningListActivity;->readWarnFile(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/hf/UI/WarningListActivity;->mWarningList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method private readWarnFile(Ljava/lang/String;)V
    .locals 2
    .parameter "cityId"

    .prologue
    .line 143
    new-instance v0, Lcom/hf/UI/WarningListActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/hf/UI/WarningListActivity$1;-><init>(Lcom/hf/UI/WarningListActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 165
    invoke-virtual {v0, v1}, Lcom/hf/UI/WarningListActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    return-void
.end method

.method private refrashList()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity;->mWarningList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hf/UI/WarningListActivity;->mWarningList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity;->mAdapter:Lcom/hf/UI/WarningListActivity$WarningAdapter;

    if-nez v0, :cond_2

    .line 68
    new-instance v0, Lcom/hf/UI/WarningListActivity$WarningAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hf/UI/WarningListActivity$WarningAdapter;-><init>(Lcom/hf/UI/WarningListActivity;Lcom/hf/UI/WarningListActivity$WarningAdapter;)V

    iput-object v0, p0, Lcom/hf/UI/WarningListActivity;->mAdapter:Lcom/hf/UI/WarningListActivity$WarningAdapter;

    .line 69
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/hf/UI/WarningListActivity;->mAdapter:Lcom/hf/UI/WarningListActivity$WarningAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity;->mAdapter:Lcom/hf/UI/WarningListActivity$WarningAdapter;

    invoke-virtual {v0}, Lcom/hf/UI/WarningListActivity$WarningAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private showWarning(Lcom/hf/model/WarningModel;)V
    .locals 6
    .parameter "warning"

    .prologue
    .line 227
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/hf/UI/WarningItemActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 229
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/hf/UI/WarningListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "city_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, cityId:Ljava/lang/String;
    const-string v4, "city_id"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/hf/UI/WarningListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "city_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, name:Ljava/lang/String;
    const-string v4, "city_name"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v4, "warning_model"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 234
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v2}, Lcom/hf/UI/WarningListActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 241
    .local v0, id:I
    const v3, 0x7f0b0032

    if-ne v0, v3, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/hf/UI/WarningListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "notify_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, notifyType:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/hf/UI/WarningListActivity;->finish()V

    .line 254
    .end local v2           #notifyType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 246
    .restart local v2       #notifyType:Ljava/lang/String;
    :cond_1
    const-string v3, "notifyToList"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    const-string v3, "notifyToList"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/hf/UI/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/hf/UI/WarningListActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/hf/UI/WarningListActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x7

    .line 42
    invoke-virtual {p0, v3}, Lcom/hf/UI/WarningListActivity;->requestWindowFeature(I)Z

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 45
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 46
    const v2, 0x7f03002e

    invoke-virtual {p0, v2}, Lcom/hf/UI/WarningListActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/hf/UI/WarningListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 48
    .local v1, window:Landroid/view/Window;
    const v2, 0x7f03000b

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 49
    const v2, 0x7f0b0032

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, title:Landroid/widget/TextView;
    const v2, 0x7f08010b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 51
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v2, 0x7f0b00ce

    invoke-virtual {p0, v2}, Lcom/hf/UI/WarningListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/hf/UI/WarningListActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 54
    const v2, 0x7f0b00cd

    invoke-virtual {p0, v2}, Lcom/hf/UI/WarningListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/hf/UI/WarningListActivity;->mListView:Landroid/widget/ListView;

    .line 55
    iget-object v2, p0, Lcom/hf/UI/WarningListActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 59
    invoke-virtual {p0}, Lcom/hf/UI/WarningListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hf/UI/WarningListActivity;->loadResource(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hf.KILL_PROCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/hf/UI/WarningListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/model/WarningModel;

    .line 218
    .local v0, warning:Lcom/hf/model/WarningModel;
    invoke-direct {p0, v0}, Lcom/hf/UI/WarningListActivity;->showWarning(Lcom/hf/model/WarningModel;)V

    .line 220
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 136
    const-string v0, "WarningListActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/hf/UI/WarningListActivity;->setIntent(Landroid/content/Intent;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/hf/UI/WarningListActivity;->loadResource(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 94
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 95
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 88
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 81
    const-string v0, "WarningListActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
