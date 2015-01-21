.class Lcom/powermo/smartshow/frameworks/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

.field private b:Landroid/os/IBinder;

.field private c:I

.field private d:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/os/IBinder;Landroid/view/Surface;I)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/ac;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/powermo/smartshow/frameworks/ac;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/powermo/smartshow/frameworks/ac;->d:Landroid/view/Surface;

    iput p4, p0, Lcom/powermo/smartshow/frameworks/ac;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ac;->d:Landroid/view/Surface;

    return-object v0
.end method

.method public binderDied()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ac;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ac;->b:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->removeOverlayDisplay(Landroid/os/IBinder;)I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ac;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ac;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/hardware/input/InputManager;->setTouchTranscodeRect(IIII)V

    :cond_0
    return-void
.end method
