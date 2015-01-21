.class Lcom/zte/heartyservice/privacy/ContactsSelectActivity$1;
.super Ljava/lang/Object;
.source "ContactsSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$1;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$1;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$000(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$1;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$000(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;->cancel(Z)Z

    .line 85
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$1;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$002(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;)Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    .line 86
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$1;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    const v1, 0x7f0a0363

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    :cond_0
    return-void
.end method
