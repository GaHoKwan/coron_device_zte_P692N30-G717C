.class final Lcom/powermo/smartshow/frameworks/k;
.super Ljava/lang/Thread;


# instance fields
.field public a:Landroid/os/Handler;

.field final synthetic b:Lcom/powermo/smartshow/frameworks/i;


# direct methods
.method private constructor <init>(Lcom/powermo/smartshow/frameworks/i;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/k;->b:Lcom/powermo/smartshow/frameworks/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/k;->a:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/smartshow/frameworks/i;Lcom/powermo/smartshow/frameworks/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/k;-><init>(Lcom/powermo/smartshow/frameworks/i;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/k;->a:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
