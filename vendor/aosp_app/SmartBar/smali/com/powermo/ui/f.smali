.class Lcom/powermo/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field final synthetic a:Lcom/powermo/ui/a;


# direct methods
.method private constructor <init>(Lcom/powermo/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/ui/f;->a:Lcom/powermo/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/ui/a;Lcom/powermo/ui/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/ui/f;-><init>(Lcom/powermo/ui/a;)V

    return-void
.end method

.method private a(I)Landroid/view/Display;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/powermo/ui/f;->a:Lcom/powermo/ui/a;

    invoke-static {v1}, Lcom/powermo/ui/a;->b(Lcom/powermo/ui/a;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/powermo/ui/f;)Landroid/view/Display;
    .locals 1

    invoke-direct {p0}, Lcom/powermo/ui/f;->c()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/powermo/ui/f;I)Landroid/view/Display;
    .locals 1

    invoke-direct {p0, p1}, Lcom/powermo/ui/f;->a(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private c()Landroid/view/Display;
    .locals 2

    iget-object v0, p0, Lcom/powermo/ui/f;->a:Lcom/powermo/ui/a;

    invoke-static {v0}, Lcom/powermo/ui/a;->b(Lcom/powermo/ui/a;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/f;->a:Lcom/powermo/ui/a;

    invoke-static {v0}, Lcom/powermo/ui/a;->b(Lcom/powermo/ui/a;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/ui/f;->a:Lcom/powermo/ui/a;

    invoke-static {v0}, Lcom/powermo/ui/a;->b(Lcom/powermo/ui/a;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/ui/f;->a:Lcom/powermo/ui/a;

    invoke-static {v0}, Lcom/powermo/ui/a;->d(Lcom/powermo/ui/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/powermo/ui/g;

    invoke-direct {v1, p0, p1}, Lcom/powermo/ui/g;-><init>(Lcom/powermo/ui/f;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/ui/f;->a:Lcom/powermo/ui/a;

    invoke-static {v0}, Lcom/powermo/ui/a;->d(Lcom/powermo/ui/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/powermo/ui/h;

    invoke-direct {v1, p0, p1}, Lcom/powermo/ui/h;-><init>(Lcom/powermo/ui/f;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/ui/f;->a:Lcom/powermo/ui/a;

    invoke-static {v0}, Lcom/powermo/ui/a;->d(Lcom/powermo/ui/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/powermo/ui/i;

    invoke-direct {v1, p0, p1}, Lcom/powermo/ui/i;-><init>(Lcom/powermo/ui/f;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
