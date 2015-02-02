.class Lcom/amoi/AmoiEngineerMode/AmoiTools$1;
.super Landroid/os/Handler;
.source "AmoiTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/AmoiTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/AmoiTools;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const v5, 0x7f0600f6

    const v4, 0x7f0600f5

    const v3, 0x7f0600f2

    .line 39
    const-string v0, ""

    .line 41
    .local v0, imei:Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iput-object v1, v2, Lcom/amoi/AmoiEngineerMode/AmoiTools;->ar:Landroid/os/AsyncResult;

    .line 44
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v1, v1, Lcom/amoi/AmoiEngineerMode/AmoiTools;->ar:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    invoke-virtual {v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/AmoiTools;->ar:Landroid/os/AsyncResult;

    invoke-virtual {v2, v3}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->foramtNumber(Landroid/os/AsyncResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    #getter for: Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei1_info:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->access$000(Lcom/amoi/AmoiEngineerMode/AmoiTools;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iput-object v1, v2, Lcom/amoi/AmoiEngineerMode/AmoiTools;->ar:Landroid/os/AsyncResult;

    .line 52
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v1, v1, Lcom/amoi/AmoiEngineerMode/AmoiTools;->ar:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    invoke-virtual {v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    #getter for: Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei1_input:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->access$100(Lcom/amoi/AmoiEngineerMode/AmoiTools;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    invoke-virtual {v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/amoi/AmoiEngineerMode/AmoiTools;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->access$200(Lcom/amoi/AmoiEngineerMode/AmoiTools;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    invoke-virtual {v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/amoi/AmoiEngineerMode/AmoiTools;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->access$200(Lcom/amoi/AmoiEngineerMode/AmoiTools;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :pswitch_2
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iput-object v1, v2, Lcom/amoi/AmoiEngineerMode/AmoiTools;->ar:Landroid/os/AsyncResult;

    .line 63
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v1, v1, Lcom/amoi/AmoiEngineerMode/AmoiTools;->ar:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    invoke-virtual {v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v3, v3, Lcom/amoi/AmoiEngineerMode/AmoiTools;->ar:Landroid/os/AsyncResult;

    invoke-virtual {v2, v3}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->foramtNumber(Landroid/os/AsyncResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    #getter for: Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei2_info:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->access$300(Lcom/amoi/AmoiEngineerMode/AmoiTools;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 70
    :pswitch_3
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iput-object v1, v2, Lcom/amoi/AmoiEngineerMode/AmoiTools;->ar:Landroid/os/AsyncResult;

    .line 71
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v1, v1, Lcom/amoi/AmoiEngineerMode/AmoiTools;->ar:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    invoke-virtual {v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    #getter for: Lcom/amoi/AmoiEngineerMode/AmoiTools;->imei2_input:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->access$400(Lcom/amoi/AmoiEngineerMode/AmoiTools;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    invoke-virtual {v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/amoi/AmoiEngineerMode/AmoiTools;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->access$200(Lcom/amoi/AmoiEngineerMode/AmoiTools;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiTools$1;->this$0:Lcom/amoi/AmoiEngineerMode/AmoiTools;

    invoke-virtual {v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/amoi/AmoiEngineerMode/AmoiTools;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/amoi/AmoiEngineerMode/AmoiTools;->access$200(Lcom/amoi/AmoiEngineerMode/AmoiTools;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
