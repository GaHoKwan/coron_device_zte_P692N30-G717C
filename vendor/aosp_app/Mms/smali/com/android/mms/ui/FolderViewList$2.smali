.class Lcom/android/mms/ui/FolderViewList$2;
.super Ljava/lang/Object;
.source "FolderViewList.java"

# interfaces
.implements Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderViewList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderViewList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderViewList;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList$2;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/FolderViewListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 441
    const-string v0, "FolderViewList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContentChanged : mIsInActivity ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$2;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mIsInActivity:Z
    invoke-static {v2}, Lcom/android/mms/ui/FolderViewList;->access$700(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsQuerying ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$2;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mIsQuerying:Z
    invoke-static {v2}, Lcom/android/mms/ui/FolderViewList;->access$800(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mNeedQuery ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$2;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mNeedQuery:Z
    invoke-static {v2}, Lcom/android/mms/ui/FolderViewList;->access$900(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$2;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mIsInActivity:Z
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$700(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$2;->this$0:Lcom/android/mms/ui/FolderViewList;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/FolderViewList;->mNeedQuery:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/FolderViewList;->access$902(Lcom/android/mms/ui/FolderViewList;Z)Z

    .line 445
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$2;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mIsQuerying:Z
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$800(Lcom/android/mms/ui/FolderViewList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$2;->this$0:Lcom/android/mms/ui/FolderViewList;

    #calls: Lcom/android/mms/ui/FolderViewList;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$1000(Lcom/android/mms/ui/FolderViewList;)V

    .line 449
    :cond_0
    return-void
.end method
