.class Lcom/mediatek/vlw/VLWMediaController$6;
.super Ljava/lang/Object;
.source "VLWMediaController.java"

# interfaces
.implements Lcom/mediatek/vlw/VLWSeekBar$OnTouchUpWithoutHandledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VLWMediaController;->initControllerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VLWMediaController;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VLWMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/mediatek/vlw/VLWMediaController$6;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchUp(F)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$6;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mDragging:Z
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$002(Lcom/mediatek/vlw/VLWMediaController;Z)Z

    .line 682
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$6;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$6;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$400(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v1

    #calls: Lcom/mediatek/vlw/VLWMediaController;->updateFrame(I)V
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$700(Lcom/mediatek/vlw/VLWMediaController;I)V

    .line 683
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$6;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWMediaController;->updateState()V

    .line 684
    return-void
.end method
