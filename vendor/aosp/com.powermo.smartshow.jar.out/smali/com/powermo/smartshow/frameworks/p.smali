.class Lcom/powermo/smartshow/frameworks/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/hardware/display/DisplayManager;

.field private e:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->DEBUG:Z

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/p;->a:Z

    const-string v0, "SmartShowManagerDisplayUtil"

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/p;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/p;->e:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/p;->c:Landroid/content/Context;

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/p;->d:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method final a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/p;->e:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iput-object p2, p0, Lcom/powermo/smartshow/frameworks/p;->c:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/p;->d:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/p;->d:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    new-instance v4, Lcom/powermo/smartshow/frameworks/DisplayInfo;

    invoke-direct {v4, v3}, Lcom/powermo/smartshow/frameworks/DisplayInfo;-><init>(Landroid/view/Display;)V

    invoke-virtual {v3}, Landroid/view/Display;->getType()I

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/p;->e:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    sget v5, Lcom/powermo/smartshow/frameworks/SmartShowManager;->LOCAL_DEVICE_ID:I

    invoke-virtual {v3, v6, v5, v4}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(IILcom/powermo/smartshow/frameworks/DisplayInfo;)I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    sget-boolean v3, Lcom/powermo/smartshow/frameworks/d;->DISABLE_REMOTE_DISPLAY:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/p;->e:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    sget v5, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-virtual {v3, v6, v5, v4}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(IILcom/powermo/smartshow/frameworks/DisplayInfo;)I

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/powermo/smartshow/frameworks/d;->DISABLE_REMOTE_DISPLAY:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/p;->d:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_3
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/p;->d:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v1

    new-instance v2, Lcom/powermo/smartshow/frameworks/DisplayInfo;

    invoke-direct {v2, v0}, Lcom/powermo/smartshow/frameworks/DisplayInfo;-><init>(Landroid/view/Display;)V

    if-ne v1, v3, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/p;->e:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->LOCAL_DEVICE_ID:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(IILcom/powermo/smartshow/frameworks/DisplayInfo;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    :cond_2
    sget-boolean v0, Lcom/powermo/smartshow/frameworks/d;->DISABLE_REMOTE_DISPLAY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/p;->e:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(IILcom/powermo/smartshow/frameworks/DisplayInfo;)I

    goto :goto_0
.end method

.method public onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/p;->e:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->e(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/p;->e:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/p;->e:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v2, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->e(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(IILcom/powermo/smartshow/frameworks/DisplayInfo;)I

    :cond_0
    return-void
.end method
