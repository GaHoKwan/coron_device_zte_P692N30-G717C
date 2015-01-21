.class Lcom/zte/heartyservice/examination/MainExamActivity$3;
.super Ljava/lang/Object;
.source "MainExamActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/examination/MainExamActivity;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/examination/MainExamActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity$3;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1333
    const-string v0, "MEA"

    const-string v1, "liuji debug onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$3;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/4 v1, 0x1

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->stopRotate:Z
    invoke-static {v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$3102(Lcom/zte/heartyservice/examination/MainExamActivity;Z)Z

    .line 1336
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1325
    const-string v0, "MEA"

    const-string v1, "liuji debug onAnimationRepeat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$3;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->stopRotate:Z
    invoke-static {v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$3100(Lcom/zte/heartyservice/examination/MainExamActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$3;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examRotate:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$3200(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1329
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1319
    const-string v0, "MEA"

    const-string v1, "liuji debug onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$3;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->stopRotate:Z
    invoke-static {v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$3102(Lcom/zte/heartyservice/examination/MainExamActivity;Z)Z

    .line 1321
    return-void
.end method
