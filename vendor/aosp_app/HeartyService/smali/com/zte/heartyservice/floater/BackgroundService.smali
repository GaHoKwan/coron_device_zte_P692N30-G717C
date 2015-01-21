.class public Lcom/zte/heartyservice/floater/BackgroundService;
.super Landroid/app/Service;
.source "BackgroundService.java"


# static fields
.field private static PREFS_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "NetMonitor"

.field protected static final WHAT:I = 0x123456

.field private static statusBarHeight:I


# instance fields
.field downloadIv:Landroid/widget/ImageView;

.field floatView:Landroid/view/View;

.field private flowInfoStr:Ljava/lang/String;

.field flowTxt:Landroid/widget/TextView;

.field isRun:Z

.field isScreenOn:Z

.field ismove:Z

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field mLayout:Landroid/widget/LinearLayout;

.field private mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mTouchStartX:F

.field private mTouchStartY:F

.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

.field private viewAdded:Z

.field wm:Landroid/view/WindowManager;

.field wmParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private xDownInScreen:F

.field private y:F

.field private yDownInScreen:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "com.zte.netmonitor"

    sput-object v0, Lcom/zte/heartyservice/floater/BackgroundService;->PREFS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wm:Landroid/view/WindowManager;

    .line 37
    iput-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 42
    iput-boolean v3, p0, Lcom/zte/heartyservice/floater/BackgroundService;->isRun:Z

    .line 43
    iput-boolean v2, p0, Lcom/zte/heartyservice/floater/BackgroundService;->viewAdded:Z

    .line 44
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->map:Ljava/util/Map;

    .line 45
    iput-boolean v3, p0, Lcom/zte/heartyservice/floater/BackgroundService;->isScreenOn:Z

    .line 57
    iput-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mHandler:Landroid/os/Handler;

    .line 58
    iput-boolean v2, p0, Lcom/zte/heartyservice/floater/BackgroundService;->ismove:Z

    .line 62
    new-instance v0, Lcom/zte/heartyservice/floater/BackgroundService$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/floater/BackgroundService$1;-><init>(Lcom/zte/heartyservice/floater/BackgroundService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/floater/BackgroundService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->viewAdded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/floater/BackgroundService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->viewAdded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/floater/BackgroundService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->flowInfoStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/floater/BackgroundService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->x:F

    return v0
.end method

.method static synthetic access$1002(Lcom/zte/heartyservice/floater/BackgroundService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->x:F

    return p1
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/floater/BackgroundService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->flowInfoStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/floater/BackgroundService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->y:F

    return v0
.end method

.method static synthetic access$1102(Lcom/zte/heartyservice/floater/BackgroundService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->y:F

    return p1
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/floater/BackgroundService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zte/heartyservice/floater/BackgroundService;->updateViewPosition()V

    return-void
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/floater/BackgroundService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zte/heartyservice/floater/BackgroundService;->saveViewPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/floater/BackgroundService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/floater/BackgroundService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zte/heartyservice/floater/BackgroundService;->notifyClosed()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/floater/BackgroundService;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zte/heartyservice/floater/BackgroundService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mTouchStartX:F

    return p1
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/floater/BackgroundService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mTouchStartY:F

    return p1
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/floater/BackgroundService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->xDownInScreen:F

    return v0
.end method

.method static synthetic access$702(Lcom/zte/heartyservice/floater/BackgroundService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->xDownInScreen:F

    return p1
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/floater/BackgroundService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->yDownInScreen:F

    return v0
.end method

.method static synthetic access$802(Lcom/zte/heartyservice/floater/BackgroundService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->yDownInScreen:F

    return p1
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/floater/BackgroundService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zte/heartyservice/floater/BackgroundService;->getStatusBarHeight()I

    move-result v0

    return v0
.end method

.method private createView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7da

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 279
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 280
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 282
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 284
    sget-object v1, Lcom/zte/heartyservice/floater/BackgroundService;->PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/zte/heartyservice/floater/BackgroundService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 285
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "x"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 286
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "y"

    const/16 v3, 0x64

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 288
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/zte/heartyservice/floater/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 289
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/zte/heartyservice/floater/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 290
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 291
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x3f19999a

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 293
    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getMobileState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getWifiState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService;->floatView:Landroid/view/View;

    iget-object v3, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iput-boolean v4, p0, Lcom/zte/heartyservice/floater/BackgroundService;->viewAdded:Z

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->flowTxt:Landroid/widget/TextView;

    new-instance v2, Lcom/zte/heartyservice/floater/BackgroundService$5;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/floater/BackgroundService$5;-><init>(Lcom/zte/heartyservice/floater/BackgroundService;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 353
    return-void
.end method

.method private getStatusBarHeight()I
    .locals 6

    .prologue
    .line 388
    sget v5, Lcom/zte/heartyservice/floater/BackgroundService;->statusBarHeight:I

    if-nez v5, :cond_0

    .line 390
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 391
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 392
    .local v3, o:Ljava/lang/Object;
    const-string v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 393
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 394
    .local v4, x:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/floater/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/zte/heartyservice/floater/BackgroundService;->statusBarHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v3           #o:Ljava/lang/Object;
    .end local v4           #x:I
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return v5

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private notifyClosed()V
    .locals 4

    .prologue
    .line 381
    const-string v1, "com.zte.heartyservice.floater"

    .line 382
    .local v1, uniqueActionString:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "message"

    const-string v3, "HelloWoreld!"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/floater/BackgroundService;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    return-void
.end method

.method private saveViewPosition()V
    .locals 5

    .prologue
    .line 367
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/zte/heartyservice/floater/BackgroundService;->x:F

    iget v4, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mTouchStartX:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 368
    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/zte/heartyservice/floater/BackgroundService;->y:F

    iget v4, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mTouchStartY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 369
    sget-object v2, Lcom/zte/heartyservice/floater/BackgroundService;->PREFS_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/zte/heartyservice/floater/BackgroundService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 371
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 372
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "x"

    iget-object v3, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 373
    const-string v2, "y"

    iget-object v3, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 375
    return-void
.end method

.method private updateViewPosition()V
    .locals 3

    .prologue
    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->x:F

    iget v2, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mTouchStartX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 358
    iget-object v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->y:F

    iget v2, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mTouchStartY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 359
    iget-object v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->floatView:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 96
    iput-object p0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mContext:Landroid/content/Context;

    .line 97
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/floater/BackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wm:Landroid/view/WindowManager;

    .line 98
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 99
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/floater/BackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 100
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->floatView:Landroid/view/View;

    .line 101
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->floatView:Landroid/view/View;

    const v2, 0x7f0e0028

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->downloadIv:Landroid/widget/ImageView;

    .line 102
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->floatView:Landroid/view/View;

    const v2, 0x7f0e00f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->flowTxt:Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->flowTxt:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/heartyservice/floater/BackgroundService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->flowTxt:Landroid/widget/TextView;

    new-instance v2, Lcom/zte/heartyservice/floater/BackgroundService$2;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/floater/BackgroundService$2;-><init>(Lcom/zte/heartyservice/floater/BackgroundService;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/zte/heartyservice/floater/BackgroundService$3;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/floater/BackgroundService$3;-><init>(Lcom/zte/heartyservice/floater/BackgroundService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 182
    new-instance v1, Lcom/zte/heartyservice/floater/BackgroundService$4;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/floater/BackgroundService$4;-><init>(Lcom/zte/heartyservice/floater/BackgroundService;)V

    iput-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mHandler:Landroid/os/Handler;

    .line 231
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 240
    iget-object v3, p0, Lcom/zte/heartyservice/floater/BackgroundService;->mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/floater/BackgroundService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    const-string v3, "NetMonitor"

    const-string v4, "stopping Background Service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wm:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/zte/heartyservice/floater/BackgroundService;->floatView:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    iput-boolean v5, p0, Lcom/zte/heartyservice/floater/BackgroundService;->viewAdded:Z

    .line 251
    iput-boolean v5, p0, Lcom/zte/heartyservice/floater/BackgroundService;->isRun:Z

    .line 252
    invoke-direct {p0}, Lcom/zte/heartyservice/floater/BackgroundService;->notifyClosed()V

    .line 254
    sget-object v3, Lcom/zte/heartyservice/floater/BackgroundService;->PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/zte/heartyservice/floater/BackgroundService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 256
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 257
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "x"

    iget-object v4, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string v3, "y"

    iget-object v4, p0, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 261
    return-void

    .line 246
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "NetMonitor"

    const-string v4, "Exception 2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 265
    const-string v0, "NetMonitor"

    const-string v1, "starting xxx Background Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 267
    iget-boolean v0, p0, Lcom/zte/heartyservice/floater/BackgroundService;->viewAdded:Z

    if-nez v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/zte/heartyservice/floater/BackgroundService;->createView()V

    .line 271
    :cond_0
    return-void
.end method
