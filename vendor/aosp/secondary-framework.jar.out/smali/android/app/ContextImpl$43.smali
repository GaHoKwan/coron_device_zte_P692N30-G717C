.class final Landroid/app/ContextImpl$43;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 716
    iget-object v2, p1, Landroid/app/ContextImpl;->mWindowService:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, p1, Landroid/app/ContextImpl;->mWindowService:Ljava/lang/Object;

    .line 726
    :goto_0
    return-object v2

    .line 719
    :cond_0
    #getter for: Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;
    invoke-static {p1}, Landroid/app/ContextImpl;->access$100(Landroid/app/ContextImpl;)Landroid/view/Display;

    move-result-object v0

    .line 720
    .local v0, display:Landroid/view/Display;
    if-nez v0, :cond_1

    .line 721
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 723
    .local v1, dm:Landroid/hardware/display/DisplayManager;
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getContextId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(II)Landroid/view/Display;

    move-result-object v0

    .line 725
    .end local v1           #dm:Landroid/hardware/display/DisplayManager;
    :cond_1
    new-instance v2, Landroid/view/WindowManagerImpl;

    invoke-direct {v2, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;)V

    iput-object v2, p1, Landroid/app/ContextImpl;->mWindowService:Ljava/lang/Object;

    .line 726
    iget-object v2, p1, Landroid/app/ContextImpl;->mWindowService:Ljava/lang/Object;

    goto :goto_0
.end method
