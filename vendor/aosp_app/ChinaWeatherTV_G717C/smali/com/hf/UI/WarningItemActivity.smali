.class public Lcom/hf/UI/WarningItemActivity;
.super Landroid/app/Activity;
.source "WarningItemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WarningItemActivity"


# instance fields
.field private mWarningItemContent:Landroid/widget/TextView;

.field private mWarningItemImage:Landroid/widget/ImageView;

.field private mWarningItemName:Landroid/widget/TextView;

.field private mWarningItemPriventive:Landroid/widget/TextView;

.field private mWarningItemPriventiveTitle:Landroid/widget/TextView;

.field private mWarningItemTime:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private loadResource(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "city_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, cityId:Ljava/lang/String;
    const-string v4, "city_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, name:Ljava/lang/String;
    const-string v4, "warning_model"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/hf/model/WarningModel;

    .line 99
    .local v3, warning:Lcom/hf/model/WarningModel;
    sget-boolean v4, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v4, :cond_0

    .line 100
    const-string v4, "WarningItemActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cityId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    if-nez v3, :cond_1

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-direct {p0, v3}, Lcom/hf/UI/WarningItemActivity;->showItemWarn(Lcom/hf/model/WarningModel;)V

    .line 107
    iget-object v4, p0, Lcom/hf/UI/WarningItemActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showItemWarn(Lcom/hf/model/WarningModel;)V
    .locals 5
    .parameter "warning"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 113
    invoke-static {p0}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/hf/model/WarningModel;->title:Ljava/lang/String;

    .line 114
    .local v0, title:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemImage:Landroid/widget/ImageView;

    iget v2, p1, Lcom/hf/model/WarningModel;->bigImageId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemContent:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/hf/model/WarningModel;->decription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemTime:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/hf/model/WarningModel;->reportTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget v1, p1, Lcom/hf/model/WarningModel;->priventiveId:I

    if-nez v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemPriventiveTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemPriventive:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :goto_1
    return-void

    .line 113
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Lcom/hf/model/WarningModel;->englishTitle:Ljava/lang/String;

    goto :goto_0

    .line 122
    .restart local v0       #title:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemPriventiveTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemPriventive:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemPriventiveTitle:Landroid/widget/TextView;

    const v2, 0x7f08010a

    invoke-virtual {p0, v2}, Lcom/hf/UI/WarningItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemPriventive:Landroid/widget/TextView;

    iget v2, p1, Lcom/hf/model/WarningModel;->priventiveId:I

    invoke-virtual {p0, v2}, Lcom/hf/UI/WarningItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 132
    .local v0, id:I
    const v3, 0x7f0b0032

    if-ne v0, v3, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/hf/UI/WarningItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "notify_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, notifyType:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/hf/UI/WarningItemActivity;->finish()V

    .line 146
    .end local v2           #notifyType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local v2       #notifyType:Ljava/lang/String;
    :cond_1
    const-string v3, "notifyToOne"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    const-string v3, "notifyToOne"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/hf/UI/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/hf/UI/WarningItemActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const-string v3, "finish"

    const-string v4, "finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/hf/UI/WarningItemActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x7

    .line 34
    invoke-virtual {p0, v2}, Lcom/hf/UI/WarningItemActivity;->requestWindowFeature(I)Z

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 38
    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Lcom/hf/UI/WarningItemActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/hf/UI/WarningItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 40
    .local v0, window:Landroid/view/Window;
    const v1, 0x7f03000b

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 41
    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hf/UI/WarningItemActivity;->title:Landroid/widget/TextView;

    .line 42
    iget-object v1, p0, Lcom/hf/UI/WarningItemActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v1, 0x7f0b00c6

    invoke-virtual {p0, v1}, Lcom/hf/UI/WarningItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemImage:Landroid/widget/ImageView;

    .line 45
    const v1, 0x7f0b00c5

    invoke-virtual {p0, v1}, Lcom/hf/UI/WarningItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemName:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f0b00c7

    invoke-virtual {p0, v1}, Lcom/hf/UI/WarningItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemTime:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f0b00c8

    invoke-virtual {p0, v1}, Lcom/hf/UI/WarningItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemContent:Landroid/widget/TextView;

    .line 48
    const v1, 0x7f0b00c9

    invoke-virtual {p0, v1}, Lcom/hf/UI/WarningItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemPriventiveTitle:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f0b00ca

    invoke-virtual {p0, v1}, Lcom/hf/UI/WarningItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hf/UI/WarningItemActivity;->mWarningItemPriventive:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Lcom/hf/UI/WarningItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hf/UI/WarningItemActivity;->loadResource(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hf.KILL_PROCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/hf/UI/WarningItemActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 80
    const-string v0, "WarningItemActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/hf/UI/WarningItemActivity;->setIntent(Landroid/content/Intent;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/hf/UI/WarningItemActivity;->loadResource(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 72
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 73
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 65
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 66
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 59
    const-string v0, "WarningItemActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method
