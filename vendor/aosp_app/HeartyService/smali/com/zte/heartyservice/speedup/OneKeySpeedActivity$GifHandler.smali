.class public Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$GifHandler;
.super Landroid/os/Handler;
.source "OneKeySpeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GifHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$GifHandler;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$GifHandler;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->examStateLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1500(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$GifHandler;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->one_key_examing_view:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1600(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$GifHandler;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$GifHandler;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #calls: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedResultSetting()V
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1700(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)V

    .line 429
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$GifHandler;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->listViewInit()V

    .line 430
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 431
    return-void
.end method
