.class Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;
.super Landroid/os/Handler;
.source "MavSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/mpo/MavSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/mpo/MavSeekBar;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/mpo/MavSeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;->this$0:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 92
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;->this$0:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    #getter for: Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->access$000(Lcom/mediatek/gallery3d/mpo/MavSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;->this$0:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    #getter for: Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->access$000(Lcom/mediatek/gallery3d/mpo/MavSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;->this$0:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    #getter for: Lcom/mediatek/gallery3d/mpo/MavSeekBar;->alpha:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->access$100(Lcom/mediatek/gallery3d/mpo/MavSeekBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 96
    iget-object v1, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;->this$0:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;->this$0:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    #getter for: Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->access$000(Lcom/mediatek/gallery3d/mpo/MavSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v1, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;->this$0:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->access$112(Lcom/mediatek/gallery3d/mpo/MavSeekBar;I)I

    .line 98
    iget-object v1, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;->this$0:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    #getter for: Lcom/mediatek/gallery3d/mpo/MavSeekBar;->alpha:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->access$100(Lcom/mediatek/gallery3d/mpo/MavSeekBar;)I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    .line 99
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 100
    .local v0, newMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;->this$0:Lcom/mediatek/gallery3d/mpo/MavSeekBar;

    #getter for: Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->access$200(Lcom/mediatek/gallery3d/mpo/MavSeekBar;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method