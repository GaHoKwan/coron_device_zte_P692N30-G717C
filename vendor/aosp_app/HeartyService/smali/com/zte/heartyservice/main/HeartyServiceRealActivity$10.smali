.class Lcom/zte/heartyservice/main/HeartyServiceRealActivity$10;
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

.field final synthetic val$anim2:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$10;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$10;->val$anim2:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$10;->val$anim2:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 1040
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1035
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1031
    return-void
.end method
