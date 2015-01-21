.class Lcom/hf/UI/WeatherGroupActivity$2;
.super Ljava/lang/Object;
.source "WeatherGroupActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/WeatherGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/WeatherGroupActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/WeatherGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/WeatherGroupActivity$2;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 195
    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity$2;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mFilpper:Landroid/widget/ViewFlipper;
    invoke-static {v2}, Lcom/hf/UI/WeatherGroupActivity;->access$13(Lcom/hf/UI/WeatherGroupActivity;)Landroid/widget/ViewFlipper;

    move-result-object v2

    if-nez v2, :cond_1

    .line 205
    :cond_0
    return-void

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity$2;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;
    invoke-static {v2}, Lcom/hf/UI/WeatherGroupActivity;->access$3(Lcom/hf/UI/WeatherGroupActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity$2;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;
    invoke-static {v2}, Lcom/hf/UI/WeatherGroupActivity;->access$3(Lcom/hf/UI/WeatherGroupActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity$2;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;
    invoke-static {v2}, Lcom/hf/UI/WeatherGroupActivity;->access$3(Lcom/hf/UI/WeatherGroupActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 202
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 203
    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity$2;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;
    invoke-static {v2}, Lcom/hf/UI/WeatherGroupActivity;->access$3(Lcom/hf/UI/WeatherGroupActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hf/UI/SKView;

    invoke-virtual {v2}, Lcom/hf/UI/SKView;->setTrendButton()V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 190
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 184
    return-void
.end method
