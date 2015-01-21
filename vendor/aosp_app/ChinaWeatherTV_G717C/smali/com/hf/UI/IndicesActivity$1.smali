.class Lcom/hf/UI/IndicesActivity$1;
.super Landroid/os/Handler;
.source "IndicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/IndicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/IndicesActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/IndicesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/IndicesActivity$1;->this$0:Lcom/hf/UI/IndicesActivity;

    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 44
    iget v1, p1, Landroid/os/Message;->what:I

    .line 45
    .local v1, what:I
    packed-switch v1, :pswitch_data_0

    .line 74
    :goto_0
    :pswitch_0
    return-void

    .line 47
    :pswitch_1
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$1;->this$0:Lcom/hf/UI/IndicesActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "cityID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/hf/UI/IndicesActivity;->addCity(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/hf/UI/IndicesActivity;->access$0(Lcom/hf/UI/IndicesActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_2
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$1;->this$0:Lcom/hf/UI/IndicesActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "cityID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/hf/UI/IndicesActivity;->deleteCity(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/hf/UI/IndicesActivity;->access$1(Lcom/hf/UI/IndicesActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_3
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$1;->this$0:Lcom/hf/UI/IndicesActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "cityID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/hf/UI/IndicesActivity;->updateViews(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/hf/UI/IndicesActivity;->access$2(Lcom/hf/UI/IndicesActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_4
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$1;->this$0:Lcom/hf/UI/IndicesActivity;

    #calls: Lcom/hf/UI/IndicesActivity;->updateViews()V
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$3(Lcom/hf/UI/IndicesActivity;)V

    goto :goto_0

    .line 61
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cityID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, childTag:Ljava/lang/String;
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$1;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$4(Lcom/hf/UI/IndicesActivity;)Lcom/hf/UI/ScrollLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/hf/UI/ScrollLayout;->getChildWithTag(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/hf/UI/IndicesLayout;

    invoke-virtual {v2}, Lcom/hf/UI/IndicesLayout;->setCityName()V

    goto :goto_0

    .line 66
    .end local v0           #childTag:Ljava/lang/String;
    :pswitch_6
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$1;->this$0:Lcom/hf/UI/IndicesActivity;

    #calls: Lcom/hf/UI/IndicesActivity;->initViews()V
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$5(Lcom/hf/UI/IndicesActivity;)V

    goto :goto_0

    .line 69
    :pswitch_7
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$1;->this$0:Lcom/hf/UI/IndicesActivity;

    #calls: Lcom/hf/UI/IndicesActivity;->initViews()V
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$5(Lcom/hf/UI/IndicesActivity;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
