.class public Lcom/powermo/smartshow/frameworks/ab;
.super Landroid/os/Handler;


# static fields
.field public static final MSG_AUDIO_HOTPLUG:I = 0x2

.field public static final MSG_BIND_AUDIO:I = 0x7

.field public static final MSG_DISPLAY_HOTPLUG:I = 0x1

.field public static final MSG_DOUBLE_HOME_TIMEOUT:I = 0xb

.field public static final MSG_EVENT_COLLECTION:I = 0x5

.field public static final MSG_INPUT_HOTPLUG:I = 0x3

.field public static final MSG_KEYGUARD_OFF:I = 0x6

.field public static final MSG_MIRROR_REMOTE:I = 0xa

.field public static final MSG_MUTE_AUDIO:I = 0x8

.field public static final MSG_PERFORM:I = 0x4

.field public static final MSG_START_IDLE:I = 0x9


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;


# direct methods
.method public constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/ab;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ab;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->b(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ab;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->c(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ab;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->d(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ab;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ab;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->e(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ab;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->f(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ab;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->g(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ab;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->h(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ab;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
