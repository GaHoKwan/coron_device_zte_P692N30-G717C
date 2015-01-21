.class public Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;
.super Lcom/zte/heartyservice/speedup/SpeedListActivity;
.source "OneKeySpeedActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$2;,
        Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$GifHandler;,
        Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;
    }
.end annotation


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field private circleView:Landroid/view/View;

.field private clearedGarbageTxt:Landroid/widget/TextView;

.field private closedAppTxt:Landroid/widget/TextView;

.field private closedAutorunTxt:Landroid/widget/TextView;

.field private examResultLayout:Landroid/view/ViewGroup;

.field private examStateLayout:Landroid/view/ViewGroup;

.field private examStateTxt:Landroid/widget/TextView;

.field private gifHandler:Landroid/os/Handler;

.field private ic_speed:Landroid/widget/ImageView;

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

.field private mAppCacheInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppFileInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoRunAppInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mRunningProcessInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

.field private one_key_examing_view:Landroid/widget/TextView;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private showClearAppCacheAndFile:Z

.field private showCloseRunningProcess:Z

.field private showDisableAutoRunApp:Z

.field private speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/SpeedListActivity;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->circleView:Landroid/view/View;

    .line 47
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->examStateLayout:Landroid/view/ViewGroup;

    .line 51
    sget-object v0, Lcom/zte/heartyservice/common/datatype/SpeedType;->ONKEYSPEED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;

    .line 55
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 56
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mRunningProcessInfo:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAutoRunAppInfo:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAppCacheInfo:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAppFileInfo:Ljava/util/List;

    .line 62
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 63
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->listItems:Ljava/util/List;

    .line 65
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->animation:Landroid/view/animation/Animation;

    .line 66
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->ic_speed:Landroid/widget/ImageView;

    .line 67
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->one_key_examing_view:Landroid/widget/TextView;

    .line 69
    iput-boolean v2, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->showCloseRunningProcess:Z

    .line 70
    iput-boolean v2, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->showClearAppCacheAndFile:Z

    .line 71
    iput-boolean v2, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->showDisableAutoRunApp:Z

    .line 422
    new-instance v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$GifHandler;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$GifHandler;-><init>(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->gifHandler:Landroid/os/Handler;

    .line 424
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/common/datatype/SpeedType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->showCloseRunningProcess:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->showClearAppCacheAndFile:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->showDisableAutoRunApp:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->examStateLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->one_key_examing_view:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedResultSetting()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mRunningProcessInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAutoRunAppInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAppCacheInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAppFileInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->closedAutorunTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->clearedGarbageTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->closedAppTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->listItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->listItems:Ljava/util/List;

    return-object p1
.end method

.method private autorunAppSetting()V
    .locals 2

    .prologue
    .line 327
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->showDisableAutoRunApp:Z

    if-ne v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->closedAutorunTxt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    :cond_0
    return-void
.end method

.method private eventInit()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/16 v2, 0x8

    .line 261
    const v0, 0x7f0e021c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->circleView:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->circleView:Landroid/view/View;

    new-instance v1, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$1;-><init>(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    const v0, 0x7f0e00c4

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->one_key_examing_view:Landroid/widget/TextView;

    .line 273
    const v0, 0x7f0e0386

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->examStateLayout:Landroid/view/ViewGroup;

    .line 274
    const v0, 0x7f0e00c8

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->examResultLayout:Landroid/view/ViewGroup;

    .line 275
    const v0, 0x7f0e00c3

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->examStateTxt:Landroid/widget/TextView;

    .line 277
    const v0, 0x7f0e0387

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->closedAppTxt:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f0e0388

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->clearedGarbageTxt:Landroid/widget/TextView;

    .line 279
    const v0, 0x7f0e0389

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->closedAutorunTxt:Landroid/widget/TextView;

    .line 281
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->clearedGarbageTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->closedAutorunTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->closedAppTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    const v0, 0x7f0e017d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->ic_speed:Landroid/widget/ImageView;

    .line 286
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x4434

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->animation:Landroid/view/animation/Animation;

    .line 287
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->animation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 288
    return-void
.end method

.method private garbageClearedSetting()V
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->showClearAppCacheAndFile:Z

    if-ne v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->clearedGarbageTxt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :cond_0
    return-void
.end method

.method private oneKeySpeedResultSetting()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->runningAppResultSetting()V

    .line 355
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->garbageClearedSetting()V

    .line 356
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->autorunAppSetting()V

    .line 357
    return-void
.end method

.method private runningAppResultSetting()V
    .locals 2

    .prologue
    .line 345
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->showCloseRunningProcess:Z

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->closedAppTxt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    :cond_0
    return-void
.end method

.method private speedResultSetting()V
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$2;->$SwitchMap$com$zte$heartyservice$common$datatype$SpeedType:[I

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/SpeedType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->examResultLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 321
    return-void

    .line 306
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->oneKeySpeedResultSetting()V

    goto :goto_0

    .line 310
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->runningAppResultSetting()V

    goto :goto_0

    .line 314
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->garbageClearedSetting()V

    goto :goto_0

    .line 317
    :pswitch_3
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->autorunAppSetting()V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    .line 296
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->ic_speed:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 297
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->gifHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 298
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 299
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->gifHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 300
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
    .line 376
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected listViewInit()V
    .locals 4

    .prologue
    .line 363
    new-instance v0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    iget-object v3, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->listItems:Ljava/util/List;

    invoke-direct {v0, p0, v3}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 364
    .local v0, adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;
    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;)V

    .line 365
    const v3, 0x7f0e038b

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 366
    .local v2, view:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 367
    const v3, 0x7f0e038c

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 368
    .local v1, mListView:Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 369
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 370
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 371
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 420
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 234
    invoke-super {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    const v2, 0x7f030110

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->setContentView(I)V

    .line 236
    const v2, 0x7f0a0047

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 237
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 238
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, acitonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/SpeedType;->valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->eventInit()V

    .line 243
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->startAnimation()V

    .line 245
    new-instance v2, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;

    invoke-direct {v2, p0, v3}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$1;)V

    iput-object v2, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, intentSpeedUpService:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 249
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 257
    :cond_0
    invoke-super {p0}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->onDestroy()V

    .line 258
    return-void
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "listItem"
    .parameter "postion"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    .line 383
    move-object v4, p1

    check-cast v4, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;

    .line 385
    .local v4, oneKeyListItem:Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;
    const/4 v5, 0x0

    .line 387
    .local v5, speedItemLayout:Landroid/widget/RelativeLayout;
    if-nez p3, :cond_1

    .line 388
    new-instance v5, Landroid/widget/RelativeLayout;

    .end local v5           #speedItemLayout:Landroid/widget/RelativeLayout;
    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 389
    .restart local v5       #speedItemLayout:Landroid/widget/RelativeLayout;
    const v6, 0x7f030111

    invoke-virtual {p0, v5, v6}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->layoutInit(Landroid/widget/RelativeLayout;I)V

    .line 394
    :goto_0
    const v6, 0x7f0e0034

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 395
    .local v0, appName:Landroid/widget/TextView;
    const v6, 0x7f0e038d

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 396
    .local v1, comments:Landroid/widget/TextView;
    const v6, 0x7f0e00d0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 398
    .local v3, itemState:Lcom/zte/heartyservice/common/datatype/P3Switch;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setEnabled(Z)V

    .line 399
    const v6, 0x7f0e0033

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 400
    .local v2, iconImg:Landroid/widget/ImageView;
    invoke-virtual {v4}, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    invoke-virtual {v4}, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->getRefName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {v4}, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->getComments()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 403
    invoke-virtual {v4}, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->getComments()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :goto_1
    invoke-virtual {v4}, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/heartyservice/common/utils/StringUtils;->isObjNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 408
    invoke-virtual {v3, v7}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 411
    :cond_0
    return-object v5

    .end local v0           #appName:Landroid/widget/TextView;
    .end local v1           #comments:Landroid/widget/TextView;
    .end local v2           #iconImg:Landroid/widget/ImageView;
    .end local v3           #itemState:Lcom/zte/heartyservice/common/datatype/P3Switch;
    :cond_1
    move-object v5, p3

    .line 391
    check-cast v5, Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 405
    .restart local v0       #appName:Landroid/widget/TextView;
    .restart local v1       #comments:Landroid/widget/TextView;
    .restart local v2       #iconImg:Landroid/widget/ImageView;
    .restart local v3       #itemState:Lcom/zte/heartyservice/common/datatype/P3Switch;
    :cond_2
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
