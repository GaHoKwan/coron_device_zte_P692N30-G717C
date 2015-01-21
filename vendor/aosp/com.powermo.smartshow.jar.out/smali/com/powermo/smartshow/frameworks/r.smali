.class final Lcom/powermo/smartshow/frameworks/r;
.super Landroid/util/Singleton;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/powermo/smartshow/frameworks/ISmartShowManager;
    .locals 1

    const-string v0, "SmartShowManager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/ISmartShowManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/r;->a()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    return-object v0
.end method
