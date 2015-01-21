.class Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/smartshow/frameworks/SmartShowManagerService$IFrameworkEventListener;


# static fields
.field public static final ACTION_EXCHANGE_TASK:I = 0x2

.field public static final ACTION_MOVE_TASK:I = 0x1

.field public static DEBUG:Z = false

.field public static final EVENT_EXT_DEVICE_CONNECTED:I = 0x3

.field public static final EVENT_EXT_DEVICE_DISCONNECTED:I = 0x4

.field public static final EVENT_EXT_DEVICE_HAS_CONTENT:I = 0x5

.field public static final EVENT_EXT_DEVICE_NO_CONTENT:I = 0x6

.field public static final EVENT_MULTIWINDOW_DISABLE:I = 0x2

.field public static final EVENT_MULTIWINDOW_ENABLE:I = 0x1

.field public static final MODE_DUAL:I = 0x4

.field public static final MODE_MIRROR:I = 0x2

.field public static final MODE_MULTIWINDOW:I = 0x6

.field public static final MODE_NORMAL:I = 0x1

.field public static TAG:Ljava/lang/String;


# instance fields
.field a:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine$SmartShowModeListener;

.field b:I

.field c:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->DEBUG:Z

    const-string v0, "SmartShowModeMachine"

    sput-object v0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->d:Z

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->e:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine$SmartShowModeListener;

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->c:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->c:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService$IFrameworkEventListener;)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine$SmartShowModeListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine$SmartShowModeListener;

    iget v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    invoke-interface {v1, v0, v2}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine$SmartShowModeListener;->a(II)V

    :cond_2
    return-void

    :pswitch_0
    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    if-eq v1, v4, :cond_3

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    if-ne v1, v5, :cond_1

    :cond_3
    iput v7, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    if-ne v1, v7, :cond_7

    iget-boolean v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->d:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/powermo/smartshow/frameworks/d;->REMOTE_MIRROR_WHEN_EXIT_MULTIWINDOW:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->e:Z

    if-nez v1, :cond_5

    :cond_4
    iput v4, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    goto :goto_0

    :cond_5
    iput v5, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    goto :goto_0

    :cond_6
    iput v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    goto :goto_0

    :cond_7
    sget-boolean v1, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->TAG:Ljava/lang/String;

    const-string v2, "It\'s wired to disable multiwindow when it\'s NOT in multiwindow mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    sget-boolean v1, Lcom/powermo/smartshow/frameworks/d;->DISABLE_REMOTE_DISPLAY:Z

    if-nez v1, :cond_1

    iput-boolean v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->d:Z

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    if-ne v1, v3, :cond_8

    iput v4, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    goto :goto_0

    :cond_8
    sget-boolean v1, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ext device added, but system mode is in"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", change nothing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    sget-boolean v1, Lcom/powermo/smartshow/frameworks/d;->DISABLE_REMOTE_DISPLAY:Z

    if-nez v1, :cond_1

    iput-boolean v6, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->d:Z

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    if-ne v1, v5, :cond_1

    :cond_9
    iput v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    goto/16 :goto_0

    :pswitch_4
    sget-boolean v1, Lcom/powermo/smartshow/frameworks/d;->DISABLE_REMOTE_DISPLAY:Z

    if-nez v1, :cond_1

    iput-boolean v3, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->e:Z

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    if-ne v1, v4, :cond_1

    iput v5, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    goto/16 :goto_0

    :pswitch_5
    sget-boolean v1, Lcom/powermo/smartshow/frameworks/d;->DISABLE_REMOTE_DISPLAY:Z

    if-nez v1, :cond_1

    iput-boolean v6, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->e:Z

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    if-ne v1, v5, :cond_1

    iput v4, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lcom/powermo/smartshow/frameworks/SmartShowModeMachine$SmartShowModeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine$SmartShowModeListener;

    return-void
.end method

.method a(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ext device connected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->d:Z

    return v0
.end method

.method a(III)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->b:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public e(ILjava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-ne p1, v0, :cond_0

    check-cast p2, Lcom/android/server/SmartShowEvent;

    invoke-virtual {p2}, Lcom/android/server/SmartShowEvent;->getScreen()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/server/SmartShowEvent;->isExtendMode()Z

    move-result v3

    invoke-virtual {p2}, Lcom/android/server/SmartShowEvent;->getTaskId()I

    move-result v4

    if-ltz v4, :cond_3

    move v1, v0

    :cond_3
    sget-boolean v4, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle activity event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isExt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " valid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget v3, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    :goto_1
    invoke-virtual {p0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a(I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_1
.end method
