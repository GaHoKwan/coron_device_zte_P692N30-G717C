.class Leu/chainfire/supersu/LogDetailActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic 櫯:Ljava/lang/Runnable;

.field final synthetic 鷭:Leu/chainfire/supersu/LogDetailActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/LogDetailActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/LogDetailActivity$1;->鷭:Leu/chainfire/supersu/LogDetailActivity;

    iput-object p2, p0, Leu/chainfire/supersu/LogDetailActivity$1;->櫯:Ljava/lang/Runnable;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity$1;->櫯:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity$1;->櫯:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 194
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 0
    return-void
.end method
