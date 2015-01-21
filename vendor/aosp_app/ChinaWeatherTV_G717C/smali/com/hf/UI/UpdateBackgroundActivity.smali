.class public Lcom/hf/UI/UpdateBackgroundActivity;
.super Landroid/app/Activity;
.source "UpdateBackgroundActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdatper:Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;

.field private mGridView:Landroid/widget/GridView;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mSelected:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/UpdateBackgroundActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/UpdateBackgroundActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mSelected:I

    return v0
.end method

.method private initList()V
    .locals 3

    .prologue
    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mList:Ljava/util/List;

    .line 61
    iget-object v1, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mList:Ljava/util/List;

    const v2, 0x7f02003c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mList:Ljava/util/List;

    const v2, 0x7f02003d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mList:Ljava/util/List;

    const v2, 0x7f02003e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mList:Ljava/util/List;

    const v2, 0x7f02003f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {p0}, Lcom/hf/utils/Util;->isNubia(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mList:Ljava/util/List;

    const v2, 0x7f020006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "preference_background_index"

    invoke-static {p0}, Lcom/hf/utils/Util;->getDefaultBgIndex(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mSelected:I

    .line 72
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x7

    .line 39
    invoke-virtual {p0, v3}, Lcom/hf/UI/UpdateBackgroundActivity;->requestWindowFeature(I)Z

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 42
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 43
    const v2, 0x7f030029

    invoke-virtual {p0, v2}, Lcom/hf/UI/UpdateBackgroundActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/hf/UI/UpdateBackgroundActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 45
    .local v1, window:Landroid/view/Window;
    const v2, 0x7f03000b

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 46
    const v2, 0x7f0b0032

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    .local v0, title:Landroid/widget/TextView;
    const v2, 0x7f0800bf

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 49
    const v2, 0x7f0b00b5

    invoke-virtual {p0, v2}, Lcom/hf/UI/UpdateBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mRootView:Landroid/widget/RelativeLayout;

    .line 50
    iget-object v2, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mRootView:Landroid/widget/RelativeLayout;

    invoke-static {v2, p0}, Lcom/hf/utils/Util;->setRootViewBackground(Landroid/view/View;Landroid/content/Context;)V

    .line 51
    const v2, 0x7f0b00b6

    invoke-virtual {p0, v2}, Lcom/hf/UI/UpdateBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mGridView:Landroid/widget/GridView;

    .line 52
    iget-object v2, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    invoke-direct {p0}, Lcom/hf/UI/UpdateBackgroundActivity;->initList()V

    .line 54
    new-instance v2, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;-><init>(Lcom/hf/UI/UpdateBackgroundActivity;Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;)V

    iput-object v2, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mAdatper:Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;

    .line 55
    iget-object v2, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mAdatper:Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 130
    .local p1, partent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 131
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v0, :cond_1

    .line 140
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 141
    .local v5, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 142
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "preference_background_index"

    invoke-interface {v1, v6, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "com.hf.CHANGE_BACKGROUND"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v4}, Lcom/hf/UI/UpdateBackgroundActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    iget-object v6, p0, Lcom/hf/UI/UpdateBackgroundActivity;->mRootView:Landroid/widget/RelativeLayout;

    invoke-static {v6, p0}, Lcom/hf/utils/Util;->setRootViewBackground(Landroid/view/View;Landroid/content/Context;)V

    .line 149
    sget-boolean v6, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v6, :cond_0

    .line 150
    const-string v6, "onItemClick"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "count = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-void

    .line 132
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #preferences:Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;

    .line 133
    .local v2, holder:Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;
    if-ne v3, p3, :cond_2

    .line 134
    iget-object v6, v2, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 131
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    :cond_2
    iget-object v6, v2, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 84
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 85
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 77
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 79
    return-void
.end method
