.class Lcom/isw/third/app/LBSWebActivity$2;
.super Landroid/os/Handler;
.source "LBSWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isw/third/app/LBSWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isw/third/app/LBSWebActivity;


# direct methods
.method constructor <init>(Lcom/isw/third/app/LBSWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/isw/third/app/LBSWebActivity$2;->this$0:Lcom/isw/third/app/LBSWebActivity;

    .line 172
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 174
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v1, p0, Lcom/isw/third/app/LBSWebActivity$2;->this$0:Lcom/isw/third/app/LBSWebActivity;

    iget-object v1, v1, Lcom/isw/third/app/LBSWebActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v1, p0, Lcom/isw/third/app/LBSWebActivity$2;->this$0:Lcom/isw/third/app/LBSWebActivity;

    invoke-virtual {v1}, Lcom/isw/third/app/LBSWebActivity;->startLoadUrlTask()V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 183
    .local v0, string:Ljava/lang/String;
    iget-object v1, p0, Lcom/isw/third/app/LBSWebActivity$2;->this$0:Lcom/isw/third/app/LBSWebActivity;

    invoke-virtual {v1, v0}, Lcom/isw/third/app/LBSWebActivity;->startLoadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
