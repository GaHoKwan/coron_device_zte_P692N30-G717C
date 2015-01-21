.class Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask$1;
.super Ljava/lang/Object;
.source "ContactsSelectActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dissmissPD()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->dissmissPD()V

    .line 243
    :cond_0
    return-void
.end method

.method public showPD(II)V
    .locals 1
    .parameter "max"
    .parameter "strID"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    invoke-virtual {v0, p1, p2}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->showPD(II)V

    .line 222
    :cond_0
    return-void
.end method

.method public updatePD(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->updatePD(I)V

    .line 229
    :cond_0
    return-void
.end method

.method public updatePDMsg(II)V
    .locals 1
    .parameter "num"
    .parameter "strID"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    invoke-virtual {v0, p1, p2}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->updatePDMsg(II)V

    .line 236
    :cond_0
    return-void
.end method
