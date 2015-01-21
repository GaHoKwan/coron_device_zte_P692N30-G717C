.class public Lcom/powermo/smartshow/frameworks/SmartShowManagerService;
.super Lcom/powermo/smartshow/frameworks/ISmartShowManager$Stub;

# interfaces
.implements Lcom/android/server/SmartShowManagerFuns;


# static fields
.field private static A:I = 0x0

.field private static B:I = 0x0

.field private static C:I = 0x0

.field private static D:Ljava/lang/String; = null

.field public static DEBUG:Z = false

.field public static DEBUG_REMOTE_CONFIGURATION:Z = false

.field public static HOME_DOUBLE_PRESS_PERIOD:I = 0x0

.field public static final SMARTBAR_ACTION:Ljava/lang/String; = "com.powermo.smartbar.action"

.field public static final WORK_ACTION:Ljava/lang/String; = "com.powermo.smartshow.action"

.field static a:I

.field private static y:I

.field private static z:I


# instance fields
.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field private final I:I

.field private final J:I

.field private final K:I

.field private final L:I

.field private final M:I

.field private final N:I

.field private final O:I

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Lcom/powermo/smartshow/frameworks/o;

.field private S:Landroid/content/Context;

.field private T:Z

.field private U:Landroid/hardware/display/DisplayManager;

.field private V:Lcom/powermo/smartshow/frameworks/p;

.field private W:Z

.field private X:Landroid/hardware/input/InputManager;

.field private Y:Landroid/content/BroadcastReceiver;

.field private Z:Landroid/content/res/Configuration;

.field private aa:F

.field private ab:I

.field private ac:I

.field private ad:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine$SmartShowModeListener;

.field private ae:Lcom/powermo/smartshow/frameworks/f;

.field private final af:Lcom/powermo/smartshow/frameworks/aa;

.field private final ag:I

.field private ah:Ljava/util/Vector;

.field private ai:I

.field private aj:Landroid/content/res/Configuration;

.field private ak:I

.field private al:I

.field private am:I

.field private an:I

.field private ao:Z

.field private ap:Landroid/os/Handler;

.field private aq:Z

.field private final ar:Landroid/content/BroadcastReceiver;

.field private final as:Landroid/content/BroadcastReceiver;

.field private at:Landroid/hardware/display/WifiDisplayStatus;

.field private au:Ljava/lang/Runnable;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field f:Z

.field g:Z

.field public h:Z

.field public i:Lcom/android/server/am/ActivityManagerService;

.field j:Lcom/powermo/smartshow/frameworks/l;

.field k:Ljava/util/HashMap;

.field l:Ljava/util/HashMap;

.field m:Ljava/util/ArrayList;

.field n:Lcom/powermo/smartshow/frameworks/ai;

.field public o:Landroid/os/Handler;

.field p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

.field q:Lcom/powermo/smartshow/frameworks/ad;

.field r:Ljava/util/HashMap;

.field public s:Landroid/hardware/SensorManager;

.field public t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

.field u:Lcom/powermo/smartshow/frameworks/test/f;

.field v:Lcom/powermo/smartshow/frameworks/ag;

.field public w:Lcom/android/server/wm/WindowManagerService;

.field x:Lcom/powermo/smartshow/frameworks/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "SmartShowManagerService"

    sput-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    sput-boolean v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    sput-boolean v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG_REMOTE_CONFIGURATION:Z

    sput v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->y:I

    sput v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a:I

    const/16 v0, 0xe0

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->C:I

    const/16 v0, 0x20

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->B:I

    const/16 v0, 0x80

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->z:I

    const/16 v0, 0xa0

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->A:I

    const/16 v0, 0x7d0

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->HOME_DOUBLE_PRESS_PERIOD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/powermo/smartshow/frameworks/ISmartShowManager$Stub;-><init>()V

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->R:Lcom/powermo/smartshow/frameworks/o;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->V:Lcom/powermo/smartshow/frameworks/p;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->v:Lcom/powermo/smartshow/frameworks/ag;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->g:Z

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->n:Lcom/powermo/smartshow/frameworks/ai;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->x:Lcom/powermo/smartshow/frameworks/ah;

    iput v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->u:Lcom/powermo/smartshow/frameworks/test/f;

    const-string v0, "0"

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->P:Ljava/lang/String;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aj:Landroid/content/res/Configuration;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->Z:Landroid/content/res/Configuration;

    const-string v0, "0"

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->Q:Ljava/lang/String;

    iput v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ai:I

    iput-boolean v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aq:Z

    const-string v0, "com.powermo.display.disconnect"

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->F:Ljava/lang/String;

    const-string v0, "com.powermo.display.connect"

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->E:Ljava/lang/String;

    const-string v0, "com.powermo.thumnail.exit"

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->H:Ljava/lang/String;

    new-instance v0, Lcom/powermo/smartshow/frameworks/t;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/frameworks/t;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ar:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/powermo/smartshow/frameworks/u;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/frameworks/u;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->as:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ap:Landroid/os/Handler;

    new-instance v0, Lcom/powermo/smartshow/frameworks/v;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/frameworks/v;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->au:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ao:Z

    iput-boolean v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->T:Z

    iput v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ak:I

    const v0, 0x913e

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ag:I

    iput v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->am:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    iput v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->d:I

    iput v4, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->e:I

    iput v5, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->b:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->c:I

    iput v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->I:I

    iput v4, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->J:I

    const v0, 0x340dd

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ab:I

    const v0, 0x1e0f3

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->an:I

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->s:Landroid/hardware/SensorManager;

    iput v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->K:I

    iput v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->M:I

    iput v4, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->O:I

    iput v5, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->L:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->N:I

    iput v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->al:I

    iput-boolean v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->W:Z

    new-instance v0, Lcom/powermo/smartshow/frameworks/aa;

    invoke-direct {v0, p0, v1}, Lcom/powermo/smartshow/frameworks/aa;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Lcom/powermo/smartshow/frameworks/s;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->af:Lcom/powermo/smartshow/frameworks/aa;

    new-instance v0, Lcom/powermo/smartshow/frameworks/x;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/frameworks/x;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->Y:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/powermo/smartshow/frameworks/y;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/frameworks/y;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ad:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine$SmartShowModeListener;

    const-string v0, "force_update_multiwindow"

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->G:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->m:Ljava/util/ArrayList;

    new-instance v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    new-instance v1, Lcom/powermo/smartshow/frameworks/e;

    invoke-direct {v1, p0}, Lcom/powermo/smartshow/frameworks/e;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->a(Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;)V

    invoke-static {}, Landroid/content/SmartShowContextWrapper;->getDefaultContext()Landroid/content/SmartShowContextWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0, v1}, Landroid/content/SmartShowContextWrapper;->attach(Landroid/content/SmartShowContext;)V

    new-instance v0, Lcom/powermo/smartshow/frameworks/ad;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/frameworks/ad;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    new-instance v0, Lcom/powermo/smartshow/frameworks/f;

    invoke-direct {v0}, Lcom/powermo/smartshow/frameworks/f;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    return-void
.end method

.method static synthetic a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->at:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/hardware/input/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->X:Landroid/hardware/input/InputManager;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->U:Landroid/hardware/display/DisplayManager;

    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->s:Landroid/hardware/SensorManager;

    const-string v1, "input"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->X:Landroid/hardware/input/InputManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aa:F

    new-instance v0, Lcom/powermo/smartshow/frameworks/n;

    const-string v1, "panel"

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->LOCAL_DEVICE_ID:I

    invoke-direct {v0, v1, v2}, Lcom/powermo/smartshow/frameworks/n;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->LOCAL_DEVICE_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/powermo/smartshow/frameworks/n;

    const-string v1, "ext0"

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-direct {v0, v1, v2}, Lcom/powermo/smartshow/frameworks/n;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ar:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/powermo/smartshow/frameworks/ai;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/frameworks/ai;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->n:Lcom/powermo/smartshow/frameworks/ai;

    new-instance v0, Lcom/powermo/smartshow/frameworks/ag;

    invoke-direct {v0, p0, p1}, Lcom/powermo/smartshow/frameworks/ag;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->v:Lcom/powermo/smartshow/frameworks/ag;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/f;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.powermo.smartshow.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->Y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->as:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->af:Lcom/powermo/smartshow/frameworks/aa;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/aa;->start()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "command"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive Intent Action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Command : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v4, "com.powermo.smartshow.action"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v3, :cond_4

    const-string v2, "cmd_long_press_back"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ss_s_btn_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-lez v2, :cond_3

    move v0, v1

    :cond_3
    const-string v1, "ss_s_btn_enabled"

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-lez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.powermo.smartbar.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cmd_show_minilauncher"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_5

    const-string v2, "cmd_get_status"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->o()V

    goto/16 :goto_0

    :cond_5
    if-eqz v3, :cond_8

    const-string v2, "cmd_long_press_menu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    if-ne v2, v0, :cond_7

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ss_s_btn_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-lez v2, :cond_6

    move v0, v1

    :cond_6
    const-string v1, "ss_s_btn_enabled"

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-lez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.powermo.smartbar.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cmd_show_minilauncher"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v2}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getFocusedScreen()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->startIdleActivityLocked(I)Z

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-string v1, "com.powermo.smartbar.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v3, :cond_9

    const-string v1, "doubleClick"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "cmd_exit_multiwindow"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "cmd_show_minilauncher"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/os/Message;)V
    .locals 4

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->R:Lcom/powermo/smartshow/frameworks/o;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/powermo/smartshow/frameworks/o;->a(Ljava/lang/String;II)I

    return-void
.end method

.method static synthetic a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->c(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ao:Z

    return p1
.end method

.method static synthetic b(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/os/Message;)V
    .locals 8

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle Display hotplug "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v4, p1, Landroid/os/Message;->arg2:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/powermo/smartshow/frameworks/DisplayInfo;

    if-nez v0, :cond_2

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with unknown info!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getId()I

    move-result v5

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aa:F

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->setDensity(F)V

    iget-object v6, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powermo/smartshow/frameworks/n;

    invoke-virtual {v1, v0}, Lcom/powermo/smartshow/frameworks/n;->a(Lcom/powermo/smartshow/frameworks/DisplayInfo;)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->l:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    if-ne v4, v1, :cond_1

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ai:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->setRotateCap(Z)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    new-instance v1, Lcom/powermo/smartshow/frameworks/s;

    invoke-direct {v1, p0}, Lcom/powermo/smartshow/frameworks/s;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    invoke-virtual {p0, v0, v3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(IZ)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/n;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/n;->b()Lcom/powermo/smartshow/frameworks/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v5, v0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    if-eq v5, v2, :cond_5

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->f:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ai:I

    :cond_5
    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/n;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/powermo/smartshow/frameworks/n;->a(Lcom/powermo/smartshow/frameworks/DisplayInfo;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    if-ne v4, v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    const/4 v1, -0x3

    invoke-virtual {v0, v1, v3}, Lcom/powermo/smartshow/frameworks/l;->d(II)I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/l;->d()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->Q:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.powermo.display.disconnect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.powermo.thumnail.exit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    invoke-virtual {p0, v0, v3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(IZ)I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a(I)V

    iput-object v6, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aj:Landroid/content/res/Configuration;

    iput-object v6, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->Z:Landroid/content/res/Configuration;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic b(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic c(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->at:Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->h:Z

    return-void
.end method

.method static synthetic c(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->g(Landroid/os/Message;)V

    return-void
.end method

.method private d(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService$IFrameworkEventListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService$IFrameworkEventListener;->e(ILjava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->d(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic d(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ao:Z

    return v0
.end method

.method static synthetic e(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->au:Ljava/lang/Runnable;

    return-object v0
.end method

.method private e(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->R:Lcom/powermo/smartshow/frameworks/o;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/o;->a(I)V

    return-void
.end method

.method static synthetic e(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic f(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ap:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/l;->c()V

    return-void
.end method

.method private f(Landroid/os/Message;)V
    .locals 3

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->R:Lcom/powermo/smartshow/frameworks/o;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/powermo/smartshow/frameworks/o;->a(IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->f(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic g(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->U:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method private g(Landroid/os/Message;)V
    .locals 8

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x1

    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_MODE_CHANGE:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_ENABLE_DUAL_SCREEN:I

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    :goto_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ad;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v2, v1, v0}, Lcom/powermo/smartshow/frameworks/ad;->b(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_CHANGE_SPLIT_RATIO:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/powermo/smartshow/frameworks/ad;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_SEND_TEST_COMMAND:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->u:Lcom/powermo/smartshow/frameworks/test/f;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/powermo/smartshow/frameworks/test/f;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_UNLOCK_SCREEN:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ad;->k(I)V

    goto :goto_0

    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_SWITCH_TO_NEXT_DISPLAY_MODE:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ad;->j(I)V

    goto :goto_0

    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_EXCHANGE_TASK:I

    if-ne v0, v1, :cond_b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v1, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v6, :cond_9

    if-eq v1, v2, :cond_9

    sget v3, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    add-int/2addr v1, v3

    :cond_9
    if-ne v4, v6, :cond_a

    if-eq v0, v2, :cond_a

    sget v2, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    add-int/2addr v0, v2

    :cond_a
    invoke-virtual {p0, v1, v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(II)V

    goto/16 :goto_0

    :cond_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_MOVE_TASK:I

    if-ne v0, v1, :cond_f

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v1, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v3, v6, :cond_c

    if-eq v0, v2, :cond_c

    sget v5, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    add-int/2addr v0, v5

    :cond_c
    if-ne v4, v6, :cond_d

    if-eq v1, v2, :cond_d

    sget v4, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    add-int/2addr v1, v4

    :cond_d
    if-ne v3, v6, :cond_e

    if-ne v0, v2, :cond_e

    const/4 v0, -0x2

    :cond_e
    invoke-virtual {p0, v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->b(II)V

    goto/16 :goto_0

    :cond_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_CHECK_DISPLAY_WITH_CONTEXT_ID:I

    if-ne v0, v1, :cond_10

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_RESET_SCREEN:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_11

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_11
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->startIdleActivityLocked(I)Z

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_12
    move-object v0, v1

    move v1, v2

    goto/16 :goto_1
.end method

.method static synthetic g(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->h(Landroid/os/Message;)V

    return-void
.end method

.method private g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic h(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ak:I

    return v0
.end method

.method private h(Landroid/os/Message;)V
    .locals 4

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/ActivityManagerService;->startIdleActivityLocked(IZ)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->e(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic i(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Lcom/powermo/smartshow/frameworks/aa;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->af:Lcom/powermo/smartshow/frameworks/aa;

    return-object v0
.end method

.method static synthetic j(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->f()V

    return-void
.end method

.method private l(I)I
    .locals 4

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/l;->g(I)I

    move-result v0

    sget-boolean v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get context task id context id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " task id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method


# virtual methods
.method public a(IILcom/powermo/smartshow/frameworks/DisplayInfo;)I
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayHotplug state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v3
.end method

.method public a(IZ)I
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;II)I
    .locals 3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public a(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p2}, Lcom/powermo/smartshow/frameworks/l;->b(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(II)V
    .locals 3

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exchange task src:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a(III)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/l;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/l;->c(II)I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "system forbit to exchange task in current mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(ILandroid/graphics/Rect;)V
    .locals 3

    const-string v0, "RemoteClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDisplayStatus, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/i;

    invoke-virtual {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/i;->a(ILandroid/graphics/Rect;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(ILjava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check display with Context ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/l;->a(ILjava/lang/String;)I

    :cond_1
    return-void
.end method

.method a(Landroid/content/res/Configuration;Z)V
    .locals 7

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/n;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/n;->b()Lcom/powermo/smartshow/frameworks/DisplayInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v0, v2, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update screen layout fail with display info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v3

    iget v0, v2, Lcom/powermo/smartshow/frameworks/DisplayInfo;->m:I

    iget v1, v2, Lcom/powermo/smartshow/frameworks/DisplayInfo;->d:I

    if-le v0, v1, :cond_3

    iget v0, v2, Lcom/powermo/smartshow/frameworks/DisplayInfo;->m:I

    :goto_1
    iget v1, v2, Lcom/powermo/smartshow/frameworks/DisplayInfo;->m:I

    iget v4, v2, Lcom/powermo/smartshow/frameworks/DisplayInfo;->d:I

    if-le v1, v4, :cond_4

    iget v1, v2, Lcom/powermo/smartshow/frameworks/DisplayInfo;->d:I

    :goto_2
    sget-boolean v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG_REMOTE_CONFIGURATION:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " long size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " short size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    int-to-float v0, v0

    iget v4, v2, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    div-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v1, v1

    iget v2, v2, Lcom/powermo/smartshow/frameworks/DisplayInfo;->b:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-eqz p2, :cond_5

    iput v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    const/4 v0, 0x2

    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v3, v0, v1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :goto_3
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    goto :goto_0

    :cond_3
    iget v0, v2, Lcom/powermo/smartshow/frameworks/DisplayInfo;->d:I

    goto :goto_1

    :cond_4
    iget v1, v2, Lcom/powermo/smartshow/frameworks/DisplayInfo;->m:I

    goto :goto_2

    :cond_5
    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    const/4 v0, 0x1

    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v3, v0, v1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_3
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->n:Lcom/powermo/smartshow/frameworks/ai;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ai;->a(Landroid/graphics/Region;)V

    return-void
.end method

.method public a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService$IFrameworkEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/f;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 8

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->W:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScreenPID isMultiWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->al:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v2, v1

    :goto_1
    if-eqz p1, :cond_3

    sget v3, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_PROCESSID_WITH_SCREEN:I

    invoke-virtual {p0, v3, v1, v6}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    move-result v3

    sget v4, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_PROCESSID_WITH_SCREEN:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "source0="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pid0="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->s:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v1, v2, v3, v1}, Landroid/hardware/SensorManager;->updateRoute(IIII)I

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->s:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1, v0, v4, v1}, Landroid/hardware/SensorManager;->updateRoute(IIII)I

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ab:I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ab:I

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->an:I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->an:I

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ab:I

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ab:I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->an:I

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ab:I

    move v2, v1

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->an:I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ab:I

    goto :goto_1

    :pswitch_4
    move v0, v1

    move v2, v1

    goto :goto_1

    :cond_3
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_PROCESSID_WITH_SCREEN:I

    invoke-virtual {p0, v0, v1, v6}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->s:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v1, v2, v0, v1}, Landroid/hardware/SensorManager;->updateRoute(IIII)I

    sget-object v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "source0="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(I)Z
    .locals 8

    const/4 v7, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "debug.powermo.rdrotate"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    sget v4, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/n;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/n;->b()Lcom/powermo/smartshow/frameworks/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v4, v0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    if-ne v4, v7, :cond_3

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_3

    sget-boolean v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG_REMOTE_CONFIGURATION:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canRotateRemoteDisplay for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getRotateCap()I

    move-result v0

    if-ne v0, v7, :cond_2

    move v0, v1

    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    invoke-virtual {v1, p3}, Lcom/powermo/smartshow/frameworks/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    invoke-virtual {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    invoke-virtual {v0, p1, p3}, Lcom/powermo/smartshow/frameworks/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public b(IILjava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_ENABLE_DUAL_SCREEN:I

    if-ne p1, v1, :cond_2

    if-eqz p3, :cond_2

    instance-of v1, p3, Landroid/content/Intent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p2, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p2, p3}, Lcom/powermo/smartshow/frameworks/ad;->c(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public b(IZ)I
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v4, 0x9

    invoke-virtual {v3, v4, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(I)Landroid/content/res/Configuration;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "debug.powermo.rdrotate"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v1, Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Landroid/content/res/Configuration;Z)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    sget v3, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/n;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/n;->b()Lcom/powermo/smartshow/frameworks/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v3, v0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getId()I

    move-result v0

    if-ne v0, p1, :cond_4

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG_REMOTE_CONFIGURATION:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentRemoteDisplayConfiguration "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aj:Landroid/content/res/Configuration;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for display "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aj:Landroid/content/res/Configuration;

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aj:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aj:Landroid/content/res/Configuration;

    const/4 v1, 0x1

    iput v1, v0, Landroid/content/res/Configuration;->seq:I

    :cond_3
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aj:Landroid/content/res/Configuration;

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 5

    const/16 v4, 0xb

    const/4 v3, -0x2

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check home press: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/ad;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/l;->i(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.IDLER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.smartbar.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cmd_show_toast"

    const-string v2, "Home-Double"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->h:Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->HOME_DOUBLE_PRESS_PERIOD:I

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.smartbar.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cmd_exit_multiwindow"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->h:Z

    goto :goto_0
.end method

.method b(II)V
    .locals 3

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move task src:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a(III)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/l;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/l;->d(II)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "system forbit to move task in current mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c(I)I
    .locals 5

    const-string v0, "debug.powermo.rdrotate"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/n;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/n;->b()Lcom/powermo/smartshow/frameworks/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, v0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_2

    sget-boolean v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG_REMOTE_CONFIGURATION:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentRemoteDisplayRotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getRotation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getRotation()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 5

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/n;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/n;->a()Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectWifiDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->af:Lcom/powermo/smartshow/frameworks/aa;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/aa;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->af:Lcom/powermo/smartshow/frameworks/aa;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/aa;->a:Landroid/os/Handler;

    new-instance v1, Lcom/powermo/smartshow/frameworks/z;

    invoke-direct {v1, p0, p1}, Lcom/powermo/smartshow/frameworks/z;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    const-string v1, "connectWifiDisplay failed "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createOverlayDisplay(Ljava/lang/String;Landroid/view/Surface;IIILandroid/os/IBinder;)I
    .locals 8

    iget-object v6, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->r:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    new-instance v7, Lcom/powermo/smartshow/frameworks/ac;

    invoke-direct {v7, p0, p6, p2, p3}, Lcom/powermo/smartshow/frameworks/ac;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/IBinder;Landroid/view/Surface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p6, v7, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->addRemoteThumbnailControllerDisplay(Ljava/lang/String;Landroid/view/Surface;III)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d(I)Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;
    .locals 4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get device deviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez p1, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/n;

    if-nez v0, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/n;->a()Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/f;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump SmartShowManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v0, v1

    move v2, v1

    :goto_1
    array-length v3, p3

    if-ge v0, v3, :cond_2

    aget-object v3, p3, v0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_4

    :cond_2
    const-string v3, "SmartShowManagerService Dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aj:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last Remote Configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->Z:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v3, p3

    if-ge v0, v3, :cond_7

    aget-object v3, p3, v0

    add-int/lit8 v0, v0, 0x1

    const-string v0, "namelist"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    invoke-virtual {v0, p2}, Lcom/powermo/smartshow/frameworks/f;->a(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    const-string v2, "-a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "-h"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "SmartShowManagerService dump options:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [-a] [-h] [cmd] ..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  cmd may be one of:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    n[amelist]: last name list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -a: include all available server state."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; use -h for help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/powermo/smartshow/frameworks/d;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p2}, Lcom/powermo/smartshow/frameworks/ad;->a(Ljava/io/PrintWriter;)V

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0, p2}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->a(Ljava/io/PrintWriter;)V

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    invoke-virtual {v0, p2}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a(Ljava/io/PrintWriter;)V

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "System Devices:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    if-ge v1, v4, :cond_8

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_0

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->u:Lcom/powermo/smartshow/frameworks/test/f;

    invoke-virtual {v0, p2}, Lcom/powermo/smartshow/frameworks/test/f;->a(Ljava/io/PrintWriter;)V

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    invoke-virtual {v0, p2}, Lcom/powermo/smartshow/frameworks/f;->a(Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method e(I)I
    .locals 5

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/DisplayInfo;

    sget-object v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get display id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->a()Lcom/powermo/smartshow/frameworks/n;

    move-result-object v0

    sget-object v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get device id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/n;->c()I

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aq:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aq:Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->V:Lcom/powermo/smartshow/frameworks/p;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/powermo/smartshow/frameworks/p;->a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public exeRemoteCmd(IILjava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOTE DEVICE TYPE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_SET_REMOTE_DISPLAY_CAPABILITY:I

    invoke-virtual {p0, v0, p2, v5}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    :cond_0
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOTE ORIENTATION:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5, p2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->setRemoteDisplayConfiguration(Landroid/content/res/Configuration;I)V

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SESSION CREATE:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "127.0.0.1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :goto_2
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/i;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/i;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is exsited!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/powermo/smartshow/frameworks/i;

    const v0, 0x913e

    invoke-direct {v4, p3, v0}, Lcom/powermo/smartshow/frameworks/i;-><init>(Ljava/lang/String;I)V

    move v2, v1

    :goto_3
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/i;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/i;->b()I

    move-result v0

    if-nez v0, :cond_6

    move v2, v3

    :goto_4
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v2, :cond_4

    move v0, v1

    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->W:Z

    const/4 v2, 0x1

    iput v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->al:I

    invoke-virtual {v4, v0}, Lcom/powermo/smartshow/frameworks/i;->a(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->U:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->U:Landroid/hardware/display/DisplayManager;

    :cond_5
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->U:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v0, v2}, Lcom/powermo/smartshow/frameworks/i;->a(II)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/powermo/smartshow/frameworks/i;->c(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :pswitch_3
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENTER MULTI WINDOW:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_7

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_ENABLE_DUAL_SCREEN:I

    const-string v2, "-2"

    invoke-virtual {p0, v0, p2, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->T:Z

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_CHANGE_SPLIT_RATIO:I

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_MIDDLE:I

    invoke-virtual {p0, v0, v2, v5}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_ENABLE_DUAL_SCREEN:I

    invoke-virtual {p0, v0, p2, v5}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    goto/16 :goto_1

    :pswitch_4
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "START WFD:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->U:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->U:Landroid/hardware/display/DisplayManager;

    :cond_9
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->U:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    iput-boolean v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ao:Z

    iput p2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ak:I

    goto/16 :goto_1

    :pswitch_5
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START LAUNCHER:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.powermo.smartbar.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cmd_show_minilauncher"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    :pswitch_6
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SWITCH WINDOW:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_EXCHANGE_TASK:I

    const-string v2, "0,0,0,1"

    invoke-virtual {p0, v0, v1, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    goto/16 :goto_1

    :pswitch_7
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MOVE TO LEFT:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->T:Z

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_CHANGE_SPLIT_RATIO:I

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_START:I

    invoke-virtual {p0, v0, v2, v5}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    goto/16 :goto_1

    :pswitch_8
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MOVE TO RIGHT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->T:Z

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_CHANGE_SPLIT_RATIO:I

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_END:I

    invoke-virtual {p0, v0, v2, v5}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    goto/16 :goto_1

    :pswitch_9
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FULL SCREEN:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->c()I

    move-result v0

    if-nez v0, :cond_b

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_ENABLE_DUAL_SCREEN:I

    const-string v2, "0,0"

    invoke-virtual {p0, v0, v1, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    :cond_a
    :goto_5
    iput v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->al:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Z)V

    goto/16 :goto_1

    :cond_b
    if-ne v0, v3, :cond_a

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_ENABLE_DUAL_SCREEN:I

    const-string v2, "0,1"

    invoke-virtual {p0, v0, v1, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    goto :goto_5

    :pswitch_a
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TEAR DOWN CONNECTION:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_6
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/i;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/i;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/i;->a()V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is closed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->al:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Z)V

    iput-boolean v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->W:Z

    goto/16 :goto_1

    :pswitch_b
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE STATUS:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->p()V

    move v2, v1

    :goto_7
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/i;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/i;

    invoke-virtual {v0, v3}, Lcom/powermo/smartshow/frameworks/i;->c(I)V

    :cond_e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :pswitch_c
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENABLE SENSOR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->al:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Z)V

    goto/16 :goto_1

    :cond_f
    move v2, v1

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public f(I)I
    .locals 4

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/l;->c(I)I

    move-result v0

    sget-boolean v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get activity display context id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Display id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public g(I)Landroid/content/res/Configuration;
    .locals 4

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/n;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/n;->b()Lcom/powermo/smartshow/frameworks/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getId()I

    move-result v0

    if-ne v0, p1, :cond_1

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG_REMOTE_CONFIGURATION:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastRemoteDisplayConfiguration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->Z:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->Z:Landroid/content/res/Configuration;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getContextId(Landroid/os/IBinder;)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/l;->a(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    return v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PARAM_KEY_GUARD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get parameters - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->P:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PARAM_KEY_REMOTE_IDLER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->Q:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    aget-object v1, v0, v5

    sget-object v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PARAM_KEY_IS_IDLER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    sget v2, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_SCREEN_COUNT:I

    if-lt v1, v2, :cond_5

    :cond_4
    const-string v0, "0"

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/powermo/smartshow/frameworks/l;->j(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "1"

    goto :goto_0

    :cond_6
    const-string v0, "0"

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenOfPoint(Landroid/graphics/Point;)I
    .locals 3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/powermo/smartshow/frameworks/ad;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->h(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenRect(I)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/ad;->d(I)I

    move-result v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v1, v0}, Lcom/powermo/smartshow/frameworks/ad;->e(I)Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(I)I
    .locals 5

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get screen for Display id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/n;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/n;->a()Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_2

    monitor-exit v2

    move v0, v1

    :goto_1
    return v0

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/ad;->f(I)I

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public i(I)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v3
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/ad;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->a(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->l:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->r:Ljava/util/HashMap;

    new-instance v0, Lcom/powermo/smartshow/frameworks/ab;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/frameworks/ab;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    new-instance v0, Lcom/powermo/smartshow/frameworks/p;

    invoke-direct {v0}, Lcom/powermo/smartshow/frameworks/p;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->V:Lcom/powermo/smartshow/frameworks/p;

    new-instance v0, Lcom/powermo/smartshow/frameworks/o;

    invoke-direct {v0, p1}, Lcom/powermo/smartshow/frameworks/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->R:Lcom/powermo/smartshow/frameworks/o;

    new-instance v0, Lcom/powermo/smartshow/frameworks/ah;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-direct {v0, p1, v1, p0}, Lcom/powermo/smartshow/frameworks/ah;-><init>(Landroid/content/Context;Lcom/android/server/FullSmartShowContext;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->x:Lcom/powermo/smartshow/frameworks/ah;

    new-instance v0, Lcom/powermo/smartshow/frameworks/l;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-direct {v0, p1, v1, p0}, Lcom/powermo/smartshow/frameworks/l;-><init>(Landroid/content/Context;Lcom/android/server/FullSmartShowContext;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    new-instance v0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ad:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine$SmartShowModeListener;

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a(Lcom/powermo/smartshow/frameworks/SmartShowModeMachine$SmartShowModeListener;)V

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->S:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Landroid/content/Context;)V

    const-string v0, "SmartShowManager"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    new-instance v0, Lcom/powermo/smartshow/frameworks/test/f;

    invoke-direct {v0, p1, p0}, Lcom/powermo/smartshow/frameworks/test/f;-><init>(Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->u:Lcom/powermo/smartshow/frameworks/test/f;

    return-void
.end method

.method j(I)V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    iput p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    sget-boolean v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->n:Lcom/powermo/smartshow/frameworks/ai;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ai;->a()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->v:Lcom/powermo/smartshow/frameworks/ag;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ag;->a()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->n:Lcom/powermo/smartshow/frameworks/ai;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ai;->b()V

    goto :goto_1
.end method

.method public k(I)V
    .locals 3

    const-string v0, "RemoteClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateModeToRemote, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->am:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ah:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/i;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/i;->b(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/powermo/smartshow/frameworks/ISmartShowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    sget-object v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    const-string v2, "SmartShow Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0
.end method

.method public perform(IILjava/lang/String;)I
    .locals 7

    const/4 v6, 0x4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value3:null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_DISPLAY_ID:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->f(I)I

    move-result v0

    :goto_1
    return v0

    :cond_1
    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value3:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_TASK_ID:I

    if-ne p1, v0, :cond_3

    invoke-direct {p0, p2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->l(I)I

    move-result v0

    goto :goto_1

    :cond_3
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_SCREEN:I

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->h(I)I

    move-result v0

    goto :goto_1

    :cond_4
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GENERATE_CONTEXT_ID:I

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/l;->a()I

    move-result v0

    goto :goto_1

    :cond_5
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_SCREEN_WITH_PROCESSID:I

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p2}, Lcom/powermo/smartshow/frameworks/l;->f(I)I

    move-result v0

    goto :goto_1

    :cond_6
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_DISPLAY_WITH_PROCESSID:I

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p2}, Lcom/powermo/smartshow/frameworks/l;->d(I)I

    move-result v0

    goto :goto_1

    :cond_7
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_SHOULD_UPDATE_APP_CONFIGURATION:I

    if-ne p1, v0, :cond_a

    if-eqz p3, :cond_9

    const-string v0, "APP_CONFIGURATION_CHANGE_FORCE"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p3, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_1

    :cond_9
    move v0, v3

    goto :goto_1

    :cond_a
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_AUDIO_FORCE_LOCAL:I

    if-ne p1, v0, :cond_b

    const-string v0, "dev.smartshow.audio_flocal"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :cond_b
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_STATUSBAR_HEIGHT:I

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->c()I

    move-result v0

    goto/16 :goto_1

    :cond_c
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_FORCE_PORTRAIT_DISPLAY_ID:I

    if-eq p1, v0, :cond_d

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_FORCE_LANDSCAPE_DISPLAY_ID:I

    if-ne p1, v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->c(I)I

    move-result v0

    goto/16 :goto_1

    :cond_e
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_FOCUSED_SCREEN:I

    if-ne p1, v0, :cond_12

    if-nez p2, :cond_f

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->c()I

    move-result v0

    goto/16 :goto_1

    :cond_f
    if-ne p2, v1, :cond_11

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    sget v4, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/n;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/n;->b()Lcom/powermo/smartshow/frameworks/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    monitor-exit v1

    move v0, v2

    goto/16 :goto_1

    :cond_10
    monitor-exit v1

    :cond_11
    move v0, v3

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_12
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_NUMBER_OF_SCREENS:I

    if-ne p1, v0, :cond_15

    if-nez p2, :cond_13

    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ac:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1f

    const/4 v0, 0x2

    goto/16 :goto_1

    :cond_13
    if-ne p2, v1, :cond_14

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a()Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v2

    goto/16 :goto_1

    :cond_14
    move v0, v3

    goto/16 :goto_1

    :cond_15
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_SET_REMOTE_DISPLAY_CAPABILITY:I

    if-ne p1, v0, :cond_19

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    sget v4, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/n;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/n;->b()Lcom/powermo/smartshow/frameworks/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    iget v4, v0, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    if-ne v4, v6, :cond_18

    sget-boolean v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG_REMOTE_CONFIGURATION:Z

    if-eqz v4, :cond_16

    sget-object v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set remote display capability "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_17

    move v2, v1

    :cond_17
    invoke-virtual {v0, v2}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->setRotateCap(Z)V

    :cond_18
    iput p2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ai:I

    monitor-exit v3

    move v0, v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_19
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_ALLOW_IME_FULLSCREEN:I

    if-ne p1, v0, :cond_1a

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->allowIMEFullscreen()Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v2

    goto/16 :goto_1

    :cond_1a
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_PROCESSID_WITH_SCREEN:I

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p2}, Lcom/powermo/smartshow/frameworks/l;->e(I)I

    move-result v0

    goto/16 :goto_1

    :cond_1b
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_MUTE_SCREEN:I

    if-ne p1, v0, :cond_1d

    const-string v0, "0"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p2, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(IZ)I

    move v0, v1

    goto/16 :goto_1

    :cond_1c
    invoke-virtual {p0, p2, v1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(IZ)I

    move v0, v1

    goto/16 :goto_1

    :cond_1d
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_MIRROR_REMOTE:I

    if-ne p1, v0, :cond_1e

    invoke-virtual {p0, p2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i(I)I

    move v0, v1

    goto/16 :goto_1

    :cond_1e
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    invoke-virtual {v2, v6, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto/16 :goto_1

    :cond_1f
    move v0, v1

    goto/16 :goto_1
.end method

.method public removeOverlayDisplay(Landroid/os/IBinder;)I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->r:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/ac;

    if-nez v0, :cond_0

    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ac;->a()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayManagerService;->removeRemoteThumbnailControllerDisplay(Landroid/view/Surface;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set parameters - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PARAM_KEY_GUARD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->P:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    const-string v0, "force_update_multiwindow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->o()V

    :cond_2
    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PARAM_KEY_REMOTE_IDLER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->Q:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->b(IZ)I

    iput-object p2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->Q:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public setRemoteDisplayConfiguration(Landroid/content/res/Configuration;I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k:Ljava/util/HashMap;

    sget v3, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/n;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/n;->b()Lcom/powermo/smartshow/frameworks/DisplayInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v0, v3, Lcom/powermo/smartshow/frameworks/DisplayInfo;->l:I

    if-ne v0, v4, :cond_2

    invoke-virtual {v3}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->getId()I

    move-result v0

    invoke-virtual {v3, p2}, Lcom/powermo/smartshow/frameworks/DisplayInfo;->setRotation(I)V

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aj:Landroid/content/res/Configuration;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aj:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->aj:Landroid/content/res/Configuration;

    const/4 v2, 0x1

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v4, v0, p2}, Lcom/android/server/am/ActivityManagerService;->sendCommand(III)I

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public updateData([B)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->ae:Lcom/powermo/smartshow/frameworks/f;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/f;->a([B)V

    return-void
.end method
