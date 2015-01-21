.class public Lcom/zte/heartyservice/speedup/RunningAppActivity;
.super Lcom/zte/heartyservice/speedup/SpeedListActivity;
.source "RunningAppActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/speedup/RunningAppActivity$SpeedUpServiceConnection;,
        Lcom/zte/heartyservice/speedup/RunningAppActivity$Idler;
    }
.end annotation


# instance fields
.field adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

.field private animation:Landroid/view/animation/Animation;

.field private can_close:I

.field private clearBtn:Landroid/view/View;

.field private closeNumberLabel:Landroid/widget/TextView;

.field private ic_speed:Landroid/widget/ImageView;

.field private init:Z

.field private listItems:Ljava/util/List;
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

.field private mIdler:Lcom/zte/heartyservice/speedup/RunningAppActivity$Idler;

.field private mListView:Landroid/widget/ListView;

.field private mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/SpeedListActivity;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->clearBtn:Landroid/view/View;

    .line 54
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mListView:Landroid/widget/ListView;

    .line 55
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->closeNumberLabel:Landroid/widget/TextView;

    .line 56
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->listItems:Ljava/util/List;

    .line 57
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->init:Z

    .line 60
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 61
    iput v2, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->total:I

    .line 62
    iput v2, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->can_close:I

    .line 64
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 65
    new-instance v0, Lcom/zte/heartyservice/speedup/RunningAppActivity$Idler;

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/speedup/RunningAppActivity$Idler;-><init>(Lcom/zte/heartyservice/speedup/RunningAppActivity;Lcom/zte/heartyservice/speedup/RunningAppActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mIdler:Lcom/zte/heartyservice/speedup/RunningAppActivity$Idler;

    .line 66
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 67
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->animation:Landroid/view/animation/Animation;

    .line 68
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->ic_speed:Landroid/widget/ImageView;

    .line 112
    new-instance v0, Lcom/zte/heartyservice/speedup/RunningAppActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/speedup/RunningAppActivity$1;-><init>(Lcom/zte/heartyservice/speedup/RunningAppActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/speedup/RunningAppActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/speedup/RunningAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/speedup/RunningAppActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/speedup/RunningAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/speedup/RunningAppActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->init:Z

    return v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/speedup/RunningAppActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->init:Z

    return p1
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/speedup/RunningAppActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->can_close:I

    return v0
.end method

.method private eventInit()V
    .locals 2

    .prologue
    .line 239
    const v0, 0x7f0e021c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->clearBtn:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->clearBtn:Landroid/view/View;

    new-instance v1, Lcom/zte/heartyservice/speedup/RunningAppActivity$2;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/speedup/RunningAppActivity$2;-><init>(Lcom/zte/heartyservice/speedup/RunningAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    const v0, 0x7f0e017d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->ic_speed:Landroid/widget/ImageView;

    .line 274
    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->animation:Landroid/view/animation/Animation;

    .line 275
    return-void
.end method


# virtual methods
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
    .line 307
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected listViewInit()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 196
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->listItems:Ljava/util/List;

    .line 199
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getRunningProcessInfoList()Ljava/util/List;

    move-result-object v4

    .line 201
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    iput v11, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->total:I

    .line 202
    iput v11, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->can_close:I

    .line 203
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 204
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    iput v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->total:I

    .line 205
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;

    .line 206
    .local v5, localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    iget v8, v5, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->is_checked:I

    if-ne v8, v9, :cond_0

    .line 207
    iget v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->can_close:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->can_close:I

    goto :goto_0

    .line 212
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    :cond_1
    const v8, 0x7f0a004b

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->can_close:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 213
    .local v7, str:Ljava/lang/String;
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->closeNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;

    .line 217
    .restart local v5       #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v9, v5, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->packageName:Ljava/lang/String;

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 219
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    .local v2, appName:Ljava/lang/String;
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/zte/heartyservice/speedup/SpeedupListItem;

    iget v8, v5, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->is_checked:I

    if-eq v8, v12, :cond_3

    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02008f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :goto_2
    invoke-direct {v6, v2, v0, v8, v5}, Lcom/zte/heartyservice/speedup/SpeedupListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 224
    .local v6, speedItem:Lcom/zte/heartyservice/speedup/SpeedupListItem;
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->listItems:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 226
    .end local v0           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #appName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    .end local v6           #speedItem:Lcom/zte/heartyservice/speedup/SpeedupListItem;
    :catch_0
    move-exception v8

    .line 230
    :cond_2
    new-instance v8, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    iget-object v9, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->listItems:Ljava/util/List;

    invoke-direct {v8, p0, v9}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 231
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v8, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;)V

    .line 232
    const v8, 0x7f0e0390

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mListView:Landroid/widget/ListView;

    .line 233
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mListView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v12}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 236
    return-void

    .line 221
    .restart local v0       #appIcon:Landroid/graphics/drawable/Drawable;
    .restart local v1       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #appName:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    .line 317
    .local v5, viewId:I
    packed-switch v5, :pswitch_data_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 320
    :pswitch_0
    :try_start_0
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    if-eqz v6, :cond_0

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 322
    .local v4, position:I
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v6, v4}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->getItem(I)Lcom/zte/heartyservice/common/datatype/CommonListItem;

    move-result-object v2

    .line 323
    .local v2, item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/CommonListItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;

    .line 324
    .local v3, localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v0, closeList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :try_start_1
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    invoke-interface {v6, v0}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->closeRunningProcess(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 331
    :goto_1
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->removeViewInList(I)V

    goto :goto_0

    .line 333
    .end local v0           #closeList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    .end local v2           #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v3           #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    .end local v4           #position:I
    :catch_0
    move-exception v6

    goto :goto_0

    .line 328
    .restart local v0       #closeList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    .restart local v2       #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .restart local v3       #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    .restart local v4       #position:I
    :catch_1
    move-exception v1

    .line 329
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 317
    :pswitch_data_0
    .packed-switch 0x7f0e00d0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 184
    const v0, 0x7f030112

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->setContentView(I)V

    .line 185
    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 187
    const v0, 0x7f0e038f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->closeNumberLabel:Landroid/widget/TextView;

    .line 188
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->eventInit()V

    .line 189
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->listViewInit()V

    .line 190
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-super {p0}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->onPause()V

    .line 161
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mIdler:Lcom/zte/heartyservice/speedup/RunningAppActivity$Idler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->init:Z

    .line 163
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 167
    :try_start_1
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 176
    iput-object v3, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 179
    :cond_1
    :goto_1
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 173
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 176
    iput-object v3, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    throw v1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->ic_speed:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    new-instance v0, Lcom/zte/heartyservice/speedup/RunningAppActivity$SpeedUpServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/speedup/RunningAppActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/speedup/RunningAppActivity;Lcom/zte/heartyservice/speedup/RunningAppActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 156
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->mIdler:Lcom/zte/heartyservice/speedup/RunningAppActivity$Idler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 157
    return-void
.end method

.method protected declared-synchronized removeViewInList(I)V
    .locals 1
    .parameter "postion"

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/RunningAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->removeItem(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 279
    move-object v4, p1

    check-cast v4, Lcom/zte/heartyservice/speedup/SpeedupListItem;

    .line 280
    .local v4, speedListItem:Lcom/zte/heartyservice/speedup/SpeedupListItem;
    const/4 v3, 0x0

    .line 281
    .local v3, speedItemLayout:Landroid/widget/RelativeLayout;
    if-nez p3, :cond_0

    .line 282
    new-instance v3, Landroid/widget/RelativeLayout;

    .end local v3           #speedItemLayout:Landroid/widget/RelativeLayout;
    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 283
    .restart local v3       #speedItemLayout:Landroid/widget/RelativeLayout;
    const v5, 0x7f030113

    invoke-virtual {p0, v3, v5}, Lcom/zte/heartyservice/speedup/RunningAppActivity;->layoutInit(Landroid/widget/RelativeLayout;I)V

    .line 288
    :goto_0
    const v5, 0x7f0e0034

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 289
    .local v0, appName:Landroid/widget/TextView;
    const v5, 0x7f0e00d0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 290
    .local v2, itemState:Landroid/widget/ImageView;
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    const v5, 0x7f0e0033

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 292
    .local v1, iconImg:Landroid/widget/ImageView;
    invoke-virtual {v4}, Lcom/zte/heartyservice/speedup/SpeedupListItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    invoke-virtual {v4}, Lcom/zte/heartyservice/speedup/SpeedupListItem;->getRefName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 295
    invoke-virtual {v4}, Lcom/zte/heartyservice/speedup/SpeedupListItem;->getStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 297
    return-object v3

    .end local v0           #appName:Landroid/widget/TextView;
    .end local v1           #iconImg:Landroid/widget/ImageView;
    .end local v2           #itemState:Landroid/widget/ImageView;
    :cond_0
    move-object v3, p3

    .line 285
    check-cast v3, Landroid/widget/RelativeLayout;

    goto :goto_0
.end method
