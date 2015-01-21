.class Lcom/isw/third/app/DotWebActivity$2;
.super Landroid/os/Handler;
.source "DotWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isw/third/app/DotWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isw/third/app/DotWebActivity;


# direct methods
.method constructor <init>(Lcom/isw/third/app/DotWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/isw/third/app/DotWebActivity$2;->this$0:Lcom/isw/third/app/DotWebActivity;

    .line 349
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 351
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 361
    :goto_0
    return-void

    .line 353
    :pswitch_0
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$2;->this$0:Lcom/isw/third/app/DotWebActivity;

    iget-object v0, v0, Lcom/isw/third/app/DotWebActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$2;->this$0:Lcom/isw/third/app/DotWebActivity;

    invoke-virtual {v0}, Lcom/isw/third/app/DotWebActivity;->startLoadUrlTask()V

    goto :goto_0

    .line 359
    :pswitch_2
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$2;->this$0:Lcom/isw/third/app/DotWebActivity;

    #getter for: Lcom/isw/third/app/DotWebActivity;->myWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/isw/third/app/DotWebActivity;->access$5(Lcom/isw/third/app/DotWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
