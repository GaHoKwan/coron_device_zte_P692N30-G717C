.class Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$3;
.super Ljava/lang/Object;
.source "ContactsSmsCallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->eventInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$3;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$3;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$300(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$3;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$300(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->cancel(Z)Z

    .line 214
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$3;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$302(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    .line 215
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$3;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    const v1, 0x7f0a0363

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    :cond_0
    return-void
.end method
