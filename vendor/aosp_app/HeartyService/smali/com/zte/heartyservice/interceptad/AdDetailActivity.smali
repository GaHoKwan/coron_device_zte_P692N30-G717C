.class public Lcom/zte/heartyservice/interceptad/AdDetailActivity;
.super Landroid/app/Activity;
.source "AdDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/interceptad/AdDetailActivity$Holder;,
        Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;,
        Lcom/zte/heartyservice/interceptad/AdDetailActivity$PackageDeleteObserver;
    }
.end annotation


# instance fields
.field private bottom:Landroid/widget/LinearLayout;

.field private mAdText:Landroid/widget/TextView;

.field private mAdapter:Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;

.field private mAppInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

.field private mAppName:Landroid/widget/TextView;

.field private mBlocked:Landroid/widget/ImageView;

.field private mButton1:Landroid/widget/Button;

.field private mButton2:Landroid/widget/Button;

.field private mIcon:Landroid/widget/ImageView;

.field private mInfo:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPDO:Lcom/zte/heartyservice/interceptad/AdDetailActivity$PackageDeleteObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private notice:Landroid/view/View;

.field private noticeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$PackageDeleteObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/interceptad/AdDetailActivity$PackageDeleteObserver;-><init>(Lcom/zte/heartyservice/interceptad/AdDetailActivity;Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mPDO:Lcom/zte/heartyservice/interceptad/AdDetailActivity$PackageDeleteObserver;

    .line 71
    new-instance v0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;-><init>(Lcom/zte/heartyservice/interceptad/AdDetailActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 251
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/interceptad/AdDetailActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/interceptad/AdDetailActivity;)Lcom/zte/heartyservice/interceptad/AdDetailActivity$PackageDeleteObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mPDO:Lcom/zte/heartyservice/interceptad/AdDetailActivity$PackageDeleteObserver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/interceptad/AdDetailActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/interceptad/AdDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->uninstallPkg(Ljava/lang/String;)V

    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    .local v1, uninstallIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method


# virtual methods
.method public initUI()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 122
    invoke-virtual {p0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "ad_detail"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    iput-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    .line 123
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    if-nez v5, :cond_0

    .line 187
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v4, 0x0

    .line 128
    .local v4, label:Ljava/lang/String;
    const/4 v3, 0x0

    .line 131
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    iget-object v6, v6, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 133
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 134
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    iget-object v6, v6, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 136
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAdText:Landroid/widget/TextView;

    const v6, 0x7f0a04ee

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    invoke-virtual {v9}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->getAdCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_1
    new-instance v5, Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;

    iget-object v6, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    iget-object v6, v6, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->adList:Ljava/util/List;

    invoke-direct {v5, p0, v6, p0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;-><init>(Lcom/zte/heartyservice/interceptad/AdDetailActivity;Ljava/util/List;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAdapter:Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;

    .line 144
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAdapter:Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mButton1:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mButton2:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    sget-boolean v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->showNewInterceptAdView:Z

    if-ne v5, v10, :cond_1

    .line 163
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    :cond_1
    sget v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->firstInterceptAdRoot:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 167
    sget-boolean v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->interceptAdRoot:Z

    if-nez v5, :cond_3

    .line 168
    sput v10, Lcom/zte/heartyservice/main/HeartyServiceApp;->firstInterceptAdRoot:I

    .line 178
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->updateButton2()V

    .line 186
    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->notice:Landroid/view/View;

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 170
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    sput v12, Lcom/zte/heartyservice/main/HeartyServiceApp;->firstInterceptAdRoot:I

    goto :goto_2

    .line 172
    :cond_4
    sget v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->firstInterceptAdRoot:I

    if-ne v5, v10, :cond_2

    sget-boolean v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->interceptAdRoot:Z

    if-ne v5, v10, :cond_2

    .line 174
    const v5, 0x7f0a04f3

    invoke-static {p0, v5, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 175
    sput v12, Lcom/zte/heartyservice/main/HeartyServiceApp;->firstInterceptAdRoot:I

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 100
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->setContentView(I)V

    .line 102
    invoke-virtual {p0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 104
    const v0, 0x7f0e0012

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppName:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0e0013

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mInfo:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0e0010

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mIcon:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f0e0011

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mBlocked:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f0e0015

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAdText:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0e0016

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mListView:Landroid/widget/ListView;

    .line 111
    const v0, 0x7f0e0019

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->bottom:Landroid/widget/LinearLayout;

    .line 112
    const v0, 0x7f0e001a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mButton1:Landroid/widget/Button;

    .line 113
    const v0, 0x7f0e001b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mButton2:Landroid/widget/Button;

    .line 115
    const v0, 0x7f0e0017

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->notice:Landroid/view/View;

    .line 116
    const v0, 0x7f0e0018

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->noticeText:Landroid/widget/TextView;

    .line 118
    invoke-virtual {p0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->initUI()V

    .line 119
    return-void
.end method

.method updateButton2()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mAppInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isBlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mButton2:Landroid/widget/Button;

    const v1, 0x7f0a04eb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 194
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mButton2:Landroid/widget/Button;

    const v1, 0x7f0a04ec

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 199
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->mInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
