.class public Lcom/powermo/smartshow/frameworks/SmartShowManager;
.super Ljava/lang/Object;


# static fields
.field public static ACTION_SPLIT_JUMP_AT:I = 0x0

.field public static ACTION_SPLIT_JUMP_DEC:I = 0x0

.field public static ACTION_SPLIT_JUMP_END:I = 0x0

.field public static ACTION_SPLIT_JUMP_INC:I = 0x0

.field public static ACTION_SPLIT_JUMP_MIDDLE:I = 0x0

.field public static ACTION_SPLIT_JUMP_START:I = 0x0

.field public static CONTENT_MODE_DOCK:I = 0x0

.field public static CONTENT_MODE_MIRROR:I = 0x0

.field public static CONTENT_MODE_UNIQUE:I = 0x0

.field public static DEFAULT_EXT_DEVICE_ID:I = 0x0

.field public static DEFAULT_EXT_DISPLAY_ID:I = 0x0

.field public static final DEFAULT_LOCAL_DISPLAY:I = 0x0

.field public static final DEFAULT_REMOTE_DISPLAY:I = 0x1

.field public static final DEVICE_AVAILABLE:I = 0x1

.field public static final DEVICE_ERROR:I = -0x1

.field public static final DEVICE_TYPE_PHONE:I = 0x1

.field public static final DEVICE_TYPE_TV:I = 0x2

.field public static final DEVICE_UNAVAILABLE:I = 0x0

.field public static final DISPLAY_CONNECTED:I = 0x1

.field public static final DISPLAY_DEFAULT_FPS:I = 0x3c

.field public static final DISPLAY_DISCONNECTED:I = 0x0

.field public static final DISPLAY_ERROR:I = -0x1

.field public static final DISPLAY_INPUT_CAP:I = 0x2

.field public static final DISPLAY_ROTATE_CAP:I = 0x1

.field public static final DISPLAY_ROTATE_FIX:I = 0x1

.field public static final DISPLAY_ROTATE_FULL:I = 0x4

.field public static final DISPLAY_ROTATE_LANDSCAPE:I = 0x2

.field public static final DISPLAY_ROTATE_PORTRAIT:I = 0x3

.field public static final DISPLAY_SENSOR_CAP:I = 0x4

.field public static final DISPLAY_TYPE_PHONE:I = 0x1

.field public static final DISPLAY_TYPE_TV:I = 0x2

.field public static final DISPLAY_TYPE_VIRTUAL:I = 0x3

.field public static final DISPLAY_TYPE_WFD:I = 0x4

.field public static LOCAL_AUDIO_ID:I = 0x0

.field public static LOCAL_DEVICE_ID:I = 0x0

.field public static LOCAL_DISPLAY_ID:I = 0x0

.field public static final MAX_LOCAL_SCREENS:I = 0x2

.field public static final MAX_REMOTE_SCREENS:I = 0x1

.field public static PARAM_KEY_GUARD:Ljava/lang/String; = null

.field public static PARAM_KEY_IS_IDLER:Ljava/lang/String; = null

.field public static PARAM_KEY_REMOTE_IDLER:Ljava/lang/String; = null

.field public static PERFORM_ALLOW_IME_FULLSCREEN:I = 0x0

.field public static PERFORM_AUDIO_FORCE_LOCAL:I = 0x0

.field public static PERFORM_CHANGE_SPLIT_RATIO:I = 0x0

.field public static PERFORM_CHECK_DISPLAY_WITH_CONTEXT_ID:I = 0x0

.field public static PERFORM_ENABLE_DUAL_SCREEN:I = 0x0

.field public static PERFORM_EXCHANGE_TASK:I = 0x0

.field public static PERFORM_GENERATE_CONTEXT_ID:I = 0x0

.field public static PERFORM_GET_DISPLAY_ID:I = 0x0

.field public static PERFORM_GET_DISPLAY_WITH_PROCESSID:I = 0x0

.field public static PERFORM_GET_FOCUSED_SCREEN:I = 0x0

.field public static PERFORM_GET_FORCE_LANDSCAPE_DISPLAY_ID:I = 0x0

.field public static PERFORM_GET_FORCE_PORTRAIT_DISPLAY_ID:I = 0x0

.field public static PERFORM_GET_NUMBER_OF_SCREENS:I = 0x0

.field public static PERFORM_GET_PROCESSID_WITH_SCREEN:I = 0x0

.field public static PERFORM_GET_SCREEN:I = 0x0

.field public static PERFORM_GET_SCREEN_WITH_PROCESSID:I = 0x0

.field public static PERFORM_GET_STATUSBAR_HEIGHT:I = 0x0

.field public static PERFORM_GET_TASK_ID:I = 0x0

.field public static PERFORM_MIRROR_REMOTE:I = 0x0

.field public static PERFORM_MODE_CHANGE:I = 0x0

.field public static PERFORM_MOVE_TASK:I = 0x0

.field public static PERFORM_MUTE_SCREEN:I = 0x0

.field public static PERFORM_RESET_SCREEN:I = 0x0

.field public static PERFORM_SEND_TEST_COMMAND:I = 0x0

.field public static PERFORM_SET_REMOTE_DISPLAY_CAPABILITY:I = 0x0

.field public static PERFORM_SHOULD_UPDATE_APP_CONFIGURATION:I = 0x0

.field public static PERFORM_SWITCH_TO_NEXT_DISPLAY_MODE:I = 0x0

.field public static PERFORM_UNLOCK_SCREEN:I = 0x0

.field public static PERFORM_VIDEO_PLAYING:I = 0x0

.field public static final SPLITBAR_POS_BEGIN:I = 0x0

.field public static final SPLITBAR_POS_END:I = 0x2

.field public static final SPLITBAR_POS_MIDDLE:I = 0x1

.field public static final STATUS_CHANGE:I = 0x0

.field private static a:Ljava/lang/String; = null

.field private static b:I = 0x0

.field public static final name:Ljava/lang/String; = "SmartShowManager"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "SmartShowManager"

    sput-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    sput v3, Lcom/powermo/smartshow/frameworks/SmartShowManager;->b:I

    sput v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->LOCAL_DEVICE_ID:I

    sput v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->LOCAL_DISPLAY_ID:I

    sput v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->LOCAL_AUDIO_ID:I

    sput v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    sput v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DISPLAY_ID:I

    sput v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_MODE_CHANGE:I

    sput v3, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_VIDEO_PLAYING:I

    sput v4, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_DISPLAY_ID:I

    sput v5, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_TASK_ID:I

    const/4 v0, 0x5

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_MOVE_TASK:I

    const/4 v0, 0x6

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_SCREEN:I

    const/4 v0, 0x7

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_AUDIO_FORCE_LOCAL:I

    const/16 v0, 0x8

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_ENABLE_DUAL_SCREEN:I

    const/16 v0, 0x9

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_EXCHANGE_TASK:I

    const/16 v0, 0xa

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GENERATE_CONTEXT_ID:I

    const/16 v0, 0xb

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_DISPLAY_WITH_PROCESSID:I

    const/16 v0, 0xc

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_SHOULD_UPDATE_APP_CONFIGURATION:I

    const/16 v0, 0xd

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_FORCE_PORTRAIT_DISPLAY_ID:I

    const/16 v0, 0xe

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_FORCE_LANDSCAPE_DISPLAY_ID:I

    const/16 v0, 0xf

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_CHECK_DISPLAY_WITH_CONTEXT_ID:I

    const/16 v0, 0x10

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_SCREEN_WITH_PROCESSID:I

    const/16 v0, 0x3e8

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_CHANGE_SPLIT_RATIO:I

    const/16 v0, 0x3e9

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_STATUSBAR_HEIGHT:I

    const/16 v0, 0x3ea

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_SEND_TEST_COMMAND:I

    const/16 v0, 0x3eb

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_UNLOCK_SCREEN:I

    const/16 v0, 0x3ec

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_FOCUSED_SCREEN:I

    const/16 v0, 0x3ed

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_NUMBER_OF_SCREENS:I

    const/16 v0, 0x3ee

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_RESET_SCREEN:I

    const/16 v0, 0x3ef

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_SWITCH_TO_NEXT_DISPLAY_MODE:I

    const/16 v0, 0x3f0

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_SET_REMOTE_DISPLAY_CAPABILITY:I

    const/16 v0, 0x3f1

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_ALLOW_IME_FULLSCREEN:I

    const/16 v0, 0x3f2

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_PROCESSID_WITH_SCREEN:I

    const/16 v0, 0x3f3

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_MUTE_SCREEN:I

    const/16 v0, 0x3f4

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_MIRROR_REMOTE:I

    sput v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_INC:I

    sput v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_DEC:I

    sput v3, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_MIDDLE:I

    sput v4, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_START:I

    sput v5, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_END:I

    const/4 v0, 0x5

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_AT:I

    sput v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->CONTENT_MODE_DOCK:I

    sput v3, Lcom/powermo/smartshow/frameworks/SmartShowManager;->CONTENT_MODE_MIRROR:I

    sput v4, Lcom/powermo/smartshow/frameworks/SmartShowManager;->CONTENT_MODE_UNIQUE:I

    const-string v0, "keyguard"

    sput-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PARAM_KEY_GUARD:Ljava/lang/String;

    const-string v0, "parameter_remote_idler"

    sput-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PARAM_KEY_REMOTE_IDLER:Ljava/lang/String;

    const-string v0, "parameter_is_idler"

    sput-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PARAM_KEY_IS_IDLER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRawService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()I
    .locals 1

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->b:I

    return v0
.end method


# virtual methods
.method public adjustSplitRatio(II)V
    .locals 4

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_CHANGE_SPLIT_RATIO:I

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_START:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can NOT perform adjustSplitRatio for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_CHANGE_SPLIT_RATIO:I

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_MIDDLE:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_CHANGE_SPLIT_RATIO:I

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_END:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public adjustSplitRatio(ILandroid/graphics/Point;)V
    .locals 5

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_CHANGE_SPLIT_RATIO:I

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_AT:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can NOT perform adjustSplitRatio for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->connectWifiDisplay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT execute connectWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createOverlayDisplay(Ljava/lang/String;Landroid/view/Surface;III)Landroid/os/IBinder;
    .locals 7

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->createOverlayDisplay(Ljava/lang/String;Landroid/view/Surface;IIILandroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT createOverlayDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0
.end method

.method public enableDualScreen(I)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_ENABLE_DUAL_SCREEN:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT perform enableDualScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableDualScreen(II)V
    .locals 5

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_ENABLE_DUAL_SCREEN:I

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT perform enableDualScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public exchangeTask(IIII)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_EXCHANGE_TASK:I

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT perform exchangeTask"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAppDisplayRect()Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v3

    sget v4, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_SCREEN_WITH_PROCESSID:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v5}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/powermo/smartshow/frameworks/SmartShowManager;->getScreenRect(II)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v2, "can NOT get app Display Rect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFocusedScreen(I)Ljava/lang/Integer;
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v1

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_FOCUSED_SCREEN:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    :catch_0
    move-exception v1

    sget-object v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v2, "can NOT perform getFocusedScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMode()Ljava/lang/Integer;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT get mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumberOfScreens(I)Ljava/lang/Integer;
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v1

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_NUMBER_OF_SCREENS:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    :catch_0
    move-exception v1

    sget-object v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v2, "can NOT perform getNumberOfScreens"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT get parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenOfPoint(ILandroid/graphics/Point;)Ljava/lang/Integer;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->getScreenOfPoint(Landroid/graphics/Point;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT perform getScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenRect(II)Landroid/graphics/Rect;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->getScreenRect(I)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT perform getScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v1

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_STATUSBAR_HEIGHT:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v2, "can NOT perform get status bar height"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isInMultiWindowMode()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v2, "can NOT perform unlockScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mirrorRemoteAudio(I)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_MIRROR_REMOTE:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT perform mirrorRemoteAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public moveTask(IIII)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_MOVE_TASK:I

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT perform moveTask"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public muteScreen(II)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_MUTE_SCREEN:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT perform muteScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeOverlayDisplay(Landroid/os/IBinder;)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->removeOverlayDisplay(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT removeOverlayDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public resetScreen(II)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_RESET_SCREEN:I

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT perform resetScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->setParameters(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT set parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRemoteDisplayCapability(I)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_SET_REMOTE_DISPLAY_CAPABILITY:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT perform setRemoteDisplayCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRemoteDisplayConfiguration(Landroid/content/res/Configuration;I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->setRemoteDisplayConfiguration(Landroid/content/res/Configuration;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT execute setRemoteDisplayConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchToNextDisplayMode(I)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_SWITCH_TO_NEXT_DISPLAY_MODE:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT perform getScreenRect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlockScreen(I)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_UNLOCK_SCREEN:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT perform unlockScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateData([B)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->updateData([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->a:Ljava/lang/String;

    const-string v1, "can NOT update data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
