.class Lcom/android/contacts/group/GroupDetailFragment$GroupDeleteHandler;
.super Landroid/os/Handler;
.source "GroupDetailFragment.java"

# interfaces
.implements Lcom/android/contacts/ContactSaveService$DeleteEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupDeleteHandler"
.end annotation


# static fields
.field private static final DELETE_END:I = 0x1

.field private static final DELETE_START:I


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$GroupDeleteHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;Lcom/android/contacts/group/GroupDetailFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1312
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment$GroupDeleteHandler;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1318
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1345
    const-string v0, "GroupDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage] unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1321
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$GroupDeleteHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1322
    const-string v0, "GroupDetailFragment"

    const-string v1, "The fragment is not attached to  Activity."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1325
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$GroupDeleteHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupDetailFragment;->isFragmentVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1326
    const-string v0, "GroupDetailFragment"

    const-string v1, "The Fragment is inVisible!"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1329
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$GroupDeleteHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupDetailFragment;->showDialog()V

    goto :goto_0

    .line 1333
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$GroupDeleteHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupDetailFragment;->dismissDialog()V

    .line 1335
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$GroupDeleteHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1336
    const-string v0, "GroupDetailFragment"

    const-string v1, "The GroupDetailActivity is not Active with tablet"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1339
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$GroupDeleteHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$GroupDeleteHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDeleteEnd()V
    .locals 1

    .prologue
    .line 1351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1352
    return-void
.end method

.method public onDeleteStart()V
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1356
    return-void
.end method
