.class Lcom/mediatek/gallery3d/pq/ClearMotionTool$1;
.super Ljava/lang/Object;
.source "ClearMotionTool.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/pq/ClearMotionTool;->getViewById()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/ClearMotionTool;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/pq/ClearMotionTool;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool$1;->this$0:Lcom/mediatek/gallery3d/pq/ClearMotionTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v3, 0x2

    .line 251
    const v0, 0x7f0b0028

    if-ne v0, p2, :cond_1

    .line 252
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool$1;->this$0:Lcom/mediatek/gallery3d/pq/ClearMotionTool;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->access$100()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mDemoMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->access$002(Lcom/mediatek/gallery3d/pq/ClearMotionTool;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool$1;->this$0:Lcom/mediatek/gallery3d/pq/ClearMotionTool;

    #getter for: Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->access$200(Lcom/mediatek/gallery3d/pq/ClearMotionTool;)[S

    move-result-object v0

    const/4 v1, 0x0

    aput-short v1, v0, v3

    .line 261
    :cond_0
    :goto_0
    const-string v0, "Gallery2/ClearMotionTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemProperties.set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool$1;->this$0:Lcom/mediatek/gallery3d/pq/ClearMotionTool;

    #getter for: Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->access$200(Lcom/mediatek/gallery3d/pq/ClearMotionTool;)[S

    move-result-object v2

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool$1;->this$0:Lcom/mediatek/gallery3d/pq/ClearMotionTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool$1;->this$0:Lcom/mediatek/gallery3d/pq/ClearMotionTool;

    #getter for: Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->access$200(Lcom/mediatek/gallery3d/pq/ClearMotionTool;)[S

    move-result-object v1

    #calls: Lcom/mediatek/gallery3d/pq/ClearMotionTool;->write([S)V
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->access$500(Lcom/mediatek/gallery3d/pq/ClearMotionTool;[S)V

    .line 263
    return-void

    .line 254
    :cond_1
    const v0, 0x7f0b0029

    if-ne v0, p2, :cond_2

    .line 255
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool$1;->this$0:Lcom/mediatek/gallery3d/pq/ClearMotionTool;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->access$300()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mDemoMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->access$002(Lcom/mediatek/gallery3d/pq/ClearMotionTool;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool$1;->this$0:Lcom/mediatek/gallery3d/pq/ClearMotionTool;

    #getter for: Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->access$200(Lcom/mediatek/gallery3d/pq/ClearMotionTool;)[S

    move-result-object v0

    const/4 v1, 0x1

    aput-short v1, v0, v3

    goto :goto_0

    .line 257
    :cond_2
    const v0, 0x7f0b002a

    if-ne v0, p2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool$1;->this$0:Lcom/mediatek/gallery3d/pq/ClearMotionTool;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->access$400()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mDemoMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->access$002(Lcom/mediatek/gallery3d/pq/ClearMotionTool;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool$1;->this$0:Lcom/mediatek/gallery3d/pq/ClearMotionTool;

    #getter for: Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->access$200(Lcom/mediatek/gallery3d/pq/ClearMotionTool;)[S

    move-result-object v0

    aput-short v3, v0, v3

    goto :goto_0
.end method
