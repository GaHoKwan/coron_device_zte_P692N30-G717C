.class Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11$1;
.super Ljava/lang/Object;
.source "ContactsSmsCallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11$1;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1015
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1016
    .local v0, acHashSet:Ljava/util/HashSet;
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11$1;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1017
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    new-instance v2, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;

    iget-object v3, v3, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-direct {v2, v3, v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Ljava/util/HashSet;)V

    #setter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$302(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    .line 1018
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$300(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1019
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->refreshActivity()V

    .line 1020
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1021
    return-void
.end method
