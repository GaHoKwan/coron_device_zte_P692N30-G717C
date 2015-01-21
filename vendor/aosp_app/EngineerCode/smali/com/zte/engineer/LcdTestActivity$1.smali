.class Lcom/zte/engineer/LcdTestActivity$1;
.super Landroid/os/Handler;
.source "LcdTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/LcdTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/LcdTestActivity;


# direct methods
.method constructor <init>(Lcom/zte/engineer/LcdTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/zte/engineer/LcdTestActivity$1;->this$0:Lcom/zte/engineer/LcdTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/zte/engineer/LcdTestActivity$1;->this$0:Lcom/zte/engineer/LcdTestActivity;

    #getter for: Lcom/zte/engineer/LcdTestActivity;->mBGColor:I
    invoke-static {v0}, Lcom/zte/engineer/LcdTestActivity;->access$000(Lcom/zte/engineer/LcdTestActivity;)I

    move-result v0

    const/high16 v1, -0x100

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/zte/engineer/LcdTestActivity$1;->this$0:Lcom/zte/engineer/LcdTestActivity;

    #getter for: Lcom/zte/engineer/LcdTestActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/engineer/LcdTestActivity;->access$100(Lcom/zte/engineer/LcdTestActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v0, p0, Lcom/zte/engineer/LcdTestActivity$1;->this$0:Lcom/zte/engineer/LcdTestActivity;

    #getter for: Lcom/zte/engineer/LcdTestActivity;->mFSLl:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/zte/engineer/LcdTestActivity;->access$200(Lcom/zte/engineer/LcdTestActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 161
    iget-object v0, p0, Lcom/zte/engineer/LcdTestActivity$1;->this$0:Lcom/zte/engineer/LcdTestActivity;

    #getter for: Lcom/zte/engineer/LcdTestActivity;->mButton:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/zte/engineer/LcdTestActivity;->access$300(Lcom/zte/engineer/LcdTestActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/LcdTestActivity$1;->this$0:Lcom/zte/engineer/LcdTestActivity;

    #calls: Lcom/zte/engineer/LcdTestActivity;->changeLCDColor()V
    invoke-static {v0}, Lcom/zte/engineer/LcdTestActivity;->access$400(Lcom/zte/engineer/LcdTestActivity;)V

    .line 166
    const-wide/16 v0, 0x578

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
