.class Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment$1;
.super Landroid/os/Handler;
.source "CallLogMultipleDeleteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment$1;->this$0:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 308
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 310
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment$1;->this$0:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

    #getter for: Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;
    invoke-static {v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->access$000(Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;)Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment$1;->this$0:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

    #getter for: Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;
    invoke-static {v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->access$000(Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;)Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
