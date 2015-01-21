.class public Lcom/zte/heartyservice/speedup/AutorunAppActivity;
.super Lcom/zte/heartyservice/speedup/SpeedListActivity;
.source "AutorunAppActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;,
        Lcom/zte/heartyservice/speedup/AutorunAppActivity$Idler;
    }
.end annotation


# instance fields
.field adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

.field private animation:Landroid/view/animation/Animation;

.field private autorunNumberLabel:Landroid/widget/TextView;

.field private cleanButton:Landroid/widget/TextView;

.field private clearBtn:Landroid/view/View;

.field private ic_speed:Landroid/widget/ImageView;

.field private init:Z

.field listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mIdler:Lcom/zte/heartyservice/speedup/AutorunAppActivity$Idler;

.field private mListView:Landroid/widget/ListView;

.field private mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/SpeedListActivity;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->clearBtn:Landroid/view/View;

    .line 53
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->autorunNumberLabel:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->cleanButton:Landroid/widget/TextView;

    .line 55
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->listItems:Ljava/util/List;

    .line 56
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->init:Z

    .line 59
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    .line 62
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 63
    new-instance v0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$Idler;

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/speedup/AutorunAppActivity$Idler;-><init>(Lcom/zte/heartyservice/speedup/AutorunAppActivity;Lcom/zte/heartyservice/speedup/AutorunAppActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mIdler:Lcom/zte/heartyservice/speedup/AutorunAppActivity$Idler;

    .line 64
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 66
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->animation:Landroid/view/animation/Animation;

    .line 67
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->ic_speed:Landroid/widget/ImageView;

    .line 111
    new-instance v0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/speedup/AutorunAppActivity$1;-><init>(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/speedup/AutorunAppActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->init:Z

    return v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/speedup/AutorunAppActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->init:Z

    return p1
.end method

.method private eventInit()V
    .locals 1

    .prologue
    .line 241
    const v0, 0x7f0e021c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->clearBtn:Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->clearBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v0, 0x7f0e017d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->ic_speed:Landroid/widget/ImageView;

    .line 244
    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->animation:Landroid/view/animation/Animation;

    .line 245
    return-void
.end method


# virtual methods
.method protected adapterInit(Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "listViewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, listItems:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    new-instance v0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 233
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;)V

    .line 234
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mListView:Landroid/widget/ListView;

    .line 235
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 237
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 238
    return-void
.end method

.method protected handleItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
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
    .line 278
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected listViewInit()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 195
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->listItems:Ljava/util/List;

    .line 198
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAutoRunAppInfoList()Ljava/util/List;

    move-result-object v4

    .line 200
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    iput v12, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    .line 201
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 202
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;

    .line 203
    .local v5, loaclAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    iget v9, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    iget v10, v5, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    goto :goto_0

    .line 207
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #loaclAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    :cond_0
    iget v9, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    if-nez v9, :cond_1

    .line 209
    iget-object v9, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->cleanButton:Landroid/widget/TextView;

    const v10, 0x7f0a0050

    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_1
    const v9, 0x7f0a004d

    new-array v10, v13, [Ljava/lang/Object;

    iget v11, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, str:Ljava/lang/String;
    iget-object v9, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->autorunNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;

    .line 217
    .local v6, localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    iget-object v9, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v6, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x80

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 219
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    .local v2, appName:Ljava/lang/String;
    iget-object v9, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    new-instance v7, Lcom/zte/heartyservice/speedup/AutoRunListItem;

    iget v9, v6, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    if-ne v9, v13, :cond_3

    sget-object v9, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    :goto_2
    invoke-direct {v7, v2, v0, v9, v6}, Lcom/zte/heartyservice/speedup/AutoRunListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/zte/heartyservice/common/datatype/StateType;Ljava/lang/Object;)V

    .line 223
    .local v7, speedItem:Lcom/zte/heartyservice/speedup/AutoRunListItem;
    iget-object v9, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->listItems:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 225
    .end local v0           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #appName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    .end local v7           #speedItem:Lcom/zte/heartyservice/speedup/AutoRunListItem;
    :catch_0
    move-exception v9

    .line 228
    :cond_2
    iget-object v9, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->listItems:Ljava/util/List;

    const v10, 0x7f0e037e

    invoke-virtual {p0, v9, v10}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->adapterInit(Ljava/util/List;I)V

    .line 229
    return-void

    .line 221
    .restart local v0       #appIcon:Landroid/graphics/drawable/Drawable;
    .restart local v1       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #appName:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    :cond_3
    :try_start_1
    sget-object v9, Lcom/zte/heartyservice/common/datatype/StateType;->UNSELECT:Lcom/zte/heartyservice/common/datatype/StateType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .parameter "view"
    .parameter "isChecked"

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v6

    .line 305
    .local v6, viewId:I
    const v7, 0x7f0e037f

    if-ne v6, v7, :cond_1

    .line 306
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    if-eqz v7, :cond_1

    .line 307
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 308
    .local v4, position:I
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->listItems:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zte/heartyservice/speedup/AutoRunListItem;

    invoke-virtual {v7}, Lcom/zte/heartyservice/speedup/AutoRunListItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;

    .line 310
    .local v3, localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    if-nez p2, :cond_2

    .line 311
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->listItems:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zte/heartyservice/speedup/AutoRunListItem;

    sget-object v8, Lcom/zte/heartyservice/common/datatype/StateType;->UNSELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    invoke-virtual {v7, v8}, Lcom/zte/heartyservice/speedup/AutoRunListItem;->setStateType(Lcom/zte/heartyservice/common/datatype/StateType;)V

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v0, disableList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :try_start_0
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    invoke-interface {v7, v0}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->disableAutoRunApp(Ljava/util/List;)V

    .line 316
    iget v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    .line 317
    const v7, 0x7f0a004d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, str:Ljava/lang/String;
    iget v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    if-nez v7, :cond_0

    .line 320
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->cleanButton:Landroid/widget/TextView;

    const v8, 0x7f0a0050

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_0
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->autorunNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const/4 v7, 0x0

    iput v7, v3, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v0           #disableList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    .end local v3           #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    .end local v4           #position:I
    .end local v5           #str:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 324
    .restart local v0       #disableList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    .restart local v3       #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    .restart local v4       #position:I
    :catch_0
    move-exception v1

    .line 325
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 328
    .end local v0           #disableList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->listItems:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zte/heartyservice/speedup/AutoRunListItem;

    sget-object v8, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    invoke-virtual {v7, v8}, Lcom/zte/heartyservice/speedup/AutoRunListItem;->setStateType(Lcom/zte/heartyservice/common/datatype/StateType;)V

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v2, enableList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :try_start_1
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    invoke-interface {v7, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->enableAutoRunApp(Ljava/util/List;)V

    .line 333
    iget v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    .line 334
    iget v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    if-lez v7, :cond_3

    .line 336
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->cleanButton:Landroid/widget/TextView;

    const v8, 0x7f0a004e

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :cond_3
    const v7, 0x7f0a004d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .restart local v5       #str:Ljava/lang/String;
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->autorunNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const/4 v7, 0x1

    iput v7, v3, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 341
    .end local v5           #str:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 342
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 289
    .local v1, viewId:I
    const v2, 0x7f0e021c

    if-ne v1, v2, :cond_0

    .line 290
    iget v2, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    if-lez v2, :cond_1

    .line 291
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Lcom/zte/heartyservice/common/datatype/SpeedType;->AUTORUNAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/SpeedType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 294
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->finish()V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget v2, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->total:I

    if-nez v2, :cond_0

    .line 296
    const v2, 0x7f0a005c

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const v0, 0x7f03010a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->setContentView(I)V

    .line 183
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 184
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 185
    const v0, 0x7f0e037c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->autorunNumberLabel:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f0e037d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->cleanButton:Landroid/widget/TextView;

    .line 187
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->eventInit()V

    .line 188
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->listViewInit()V

    .line 189
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-super {p0}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->onPause()V

    .line 159
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mIdler:Lcom/zte/heartyservice/speedup/AutorunAppActivity$Idler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 160
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->init:Z

    .line 161
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 165
    :try_start_1
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 174
    iput-object v3, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 177
    :cond_1
    :goto_1
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 171
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 174
    iput-object v3, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    throw v1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->ic_speed:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    new-instance v0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/speedup/AutorunAppActivity;Lcom/zte/heartyservice/speedup/AutorunAppActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 154
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mIdler:Lcom/zte/heartyservice/speedup/AutorunAppActivity$Idler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 155
    return-void
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 249
    move-object v3, p1

    check-cast v3, Lcom/zte/heartyservice/speedup/AutoRunListItem;

    .line 250
    .local v3, speedListItem:Lcom/zte/heartyservice/speedup/AutoRunListItem;
    const/4 v2, 0x0

    .line 251
    .local v2, speedItemLayout:Landroid/widget/RelativeLayout;
    if-nez p3, :cond_0

    .line 252
    new-instance v2, Landroid/widget/RelativeLayout;

    .end local v2           #speedItemLayout:Landroid/widget/RelativeLayout;
    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 253
    .restart local v2       #speedItemLayout:Landroid/widget/RelativeLayout;
    const v5, 0x7f03010b

    invoke-virtual {p0, v2, v5}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->layoutInit(Landroid/widget/RelativeLayout;I)V

    .line 258
    :goto_0
    const v5, 0x7f0e0034

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 259
    .local v0, appName:Landroid/widget/TextView;
    const v5, 0x7f0e0033

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 260
    .local v1, iconImg:Landroid/widget/ImageView;
    const v5, 0x7f0e037f

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 262
    .local v4, switchState:Lcom/zte/heartyservice/common/datatype/P3Switch;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setTag(Ljava/lang/Object;)V

    .line 263
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 264
    invoke-virtual {v3}, Lcom/zte/heartyservice/speedup/AutoRunListItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    invoke-virtual {v3}, Lcom/zte/heartyservice/speedup/AutoRunListItem;->getRefName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v3}, Lcom/zte/heartyservice/speedup/AutoRunListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    if-ne v5, v6, :cond_1

    .line 267
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 271
    :goto_1
    invoke-virtual {v4, p0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 272
    return-object v2

    .end local v0           #appName:Landroid/widget/TextView;
    .end local v1           #iconImg:Landroid/widget/ImageView;
    .end local v4           #switchState:Lcom/zte/heartyservice/common/datatype/P3Switch;
    :cond_0
    move-object v2, p3

    .line 255
    check-cast v2, Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 269
    .restart local v0       #appName:Landroid/widget/TextView;
    .restart local v1       #iconImg:Landroid/widget/ImageView;
    .restart local v4       #switchState:Lcom/zte/heartyservice/common/datatype/P3Switch;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_1
.end method
