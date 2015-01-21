.class Lcom/zte/heartyservice/privacy/FilesActivity$3;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FilesActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$3;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 181
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$3;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$3;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->cancel(Z)Z

    .line 183
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$3;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iput-object v2, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$3;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$200(Lcom/zte/heartyservice/privacy/FilesActivity;)Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$3;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$200(Lcom/zte/heartyservice/privacy/FilesActivity;)Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->cancel(Z)Z

    .line 187
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$3;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #setter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;
    invoke-static {v0, v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$202(Lcom/zte/heartyservice/privacy/FilesActivity;Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;)Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$3;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$300(Lcom/zte/heartyservice/privacy/FilesActivity;)Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$3;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$300(Lcom/zte/heartyservice/privacy/FilesActivity;)Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->cancel(Z)Z

    .line 191
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$3;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #setter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;
    invoke-static {v0, v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$302(Lcom/zte/heartyservice/privacy/FilesActivity;Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;)Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    .line 193
    :cond_2
    return-void
.end method
