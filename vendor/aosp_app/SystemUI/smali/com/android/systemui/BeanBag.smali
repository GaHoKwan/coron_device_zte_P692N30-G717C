.class public Lcom/android/systemui/BeanBag;
.super Landroid/app/Activity;
.source "BeanBag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BeanBag$Board;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mBoard:Lcom/android/systemui/BeanBag$Board;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 434
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/BeanBag;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v0}, Lcom/android/systemui/BeanBag$Board;->stopAnimation()V

    .line 436
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 440
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/BeanBag;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v0}, Lcom/android/systemui/BeanBag$Board;->startAnimation()V

    .line 442
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 406
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 409
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 412
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    .line 413
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/systemui/BeanBagDream;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 424
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x80001

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 428
    new-instance v1, Lcom/android/systemui/BeanBag$Board;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/BeanBag$Board;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/systemui/BeanBag;->mBoard:Lcom/android/systemui/BeanBag$Board;

    .line 429
    iget-object v1, p0, Lcom/android/systemui/BeanBag;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 430
    return-void

    .line 417
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/systemui/BeanBagDream;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method
