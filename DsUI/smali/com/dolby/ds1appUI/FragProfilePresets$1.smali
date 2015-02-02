.class Lcom/dolby/ds1appUI/FragProfilePresets$1;
.super Ljava/lang/Object;
.source "FragProfilePresets.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/ds1appUI/FragProfilePresets;->onProfileNameEditStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private counter:I

.field private final refreshLayout:Ljava/lang/Runnable;

.field private final removePreDrawListener:Ljava/lang/Runnable;

.field private skipNext:Z

.field final synthetic this$0:Lcom/dolby/ds1appUI/FragProfilePresets;


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/FragProfilePresets;)V
    .locals 1

    .prologue
    .line 317
    iput-object p1, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->this$0:Lcom/dolby/ds1appUI/FragProfilePresets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/16 v0, 0x1e

    iput v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->counter:I

    .line 321
    new-instance v0, Lcom/dolby/ds1appUI/FragProfilePresets$1$1;

    invoke-direct {v0, p0}, Lcom/dolby/ds1appUI/FragProfilePresets$1$1;-><init>(Lcom/dolby/ds1appUI/FragProfilePresets$1;)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->refreshLayout:Ljava/lang/Runnable;

    .line 329
    new-instance v0, Lcom/dolby/ds1appUI/FragProfilePresets$1$2;

    invoke-direct {v0, p0}, Lcom/dolby/ds1appUI/FragProfilePresets$1$2;-><init>(Lcom/dolby/ds1appUI/FragProfilePresets$1;)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->removePreDrawListener:Ljava/lang/Runnable;

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->skipNext:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dolby/ds1appUI/FragProfilePresets$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/dolby/ds1appUI/FragProfilePresets$1;->refreshLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/dolby/ds1appUI/FragProfilePresets$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/dolby/ds1appUI/FragProfilePresets$1;->removePreDrawListener()V

    return-void
.end method

.method private refreshLayout()V
    .locals 4

    .prologue
    .line 355
    const-string v0, "DsUI::MainActivity"

    const-string v1, "Main.onProfileNameEditStarted.refreshLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->this$0:Lcom/dolby/ds1appUI/FragProfilePresets;

    #getter for: Lcom/dolby/ds1appUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/dolby/ds1appUI/FragProfilePresets;->access$200(Lcom/dolby/ds1appUI/FragProfilePresets;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->skipNext:Z

    .line 362
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->this$0:Lcom/dolby/ds1appUI/FragProfilePresets;

    #getter for: Lcom/dolby/ds1appUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/dolby/ds1appUI/FragProfilePresets;->access$200(Lcom/dolby/ds1appUI/FragProfilePresets;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 363
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->this$0:Lcom/dolby/ds1appUI/FragProfilePresets;

    #getter for: Lcom/dolby/ds1appUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/dolby/ds1appUI/FragProfilePresets;->access$200(Lcom/dolby/ds1appUI/FragProfilePresets;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 365
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->refreshLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 366
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->removePreDrawListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->removePreDrawListener:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private removePreDrawListener()V
    .locals 2

    .prologue
    .line 371
    const-string v0, "DsUI::MainActivity"

    const-string v1, "Main.onProfileNameEditStarted.removePreDrawListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->refreshLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 373
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->removePreDrawListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 374
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->this$0:Lcom/dolby/ds1appUI/FragProfilePresets;

    #getter for: Lcom/dolby/ds1appUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/dolby/ds1appUI/FragProfilePresets;->access$200(Lcom/dolby/ds1appUI/FragProfilePresets;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 375
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 341
    const-string v0, "DsUI::MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Main.onProfileNameEditStarted.onPreDraw() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->counter:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->skipNext:Z

    if-nez v0, :cond_1

    .line 343
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->refreshLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->refreshLayout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 348
    :goto_0
    iget v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->counter:I

    if-gtz v0, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/dolby/ds1appUI/FragProfilePresets$1;->removePreDrawListener()V

    .line 351
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 346
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1;->skipNext:Z

    goto :goto_0
.end method
