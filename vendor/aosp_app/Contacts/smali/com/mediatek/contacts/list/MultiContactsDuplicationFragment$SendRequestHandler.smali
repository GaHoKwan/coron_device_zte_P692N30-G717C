.class Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;
.super Landroid/os/Handler;
.source "MultiContactsDuplicationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendRequestHandler"
.end annotation


# static fields
.field public static final MSG_END:I = 0x12c

.field public static final MSG_PBH_LOAD_FINISH:I = 0xc8

.field public static final MSG_REQUEST:I = 0x64

.field public static final MSG_WAIT_CURSOR_END:I = 0x1f4

.field public static final MSG_WAIT_CURSOR_START:I = 0x190


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    .line 316
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 317
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x64

    const/16 v2, 0x12c

    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_2

    .line 323
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    #getter for: Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mConnection:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;
    invoke-static {v0}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->access$200(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;->sendCopyRequest(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    invoke-static {v0}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->access$310(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)I

    move-result v0

    if-lez v0, :cond_0

    .line 325
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 350
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 333
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_3

    .line 334
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    invoke-virtual {v0}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->destroyMyself()V

    goto :goto_0

    .line 336
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    .line 337
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    #calls: Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->unRegisterReceiver()V
    invoke-static {v0}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->access$400(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)V

    .line 338
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    #getter for: Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mRequests:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->access$500(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 340
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_6

    .line 341
    const-string v0, "CopyMultiContacts"

    const-string v1, "Show waiting dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    #getter for: Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mProgressHandler:Lcom/mediatek/contacts/util/ProgressHandler;
    invoke-static {v0}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->access$600(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Lcom/mediatek/contacts/util/ProgressHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/util/ProgressHandler;->showDialog(Landroid/app/FragmentManager;)V

    .line 349
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 344
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_5

    .line 345
    const-string v0, "CopyMultiContacts"

    const-string v1, "Dismiss waiting dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    #getter for: Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mProgressHandler:Lcom/mediatek/contacts/util/ProgressHandler;
    invoke-static {v0}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->access$600(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Lcom/mediatek/contacts/util/ProgressHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/util/ProgressHandler;->dismissDialog(Landroid/app/FragmentManager;)V

    goto :goto_1
.end method
