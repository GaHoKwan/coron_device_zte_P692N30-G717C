.class public Lcom/zte/heartyservice/privacy/FileManagerActivity$FileEncryptTask;
.super Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;
.source "FileManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FileEncryptTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;I)V
    .locals 0
    .parameter
    .parameter "max"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileEncryptTask;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    .line 481
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;I)V

    .line 482
    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 486
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->onPostExecute(Ljava/lang/Object;)V

    .line 488
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 489
    check-cast v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;

    .line 490
    .local v0, ret:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;
    iget-boolean v1, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;->success:Z

    if-eqz v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileEncryptTask;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->finish()V

    .line 496
    .end local v0           #ret:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;
    :cond_0
    :goto_0
    return-void

    .line 492
    .restart local v0       #ret:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;
    :cond_1
    iget-boolean v1, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;->refresh:Z

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileEncryptTask;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileEncryptTask;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->access$400(Lcom/zte/heartyservice/privacy/FileManagerActivity;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/zte/heartyservice/privacy/FileManagerActivity;->openDir(Ljava/io/File;Z)V
    invoke-static {v1, v2, v3}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->access$100(Lcom/zte/heartyservice/privacy/FileManagerActivity;Ljava/io/File;Z)V

    goto :goto_0
.end method
