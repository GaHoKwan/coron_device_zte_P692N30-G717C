.class Lcom/mediatek/vlw/VLWMediaController$5;
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
    .line 635
    iput-object p1, p0, Lcom/mediatek/vlw/VLWMediaController$5;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchUp(F)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$5;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$5;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$1500(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v1

    #calls: Lcom/mediatek/vlw/VLWMediaController;->updateFrame(I)V
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$700(Lcom/mediatek/vlw/VLWMediaController;I)V

    .line 639
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$5;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->updateUI(Z)V

    .line 640
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$5;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWMediaController;->updateState()V

    .line 641
    return-void
.end method
