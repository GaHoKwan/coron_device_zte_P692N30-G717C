.class Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity$1;
.super Landroid/os/Handler;
.source "AmoiPackageMgrActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;


# direct methods
.method constructor <init>(Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity$1;->this$0:Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity$1;->this$0:Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;

    #getter for: Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mInfo_List:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->access$000(Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity$1;->this$0:Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;

    #getter for: Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->access$100(Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity$1;->this$0:Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;

    #getter for: Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->apkListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->access$200(Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity$1;->this$0:Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;

    #calls: Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->refreshAdapter()V
    invoke-static {v0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->access$300(Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity$1;->this$0:Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;

    #getter for: Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->access$100(Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f040014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
