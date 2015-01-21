.class Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask$1;
.super Ljava/lang/Object;
.source "ContactsSmsCallLogActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;)V
    .locals 0
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dissmissPD()V
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->dissmissPD2()V

    .line 837
    :cond_0
    return-void
.end method

.method public showPD(II)V
    .locals 1
    .parameter "max"
    .parameter "strID"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v0, p1, p2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->showPD2(II)V

    .line 816
    :cond_0
    return-void
.end method

.method public updatePD(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePD2(I)V

    .line 823
    :cond_0
    return-void
.end method

.method public updatePDMsg(II)V
    .locals 1
    .parameter "num"
    .parameter "strID"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v0, p1, p2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updatePDMsg2(II)V

    .line 830
    :cond_0
    return-void
.end method
