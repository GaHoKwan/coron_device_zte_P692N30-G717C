.class public Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;
.super Landroid/widget/LinearLayout;
.source "AbstractPaintTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractPaintTool"


# instance fields
.field private final LAST_TOUCH_TIME_LOCK:Ljava/lang/Object;

.field protected dismissTimer:Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;

.field protected skitchCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->LAST_TOUCH_TIME_LOCK:Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->LAST_TOUCH_TIME_LOCK:Ljava/lang/Object;

    .line 36
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->init()V

    .line 37
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->LAST_TOUCH_TIME_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$1;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected afterAutoDismiss()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 54
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3dcccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 55
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 56
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->setAnimation(Landroid/view/animation/Animation;)V

    .line 57
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->setVisibility(I)V

    .line 58
    const-string v1, "AbstractPaintTool"

    const-string v2, "dismiss the tool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v0           #anim:Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method

.method public resetLastTouchTime()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->dismissTimer:Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->setLastTouchTime(Ljava/lang/Long;)V

    .line 65
    return-void
.end method

.method public setSkitchCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;)V
    .locals 0
    .parameter "skitch"

    .prologue
    .line 69
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->skitchCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;

    .line 70
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 76
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 77
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->setVisibility(I)V

    .line 79
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->startDismissTimer()V

    .line 81
    .end local v0           #anim:Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method

.method public startDismissTimer()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->dismissTimer:Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->dismissTimer:Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->cancel(Z)Z

    .line 89
    :cond_0
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;Ljava/lang/Long;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->dismissTimer:Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;

    .line 90
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->dismissTimer:Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    return-void
.end method
