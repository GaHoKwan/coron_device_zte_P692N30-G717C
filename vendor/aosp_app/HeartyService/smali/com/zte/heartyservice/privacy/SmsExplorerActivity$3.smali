.class Lcom/zte/heartyservice/privacy/SmsExplorerActivity$3;
.super Ljava/lang/Object;
.source "SmsExplorerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->eventInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$3;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$3;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$500(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$3;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$500(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->cancel(Z)Z

    .line 220
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$3;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$502(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;)Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$3;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->finish()V

    .line 223
    return-void
.end method
