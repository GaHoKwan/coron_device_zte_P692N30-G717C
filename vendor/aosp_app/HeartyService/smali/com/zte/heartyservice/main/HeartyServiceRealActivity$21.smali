.class Lcom/zte/heartyservice/main/HeartyServiceRealActivity$21;
.super Ljava/lang/Object;
.source "HeartyServiceRealActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startRotateAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$21;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$21;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate1:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$1600(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 1618
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1613
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1608
    return-void
.end method
