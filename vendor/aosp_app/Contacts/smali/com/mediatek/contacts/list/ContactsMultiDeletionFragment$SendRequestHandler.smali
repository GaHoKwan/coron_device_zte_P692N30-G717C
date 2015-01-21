.class Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;
.super Landroid/os/Handler;
.source "ContactsMultiDeletionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendRequestHandler"
.end annotation


# static fields
.field public static final MSG_END:I = 0xc8

.field public static final MSG_REQUEST:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;

    .line 166
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 167
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v2, 0xc8

    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 173
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;

    #getter for: Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->mConnection:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;
    invoke-static {v0}, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->access$100(Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;)Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;->sendDeleteRequest(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;

    invoke-static {v0}, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->access$210(Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;)I

    move-result v0

    if-lez v0, :cond_0

    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 188
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 183
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_3

    .line 184
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;

    invoke-virtual {v0}, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;->destroyMyself()V

    goto :goto_0

    .line 187
    :cond_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
