.class Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;
.super Landroid/os/AsyncTask;
.source "AppToPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/AppToPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppToPermAsyncLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/mediatek/common/mom/PermissionRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/security/ui/AppToPermissionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/security/ui/AppToPermissionActivity;Lcom/mediatek/security/ui/AppToPermissionActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;-><init>(Lcom/mediatek/security/ui/AppToPermissionActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 360
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v3, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    #getter for: Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$000(Lcom/mediatek/security/ui/AppToPermissionActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/security/datamanager/DatabaseManager;->getPermRecordListByPkgName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 366
    .local v1, permsList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    const-string v3, "AppToPermActivity"

    const-string v4, "doInBackground......"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    if-nez v1, :cond_0

    .line 368
    const-string v3, "AppToPermActivity"

    const-string v4, "permsList == null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v1, 0x0

    .line 384
    .end local v1           #permsList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :goto_0
    return-object v1

    .line 373
    .restart local v1       #permsList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :cond_0
    iget-object v3, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    iget-object v3, v3, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSelectPermInfo:Lcom/mediatek/common/mom/PermissionRecord;

    if-eqz v3, :cond_2

    .line 374
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/mom/PermissionRecord;

    .line 375
    .local v2, record:Lcom/mediatek/common/mom/PermissionRecord;
    iget-object v3, v2, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    iget-object v4, v4, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSelectPermInfo:Lcom/mediatek/common/mom/PermissionRecord;

    iget-object v4, v4, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    iget-object v3, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    invoke-virtual {v2}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/security/ui/UiUtils;->getSelectIndex(I)I

    move-result v4

    #setter for: Lcom/mediatek/security/ui/AppToPermissionActivity;->mSavedSelectedIndex:I
    invoke-static {v3, v4}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$302(Lcom/mediatek/security/ui/AppToPermissionActivity;I)I

    .line 383
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #record:Lcom/mediatek/common/mom/PermissionRecord;
    :cond_2
    sget-object v3, Lcom/mediatek/security/ui/AppToPermissionActivity;->DEFINED_PERM_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 360
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, permsList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    const-string v0, "AppToPermActivity"

    const-string v1, "onPostExecute......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    #calls: Lcom/mediatek/security/ui/AppToPermissionActivity;->updateAlertDialog()V
    invoke-static {v0}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$800(Lcom/mediatek/security/ui/AppToPermissionActivity;)V

    .line 392
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    #getter for: Lcom/mediatek/security/ui/AppToPermissionActivity;->mApdater:Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;
    invoke-static {v0}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$500(Lcom/mediatek/security/ui/AppToPermissionActivity;)Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;->setDataAndNotify(Ljava/util/List;)V

    .line 393
    return-void
.end method
