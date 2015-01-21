.class Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$2;
.super Ljava/lang/Object;
.source "LargeWidgetAnimationActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->showAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;

.field final synthetic val$anim:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$2;->val$anim:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    .line 105
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$2;->val$anim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 106
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;

    #calls: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->setCircleVisible(Z)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->access$100(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;Z)V

    .line 107
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->access$200(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 108
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 101
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;

    const/4 v1, 0x0

    #calls: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->setCircleVisible(Z)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->access$100(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;Z)V

    .line 97
    return-void
.end method
