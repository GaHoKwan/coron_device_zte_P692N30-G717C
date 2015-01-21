.class public Lcom/android/utk/UtkAppService;
.super Landroid/app/Service;
.source "UtkAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utk/UtkAppService$2;,
        Lcom/android/utk/UtkAppService$ServiceHandler;,
        Lcom/android/utk/UtkAppService$DelayedCmd;,
        Lcom/android/utk/UtkAppService$InitiatedByUserAction;
    }
.end annotation


# static fields
.field static final CHOICE:Ljava/lang/String; = "choice"

.field static final CMD_MSG:Ljava/lang/String; = "cmd message"

.field static final CONFIRMATION:Ljava/lang/String; = "confirm"

.field static final HELP:Ljava/lang/String; = "help"

.field static final INPUT:Ljava/lang/String; = "input"

.field private static final INPUT_ACTIVITY_NAME:Ljava/lang/String; = "com.android.utk.UtkInputActivity"

.field private static final MENU_ACTIVITY_NAME:Ljava/lang/String; = "com.android.utk.UtkMenuActivity"

.field static final MENU_SELECTION:Ljava/lang/String; = "menu selection"

.field static final NO:I = 0x0

.field static final OPCODE:Ljava/lang/String; = "op"

.field static final OP_BOOT_COMPLETED:I = 0x5

.field static final OP_CMD:I = 0x1

.field private static final OP_DELAYED_MSG:I = 0x6

.field static final OP_END_SESSION:I = 0x4

.field static final OP_LAUNCH_APP:I = 0x3

.field static final OP_RESPONSE:I = 0x2

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.utk"

.field private static final PHONE_STATE_CHANGED:I = 0x65

.field static final RES_ID:Ljava/lang/String; = "response id"

.field static final RES_ID_BACKWARD:I = 0x15

.field static final RES_ID_CHOICE:I = 0xf

.field static final RES_ID_CONFIRM:I = 0xd

.field static final RES_ID_DONE:I = 0xe

.field static final RES_ID_END_SESSION:I = 0x16

.field static final RES_ID_EXIT:I = 0x17

.field static final RES_ID_INPUT:I = 0xc

.field static final RES_ID_MENU_SELECTION:I = 0xb

.field static final RES_ID_TIMEOUT:I = 0x14

.field private static final SUPP_SERVICE_FAILED:I = 0x66

.field private static final UTK_NOTIFICATION_ID:I = 0x14d

.field static final YES:I = 0x1

.field private static final miSIMid:I

.field static sInstance:Lcom/android/utk/UtkAppService;


# instance fields
.field private lastSelectedItem:Ljava/lang/String;

.field private launchBrowser:Z

.field private mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

.field private mCanLaunchStkMenuActivity:Z

.field private mCmdInProgress:Z

.field private mCmdsQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/utk/UtkAppService$DelayedCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mCurrentMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

.field private mMainCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mMenuIsVisibile:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field public mPhone:Lcom/android/internal/telephony/Phone;

.field private final mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mServiceHandler:Lcom/android/utk/UtkAppService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

.field private responseNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/android/utk/UtkAppService;->sInstance:Lcom/android/utk/UtkAppService;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    .line 88
    iput-object v0, p0, Lcom/android/utk/UtkAppService;->mMainCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 89
    iput-object v0, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 90
    iput-object v0, p0, Lcom/android/utk/UtkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    .line 91
    iput-object v0, p0, Lcom/android/utk/UtkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lcom/android/utk/UtkAppService;->mMenuIsVisibile:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/utk/UtkAppService;->mCanLaunchStkMenuActivity:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/utk/UtkAppService;->responseNeeded:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/utk/UtkAppService;->mCmdInProgress:Z

    .line 96
    iput-object v0, p0, Lcom/android/utk/UtkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 97
    iput-object v0, p0, Lcom/android/utk/UtkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 98
    iput-boolean v1, p0, Lcom/android/utk/UtkAppService;->launchBrowser:Z

    .line 99
    iput-object v0, p0, Lcom/android/utk/UtkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    .line 1028
    new-instance v0, Lcom/android/utk/UtkAppService$1;

    invoke-direct {v0, p0}, Lcom/android/utk/UtkAppService$1;-><init>(Lcom/android/utk/UtkAppService;)V

    iput-object v0, p0, Lcom/android/utk/UtkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/utk/UtkAppService;)Lcom/android/internal/telephony/cdma/utk/AppInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/utk/UtkAppService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mCmdsQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/utk/UtkAppService;Lcom/android/internal/telephony/cdma/utk/AppInterface;)Lcom/android/internal/telephony/cdma/utk/AppInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/utk/UtkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/utk/UtkAppService;->responseNeeded:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/utk/UtkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/utk/UtkAppService;->responseNeeded:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/utk/UtkAppService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/utk/UtkAppService;->handleCmdResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/utk/UtkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->callDelayedMsg()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/utk/UtkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->handleSessionEnd()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/utk/UtkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->handleDelayedCmd()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/utk/UtkAppService;)Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mMainCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/utk/UtkAppService;Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/utk/UtkAppService;->mMainCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/utk/UtkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/utk/UtkAppService;->mCanLaunchStkMenuActivity:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/utk/UtkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/utk/UtkAppService;->mCanLaunchStkMenuActivity:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/utk/UtkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->isBusyOnCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/utk/UtkAppService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/utk/UtkAppService;Lcom/android/internal/telephony/cdma/utk/Menu;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/utk/UtkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cdma/utk/Menu;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/utk/UtkAppService;Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/utk/UtkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/utk/UtkAppService;Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/utk/UtkAppService;->handleCmd(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/utk/UtkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/utk/UtkAppService;->mCmdInProgress:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/utk/UtkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/utk/UtkAppService;->mCmdInProgress:Z

    return p1
.end method

.method private callDelayedMsg()V
    .locals 2

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/utk/UtkAppService;->mServiceHandler:Lcom/android/utk/UtkAppService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 427
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 428
    iget-object v1, p0, Lcom/android/utk/UtkAppService;->mServiceHandler:Lcom/android/utk/UtkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 429
    return-void
.end method

.method private getFlagActivityNoUserAction(Lcom/android/utk/UtkAppService$InitiatedByUserAction;)I
    .locals 3
    .parameter "userAction"

    .prologue
    const/4 v1, 0x0

    .line 772
    sget-object v0, Lcom/android/utk/UtkAppService$InitiatedByUserAction;->yes:Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/utk/UtkAppService;->mMenuIsVisibile:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4

    goto :goto_1
.end method

.method static getInstance()Lcom/android/utk/UtkAppService;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/android/utk/UtkAppService;->sInstance:Lcom/android/utk/UtkAppService;

    return-object v0
.end method

.method private getItemName(I)Ljava/lang/String;
    .locals 5
    .parameter "itemId"

    .prologue
    const/4 v3, 0x0

    .line 978
    iget-object v4, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;

    move-result-object v2

    .line 979
    .local v2, menu:Lcom/android/internal/telephony/cdma/utk/Menu;
    if-nez v2, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-object v3

    .line 982
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/Item;

    .line 983
    .local v1, item:Lcom/android/internal/telephony/cdma/utk/Item;
    iget v4, v1, Lcom/android/internal/telephony/cdma/utk/Item;->id:I

    if-ne v4, p1, :cond_2

    .line 984
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/utk/Item;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleCmd(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V
    .locals 10
    .parameter "cmdMsg"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 455
    if-nez p1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iput-object p1, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 460
    const/4 v4, 0x1

    .line 461
    .local v4, waitForUsersResponse:Z
    const/4 v0, 0x0

    .line 463
    .local v0, additionalInfo:[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    if-nez v5, :cond_2

    .line 466
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getInstance()Lcom/android/internal/telephony/cdma/utk/AppInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    .line 467
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    if-nez v5, :cond_2

    .line 470
    const-string v5, "mUtkService is null when we need to send response in handleCmd"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_2
    sget-object v5, Lcom/android/utk/UtkAppService$2;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 629
    :cond_3
    :goto_1
    if-nez v4, :cond_0

    .line 630
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-eqz v5, :cond_13

    .line 631
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->callDelayedMsg()V

    goto :goto_0

    .line 477
    :pswitch_0
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->isBusyOnCall()Z

    move-result v5

    if-ne v5, v7, :cond_4

    .line 478
    const-string v5, "[Handle Command][DISPLAY_TEXT][Can not handle currently]"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    .line 480
    .local v3, resMsg:Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 481
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto :goto_0

    .line 485
    .end local v3           #resMsg:Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v2

    .line 486
    .local v2, msg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    iget-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    iput-boolean v5, p0, Lcom/android/utk/UtkAppService;->responseNeeded:Z

    .line 487
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->lastSelectedItem:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 488
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->title:Ljava/lang/String;

    .line 495
    :goto_2
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->launchTextDialog()V

    goto :goto_1

    .line 489
    :cond_5
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mMainCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v5, :cond_6

    .line 490
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mMainCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/Menu;->title:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 493
    :cond_6
    const-string v5, ""

    iput-object v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 498
    .end local v2           #msg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;

    move-result-object v5

    iput-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    .line 500
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->isBusyOnCall()Z

    move-result v5

    if-ne v5, v7, :cond_7

    .line 501
    const-string v5, "[Handle Command][SELECT_ITEM][Can not handle currently]"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    .line 503
    .restart local v3       #resMsg:Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 504
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto/16 :goto_0

    .line 508
    .end local v3           #resMsg:Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/utk/UtkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cdma/utk/Menu;)V

    goto :goto_1

    .line 511
    :pswitch_2
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iput-object v5, p0, Lcom/android/utk/UtkAppService;->mMainCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 512
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;

    move-result-object v5

    iput-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    .line 513
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->removeMenu()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 514
    const-string v5, "Uninstall App"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    iput-object v9, p0, Lcom/android/utk/UtkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    .line 521
    :goto_3
    iget-boolean v5, p0, Lcom/android/utk/UtkAppService;->mMenuIsVisibile:Z

    if-eqz v5, :cond_3

    .line 522
    invoke-direct {p0, v9}, Lcom/android/utk/UtkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cdma/utk/Menu;)V

    goto/16 :goto_1

    .line 518
    :cond_8
    const-string v5, "Install App"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/utk/UtkAppInstaller;->install(Landroid/content/Context;)V

    goto :goto_3

    .line 527
    :pswitch_3
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->isBusyOnCall()Z

    move-result v5

    if-ne v5, v7, :cond_9

    .line 528
    const-string v5, "[Handle Command][GET_INPUT][Can not handle currently]"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    .line 530
    .restart local v3       #resMsg:Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 531
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto/16 :goto_0

    .line 534
    .end local v3           #resMsg:Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    :cond_9
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->launchInputActivity()V

    goto/16 :goto_1

    .line 537
    :pswitch_4
    const/4 v4, 0x0

    .line 538
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->launchIdleText()V

    goto/16 :goto_1

    .line 541
    :pswitch_5
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-nez v5, :cond_a

    .line 543
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v6, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    const v7, 0x7f06001b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->setTextMessage(Ljava/lang/String;)V

    .line 548
    :cond_a
    :pswitch_6
    const/4 v4, 0x0

    .line 549
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->launchEventMessage()V

    goto/16 :goto_1

    .line 552
    :pswitch_7
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/utk/UtkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    goto/16 :goto_1

    .line 555
    :pswitch_8
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 556
    const-string v5, "handleCmd SET_UP_CALL confirm text not null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {p0, v5}, Lcom/android/utk/UtkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    goto/16 :goto_1

    .line 560
    :cond_b
    const-string v5, "handleCmd SET_UP_CALL confirm text is null, launchCallMsg"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->launchCallMsg()V

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OK Clicked! isCurCmdSetupCall["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/utk/UtkAppService;->isCurCmdSetupCall()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/android/utk/UtkAppService;->isCurCmdSetupCall()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 565
    const-string v5, "Utk call sendBroadcast(STKCALL_REGISTER_SPEECH_INFO)"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.stk.STKCALL_REGISTER_SPEECH_INFO"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 569
    .end local v1           #intent:Landroid/content/Intent;
    :cond_c
    iput-boolean v8, p0, Lcom/android/utk/UtkAppService;->mCmdInProgress:Z

    goto/16 :goto_1

    .line 577
    :pswitch_9
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->launchToneDialog()V

    goto/16 :goto_1

    .line 580
    :pswitch_a
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->isBusyOnCall()Z

    move-result v5

    if-ne v5, v7, :cond_d

    .line 581
    const-string v5, "isBusyOnCall"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    .line 583
    .restart local v3       #resMsg:Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 584
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    .line 585
    iput-boolean v8, p0, Lcom/android/utk/UtkAppService;->mCmdInProgress:Z

    goto/16 :goto_0

    .line 589
    .end local v3           #resMsg:Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    :cond_d
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_e

    .line 591
    const-string v5, "handleCmd OPEN_CHANNEL confirm text not null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/utk/UtkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    goto/16 :goto_1

    .line 594
    :cond_e
    const-string v5, "handleCmd OPEN_CHANNEL confirm text is null, launchDataCallMsg"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-nez v5, :cond_f

    .line 596
    const-string v5, "Connecting..."

    invoke-direct {p0, v5}, Lcom/android/utk/UtkAppService;->launchDataCallMsg(Ljava/lang/CharSequence;)V

    .line 598
    :cond_f
    const/4 v4, 0x0

    .line 600
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    .line 601
    .restart local v3       #resMsg:Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 602
    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setConfirmation(Z)V

    .line 603
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto/16 :goto_1

    .line 607
    .end local v3           #resMsg:Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    :pswitch_b
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-nez v5, :cond_10

    .line 608
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    const-string v7, "Disconnected"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 609
    :cond_10
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/utk/UtkAppService;->launchDataCallMsg(Ljava/lang/CharSequence;)V

    .line 611
    const/4 v4, 0x0

    .line 612
    goto/16 :goto_1

    .line 614
    :pswitch_c
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-nez v5, :cond_11

    .line 615
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    const-string v7, "Receive data"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 616
    :cond_11
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/utk/UtkAppService;->launchDataCallMsg(Ljava/lang/CharSequence;)V

    .line 618
    const/4 v4, 0x0

    .line 619
    goto/16 :goto_1

    .line 621
    :pswitch_d
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-nez v5, :cond_12

    .line 622
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    const-string v7, "Send data"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 623
    :cond_12
    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/utk/UtkAppService;->launchDataCallMsg(Ljava/lang/CharSequence;)V

    .line 625
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 633
    :cond_13
    iput-boolean v8, p0, Lcom/android/utk/UtkAppService;->mCmdInProgress:Z

    goto/16 :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private handleCmdResponse(Landroid/os/Bundle;)V
    .locals 9
    .parameter "args"

    .prologue
    .line 639
    iget-object v7, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v7, :cond_0

    .line 758
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v7, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    if-nez v7, :cond_1

    .line 643
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getInstance()Lcom/android/internal/telephony/cdma/utk/AppInterface;

    move-result-object v7

    iput-object v7, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    .line 644
    iget-object v7, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    if-nez v7, :cond_1

    .line 647
    const-string v7, "mUtkService is null when we need to send response in handleCmdResponse"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    iget-object v7, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-direct {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    .line 654
    .local v5, resMsg:Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    const-string v7, "handleCmdResponse"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    const-string v7, "help"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 659
    .local v2, helpRequired:Z
    const-string v7, "response id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 754
    :pswitch_0
    const-string v7, "Unknown result id"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :pswitch_1
    const-string v7, "RES_ID_MENU_SELECTION"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    const-string v7, "menu selection"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 663
    .local v4, menuSelection:I
    sget-object v7, Lcom/android/utk/UtkAppService$2;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    iget-object v8, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 757
    .end local v4           #menuSelection:I
    :cond_2
    :goto_1
    :pswitch_2
    iget-object v7, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    invoke-interface {v7, v5}, Lcom/android/internal/telephony/cdma/utk/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto :goto_0

    .line 666
    .restart local v4       #menuSelection:I
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/android/utk/UtkAppService;->getItemName(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/utk/UtkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 667
    if-eqz v2, :cond_3

    .line 668
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 672
    :goto_2
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setMenuSelection(I)V

    goto :goto_1

    .line 670
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_2

    .line 677
    .end local v4           #menuSelection:I
    :pswitch_4
    const-string v7, "RES_ID_INPUT"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    const-string v7, "input"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, input:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geInput()Lcom/android/internal/telephony/cdma/utk/Input;

    move-result-object v0

    .line 680
    .local v0, cmdInput:Lcom/android/internal/telephony/cdma/utk/Input;
    if-eqz v0, :cond_4

    iget-boolean v7, v0, Lcom/android/internal/telephony/cdma/utk/Input;->yesNo:Z

    if-eqz v7, :cond_4

    .line 681
    const-string v7, "YES"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 683
    .local v6, yesNoSelection:Z
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setYesNo(Z)V

    goto :goto_1

    .line 685
    .end local v6           #yesNoSelection:Z
    :cond_4
    if-eqz v2, :cond_5

    .line 686
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_1

    .line 688
    :cond_5
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 689
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setInput(Ljava/lang/String;)V

    goto :goto_1

    .line 694
    .end local v0           #cmdInput:Lcom/android/internal/telephony/cdma/utk/Input;
    .end local v3           #input:Ljava/lang/String;
    :pswitch_5
    const-string v7, "RES_ID_CONFIRM"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    const-string v7, "confirm"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 696
    .local v1, confirmed:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "confirmed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCurrentCmd.getCmdType(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    sget-object v7, Lcom/android/utk/UtkAppService$2;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    iget-object v8, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_1

    .line 699
    :pswitch_7
    if-eqz v1, :cond_6

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    :goto_3
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto/16 :goto_1

    :cond_6
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    goto :goto_3

    .line 703
    :pswitch_8
    if-eqz v1, :cond_7

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    :goto_4
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 705
    if-eqz v1, :cond_2

    .line 706
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/utk/UtkAppService;->launchBrowser:Z

    .line 707
    iget-object v7, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    move-result-object v7

    iput-object v7, p0, Lcom/android/utk/UtkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    goto/16 :goto_1

    .line 703
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    goto :goto_4

    .line 711
    :pswitch_9
    const-string v7, "SET_UP_CALL"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 713
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setConfirmation(Z)V

    .line 714
    if-eqz v1, :cond_2

    .line 715
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->launchCallMsg()V

    goto/16 :goto_1

    .line 719
    :pswitch_a
    const-string v7, "OPEN_CHANNEL"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 721
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setConfirmation(Z)V

    .line 722
    if-eqz v1, :cond_2

    .line 723
    const-string v7, "Setup data call..."

    invoke-direct {p0, v7}, Lcom/android/utk/UtkAppService;->launchDataCallMsg(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 729
    .end local v1           #confirmed:Z
    :pswitch_b
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto/16 :goto_1

    .line 732
    :pswitch_c
    const-string v7, "RES_ID_BACKWARD"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto/16 :goto_1

    .line 736
    :pswitch_d
    const-string v7, "RES_ID_END_SESSION"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto/16 :goto_1

    .line 740
    :pswitch_e
    const-string v7, "RES_ID_TIMEOUT"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    iget-object v7, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v7

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v8

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;->userClear:Z

    if-nez v7, :cond_8

    .line 748
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto/16 :goto_1

    .line 750
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto/16 :goto_1

    .line 659
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 663
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 697
    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method private handleDelayedCmd()V
    .locals 2

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/utk/UtkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/utk/UtkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utk/UtkAppService$DelayedCmd;

    .line 414
    .local v0, cmd:Lcom/android/utk/UtkAppService$DelayedCmd;
    iget v1, v0, Lcom/android/utk/UtkAppService$DelayedCmd;->id:I

    packed-switch v1, :pswitch_data_0

    .line 423
    .end local v0           #cmd:Lcom/android/utk/UtkAppService$DelayedCmd;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 416
    .restart local v0       #cmd:Lcom/android/utk/UtkAppService$DelayedCmd;
    :pswitch_1
    iget-object v1, v0, Lcom/android/utk/UtkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-direct {p0, v1}, Lcom/android/utk/UtkAppService;->handleCmd(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    goto :goto_0

    .line 419
    :pswitch_2
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->handleSessionEnd()V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mMainCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iput-object v0, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 433
    iput-object v2, p0, Lcom/android/utk/UtkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mMainCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mMainCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utk/UtkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    .line 439
    :cond_0
    iget-boolean v0, p0, Lcom/android/utk/UtkAppService;->mMenuIsVisibile:Z

    if-eqz v0, :cond_1

    .line 440
    invoke-direct {p0, v2}, Lcom/android/utk/UtkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cdma/utk/Menu;)V

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 443
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->callDelayedMsg()V

    .line 448
    :goto_0
    iget-boolean v0, p0, Lcom/android/utk/UtkAppService;->launchBrowser:Z

    if-eqz v0, :cond_2

    .line 449
    iput-boolean v1, p0, Lcom/android/utk/UtkAppService;->launchBrowser:Z

    .line 450
    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    invoke-direct {p0, v0}, Lcom/android/utk/UtkAppService;->launchBrowser(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;)V

    .line 452
    :cond_2
    return-void

    .line 445
    :cond_3
    iput-boolean v1, p0, Lcom/android/utk/UtkAppService;->mCmdInProgress:Z

    goto :goto_0
.end method

.method private isBusyOnCall()Z
    .locals 3

    .prologue
    .line 1006
    iget-object v1, p0, Lcom/android/utk/UtkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 1011
    .local v0, s:Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBusyOnCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCmdInteractive(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)Z
    .locals 2
    .parameter "cmd"

    .prologue
    .line 397
    sget-object v0, Lcom/android/utk/UtkAppService$2;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 408
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 405
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private launchBrowser(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;)V
    .locals 6
    .parameter "settings"

    .prologue
    const/high16 v5, 0x400

    .line 856
    if-nez p1, :cond_0

    .line 909
    :goto_0
    return-void

    .line 860
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 861
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    const/4 v0, 0x0

    .line 866
    .local v0, data:Landroid/net/Uri;
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings.url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 869
    :cond_1
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 885
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 887
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 888
    sget-object v3, Lcom/android/utk/UtkAppService$2;->$SwitchMap$com$android$internal$telephony$cdma$utk$LaunchBrowserMode:[I

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 902
    :goto_2
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 907
    const-wide/16 v3, 0x2710

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 908
    :catch_0
    move-exception v3

    goto :goto_0

    .line 871
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 872
    .local v2, modifiedUrl:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifiedUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 873
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 874
    goto :goto_1

    .line 883
    .end local v2           #modifiedUrl:Ljava/lang/String;
    :cond_3
    const-string v3, "http://google.com/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 890
    :pswitch_0
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 894
    :pswitch_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    const/high16 v3, 0x800

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 898
    :pswitch_2
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 888
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private launchCallMsg()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 912
    iget-object v1, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Calling"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 914
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 915
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 916
    return-void
.end method

.method private launchConfirmationDialog(Lcom/android/internal/telephony/cdma/utk/TextMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 845
    iget-object v1, p0, Lcom/android/utk/UtkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->title:Ljava/lang/String;

    .line 846
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/utk/UtkDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 847
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/utk/UtkAppService$InitiatedByUserAction;->unknown:Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/utk/UtkAppService;->getFlagActivityNoUserAction(Lcom/android/utk/UtkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 851
    const-string v1, "TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 852
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 853
    return-void
.end method

.method private launchDataCallMsg(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "txt"

    .prologue
    const/4 v3, 0x0

    .line 919
    iget-object v1, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 921
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 922
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 923
    return-void
.end method

.method private launchEventMessage()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 817
    iget-object v6, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v2

    .line 818
    .local v2, msg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    new-instance v3, Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 822
    .local v3, toast:Landroid/widget/Toast;
    iget-object v6, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 824
    .local v0, inflate:Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f03

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 825
    .local v5, v:Landroid/view/View;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 827
    .local v4, tv:Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 829
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v6, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 830
    iget-object v6, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 834
    :goto_1
    iget-boolean v6, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    if-nez v6, :cond_2

    .line 835
    iget-object v6, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    :cond_2
    invoke-virtual {v3, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 839
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 840
    const/16 v6, 0x50

    invoke-virtual {v3, v6, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 841
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 832
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private launchIdleText()V
    .locals 9

    .prologue
    const v6, 0x108054f

    const v5, 0x1020006

    const/4 v8, 0x0

    const/16 v7, 0x14d

    .line 926
    iget-object v3, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v1

    .line 928
    .local v1, msg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    if-nez v1, :cond_0

    .line 929
    const-string v3, "mCurrent.getTextMessage is NULL"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    iget-object v3, p0, Lcom/android/utk/UtkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 964
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 934
    iget-object v3, p0, Lcom/android/utk/UtkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 936
    :cond_1
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 937
    .local v2, notification:Landroid/app/Notification;
    new-instance v0, Landroid/widget/RemoteViews;

    const-string v3, "com.android.utk"

    const v4, 0x10900ce

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 941
    .local v0, contentView:Landroid/widget/RemoteViews;
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 942
    iput v6, v2, Landroid/app/Notification;->icon:I

    .line 944
    iget-boolean v3, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    if-nez v3, :cond_2

    .line 945
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 946
    const v3, 0x1020046

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 949
    :cond_2
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 950
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 958
    :goto_1
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 959
    iget-object v3, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/utk/UtkAppService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v3, v8, v4, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 962
    iget-object v3, p0, Lcom/android/utk/UtkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 953
    :cond_3
    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private launchInputActivity()V
    .locals 3

    .prologue
    .line 797
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    sget-object v2, Lcom/android/utk/UtkAppService$InitiatedByUserAction;->unknown:Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/utk/UtkAppService;->getFlagActivityNoUserAction(Lcom/android/utk/UtkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 800
    const-string v1, "com.android.utk"

    const-string v2, "com.android.utk.UtkInputActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    const-string v1, "INPUT"

    iget-object v2, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geInput()Lcom/android/internal/telephony/cdma/utk/Input;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 802
    iget-object v1, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 803
    return-void
.end method

.method private launchMenuActivity(Lcom/android/internal/telephony/cdma/utk/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 777
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 778
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.utk"

    const-string v3, "com.android.utk.UtkMenuActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    const/high16 v0, 0x1400

    .line 781
    .local v0, intentFlags:I
    if-nez p1, :cond_0

    .line 783
    sget-object v2, Lcom/android/utk/UtkAppService$InitiatedByUserAction;->yes:Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/utk/UtkAppService;->getFlagActivityNoUserAction(Lcom/android/utk/UtkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 785
    const-string v2, "STATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 792
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 793
    iget-object v2, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 794
    return-void

    .line 788
    :cond_0
    sget-object v2, Lcom/android/utk/UtkAppService$InitiatedByUserAction;->unknown:Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/utk/UtkAppService;->getFlagActivityNoUserAction(Lcom/android/utk/UtkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 790
    const-string v2, "STATE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchTextDialog()V
    .locals 3

    .prologue
    .line 806
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/utk/UtkDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 807
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x5880

    sget-object v2, Lcom/android/utk/UtkAppService$InitiatedByUserAction;->unknown:Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/utk/UtkAppService;->getFlagActivityNoUserAction(Lcom/android/utk/UtkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 812
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 813
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 814
    return-void
.end method

.method private launchToneDialog()V
    .locals 3

    .prologue
    .line 967
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/utk/ToneDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 968
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/utk/UtkAppService$InitiatedByUserAction;->unknown:Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/utk/UtkAppService;->getFlagActivityNoUserAction(Lcom/android/utk/UtkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 972
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 973
    const-string v1, "TONE"

    iget-object v2, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getToneSettings()Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 974
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 975
    return-void
.end method

.method private removeMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 992
    :try_start_0
    iget-object v3, p0, Lcom/android/utk/UtkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/utk/UtkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 1000
    :goto_0
    return v1

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 1000
    goto :goto_0
.end method

.method private waitForLooper()V
    .locals 2

    .prologue
    .line 284
    :goto_0
    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mServiceHandler:Lcom/android/utk/UtkAppService$ServiceHandler;

    if-nez v0, :cond_0

    .line 285
    monitor-enter p0

    .line 287
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 288
    :catch_0
    move-exception v0

    goto :goto_1

    .line 292
    :cond_0
    return-void
.end method


# virtual methods
.method getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    return-object v0
.end method

.method indicateMenuVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/android/utk/UtkAppService;->mMenuIsVisibile:Z

    .line 253
    return-void
.end method

.method isCurCmdSetupCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 263
    iget-object v1, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v1, :cond_1

    .line 264
    const-string v1, "[isCurCmdSetupCall][mCurrentCmd]:null"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v1

    if-nez v1, :cond_2

    .line 267
    const-string v1, "[isCurCmdSetupCall][mCurrentCmd.getCmdType()]:null"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET UP CALL Cmd Check["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v1

    iget-object v2, p0, Lcom/android/utk/UtkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isOnFlightMode()Z
    .locals 4

    .prologue
    .line 1016
    const/4 v1, 0x0

    .line 1018
    .local v1, mode:I
    :try_start_0
    iget-object v2, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1024
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "airlane mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "fail to get airlane mode"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    const/4 v1, 0x0

    goto :goto_0

    .line 1025
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 173
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getInstance()Lcom/android/internal/telephony/cdma/utk/AppInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;

    .line 176
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/utk/UtkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 177
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    const-string v3, "Utk App Service"

    invoke-direct {v1, v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 178
    .local v1, serviceThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 179
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    .line 180
    iget-object v2, p0, Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/utk/UtkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 182
    sput-object p0, Lcom/android/utk/UtkAppService;->sInstance:Lcom/android/utk/UtkAppService;

    .line 184
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/utk/UtkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, mSIMStateChangeFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/utk/UtkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->waitForLooper()V

    .line 231
    iget-object v0, p0, Lcom/android/utk/UtkAppService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 232
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/utk/UtkAppService;->waitForLooper()V

    .line 196
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 202
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 206
    iget-object v2, p0, Lcom/android/utk/UtkAppService;->mServiceHandler:Lcom/android/utk/UtkAppService$ServiceHandler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 207
    .local v1, msg:Landroid/os/Message;
    const-string v2, "op"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 208
    iget v2, v1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 210
    :pswitch_0
    const-string v2, " UTK msg.arg1: OP_CMD"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    const-string v2, "cmd message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    :goto_1
    :pswitch_1
    iget-object v2, p0, Lcom/android/utk/UtkAppService;->mServiceHandler:Lcom/android/utk/UtkAppService$ServiceHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 214
    :pswitch_2
    const-string v2, " UTK msg.arg1: OP_CMD"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 242
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utk/UtkAppService;->mServiceLooper:Landroid/os/Looper;

    .line 243
    new-instance v0, Lcom/android/utk/UtkAppService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/utk/UtkAppService$ServiceHandler;-><init>(Lcom/android/utk/UtkAppService;Lcom/android/utk/UtkAppService$1;)V

    iput-object v0, p0, Lcom/android/utk/UtkAppService;->mServiceHandler:Lcom/android/utk/UtkAppService$ServiceHandler;

    .line 245
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 246
    return-void
.end method
