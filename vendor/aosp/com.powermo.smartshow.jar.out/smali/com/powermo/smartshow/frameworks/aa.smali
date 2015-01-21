.class final Lcom/powermo/smartshow/frameworks/aa;
.super Ljava/lang/Thread;


# instance fields
.field public a:Landroid/os/Handler;

.field final synthetic b:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;


# direct methods
.method private constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/aa;->b:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/aa;->a:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Lcom/powermo/smartshow/frameworks/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/aa;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/aa;->a:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
