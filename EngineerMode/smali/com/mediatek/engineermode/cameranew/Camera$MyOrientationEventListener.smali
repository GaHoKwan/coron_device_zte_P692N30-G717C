.class Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    .line 1003
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1004
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1011
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mOrientation:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/mediatek/engineermode/cameranew/Util;->roundOrientation(II)I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mOrientation:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5902(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 1017
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mOrientation:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int v0, v1, v2

    .line 1018
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$6000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1019
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/mediatek/engineermode/cameranew/Camera;->access$6002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 1020
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$6000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->setOrientationIndicator(I)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$6100(Lcom/mediatek/engineermode/cameranew/Camera;I)V

    goto :goto_0
.end method
