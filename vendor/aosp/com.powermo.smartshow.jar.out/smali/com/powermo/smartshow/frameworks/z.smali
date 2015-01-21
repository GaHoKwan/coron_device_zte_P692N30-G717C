.class Lcom/powermo/smartshow/frameworks/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/z;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iput-object p2, p0, Lcom/powermo/smartshow/frameworks/z;->b:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/z;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->g(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    return-void
.end method
