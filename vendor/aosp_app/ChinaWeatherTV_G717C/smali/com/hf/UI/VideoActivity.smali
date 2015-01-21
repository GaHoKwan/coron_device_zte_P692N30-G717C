.class public Lcom/hf/UI/VideoActivity;
.super Landroid/app/Activity;
.source "VideoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/VideoActivity$VideoAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/hf/UI/VideoActivity$VideoAdapter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/VideoModel;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mQueringBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/VideoActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/hf/UI/VideoActivity;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/VideoActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hf/UI/VideoActivity;->mQueringBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/hf/UI/VideoActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/hf/UI/VideoActivity;->initVideoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/hf/UI/VideoActivity;)Lcom/hf/UI/VideoActivity$VideoAdapter;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hf/UI/VideoActivity;->mAdapter:Lcom/hf/UI/VideoActivity$VideoAdapter;

    return-object v0
.end method

.method private initVideoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/VideoModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, stream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/hf/UI/VideoActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "video.xml"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    :goto_0
    if-nez v1, :cond_0

    .line 99
    const/4 v2, 0x0

    .line 101
    :goto_1
    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    invoke-static {p0, v1}, Lcom/hf/utils/Util;->parseVideo(Landroid/content/Context;Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method

.method private queryVideo()V
    .locals 3

    .prologue
    .line 113
    iget-object v1, p0, Lcom/hf/UI/VideoActivity;->mQueringBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_1

    .line 118
    const-string v1, "queryVideo"

    const-string v2, "queryVideo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    new-instance v0, Lcom/hf/UI/VideoActivity$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/VideoActivity$1;-><init>(Lcom/hf/UI/VideoActivity;)V

    .line 147
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private showNotifyDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 245
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 246
    .local v0, dialog:Lcom/hf/UI/HFDialog;
    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setIcon(I)V

    .line 247
    const v1, 0x7f08008b

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setTitle(I)V

    .line 248
    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setContent(I)V

    .line 249
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setTitlePaddingBottom(I)V

    .line 250
    const v1, 0x7f08008d

    new-instance v2, Lcom/hf/UI/VideoActivity$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/hf/UI/VideoActivity$2;-><init>(Lcom/hf/UI/VideoActivity;Ljava/lang/String;Lcom/hf/UI/HFDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 261
    const v1, 0x7f08008e

    new-instance v2, Lcom/hf/UI/VideoActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/hf/UI/VideoActivity$3;-><init>(Lcom/hf/UI/VideoActivity;Lcom/hf/UI/HFDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 270
    :try_start_0
    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 46
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 47
    const v1, 0x7f03002a

    invoke-virtual {p0, v1}, Lcom/hf/UI/VideoActivity;->setContentView(I)V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hf/UI/VideoActivity;->mList:Ljava/util/List;

    .line 49
    const v1, 0x7f0b00b7

    invoke-virtual {p0, v1}, Lcom/hf/UI/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/hf/UI/VideoActivity;->mListView:Landroid/widget/ListView;

    .line 50
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, footerLayout:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/hf/ad/AdManager;->instance()Lcom/hf/ad/AdManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v2, v2}, Lcom/hf/ad/AdManager;->showBanner(Landroid/app/Activity;Landroid/view/ViewGroup;IZ)V

    .line 52
    iget-object v1, p0, Lcom/hf/UI/VideoActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 53
    iget-object v1, p0, Lcom/hf/UI/VideoActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 54
    new-instance v1, Lcom/hf/UI/VideoActivity$VideoAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hf/UI/VideoActivity$VideoAdapter;-><init>(Lcom/hf/UI/VideoActivity;Lcom/hf/UI/VideoActivity$VideoAdapter;)V

    iput-object v1, p0, Lcom/hf/UI/VideoActivity;->mAdapter:Lcom/hf/UI/VideoActivity$VideoAdapter;

    .line 55
    iget-object v1, p0, Lcom/hf/UI/VideoActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/hf/UI/VideoActivity;->mAdapter:Lcom/hf/UI/VideoActivity$VideoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    iget-object v1, p0, Lcom/hf/UI/VideoActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    const v1, 0x7f0b00b8

    invoke-virtual {p0, v1}, Lcom/hf/UI/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/hf/UI/VideoActivity;->mQueringBar:Landroid/widget/ProgressBar;

    .line 60
    invoke-direct {p0}, Lcom/hf/UI/VideoActivity;->queryVideo()V

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 281
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 222
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hf/model/VideoModel;

    .line 223
    .local v2, video:Lcom/hf/model/VideoModel;
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_0

    .line 224
    const-string v3, "VideoActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "url = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/hf/model/VideoModel;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    invoke-static {p0}, Lcom/hf/utils/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 227
    .local v1, netType:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 228
    const v3, 0x7f08008f

    invoke-static {p0, v3}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 238
    :goto_0
    return-void

    .line 230
    :cond_1
    if-eqz v1, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 231
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/hf/UI/VideoPlayActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "video_url"

    iget-object v4, v2, Lcom/hf/model/VideoModel;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Lcom/hf/UI/VideoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 235
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v3, v2, Lcom/hf/model/VideoModel;->url:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/hf/UI/VideoActivity;->showNotifyDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 81
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "onKeyDown"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keyCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/hf/UI/VideoActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/MainActivity;

    invoke-virtual {v0}, Lcom/hf/UI/MainActivity;->screenShot()V

    .line 87
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 75
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 67
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 68
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 106
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "onTouchEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoActivity : event.action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
