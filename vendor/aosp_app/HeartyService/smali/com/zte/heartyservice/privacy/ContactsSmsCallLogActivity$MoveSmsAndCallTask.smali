.class Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;
.super Landroid/os/AsyncTask;
.source "ContactsSmsCallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveSmsAndCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mHashSet:Ljava/util/HashSet;

.field private mMoveTaskUpdateCB:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Ljava/util/HashSet;)V
    .locals 1
    .parameter
    .parameter "hashSet"

    .prologue
    .line 841
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->mHashSet:Ljava/util/HashSet;

    .line 809
    new-instance v0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask$1;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->mMoveTaskUpdateCB:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;

    .line 842
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->mHashSet:Ljava/util/HashSet;

    .line 843
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 805
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 848
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->mHashSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->mMoveTaskUpdateCB:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;

    invoke-static {v0, v2, v3, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->moveSms2PrivatySpace(Ljava/util/HashSet;ZILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;)Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 849
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledSmsId()V

    .line 850
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->mHashSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->mMoveTaskUpdateCB:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;

    invoke-static {v0, v2, v3, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->moveCallLog2PrivatySpace(Ljava/util/HashSet;ZILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;)Z

    .line 851
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledCallId()V

    .line 855
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 853
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledSmsId()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 805
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$302(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    .line 861
    return-void
.end method
