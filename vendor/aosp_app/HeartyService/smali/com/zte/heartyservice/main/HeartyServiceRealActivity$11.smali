.class Lcom/zte/heartyservice/main/HeartyServiceRealActivity$11;
.super Ljava/lang/Object;
.source "HeartyServiceRealActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startSummaryAnimation1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

.field final synthetic val$anim3:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$11;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$11;->val$anim3:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$11;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mArrow:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$1200(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$11;->val$anim3:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 1059
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1053
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1049
    return-void
.end method
