.class public Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field protected a:Landroid/widget/ViewFlipper;

.field b:Lzte/com/cn/driverMode/service/by;

.field c:Landroid/content/Context;

.field h:Landroid/widget/Button;

.field i:Landroid/widget/Button;

.field j:Landroid/widget/Button;

.field k:Landroid/widget/ImageButton;

.field private l:Landroid/view/GestureDetector;

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    new-instance v0, Lzte/com/cn/driverMode/ui/ae;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/ae;-><init>(Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->m:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->c:Landroid/content/Context;

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->b:Lzte/com/cn/driverMode/service/by;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->l:Landroid/view/GestureDetector;

    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->a:Landroid/widget/ViewFlipper;

    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->h:Landroid/widget/Button;

    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->i:Landroid/widget/Button;

    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->j:Landroid/widget/Button;

    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->k:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->h:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/af;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/af;-><init>(Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->i:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/af;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/af;-><init>(Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->j:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/af;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/af;-><init>(Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->k:Landroid/widget/ImageButton;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->b:Lzte/com/cn/driverMode/service/by;

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "DMDisclaimerActivity"

    const-string v2, "...onFling..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->a:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->c:Landroid/content/Context;

    const/high16 v3, 0x7f04

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->a:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->c:Landroid/content/Context;

    const v3, 0x7f040001

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040002

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040003

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->l:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
