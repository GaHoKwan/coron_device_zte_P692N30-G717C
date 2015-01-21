.class Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;
.super Landroid/os/AsyncTask;
.source "PermissionToAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/PermissionToAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermToAppAsyncLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/security/ui/PermissionToAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/security/ui/PermissionToAppActivity;Lcom/mediatek/security/ui/PermissionToAppActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;-><init>(Lcom/mediatek/security/ui/PermissionToAppActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 301
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 10
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    const-string v7, "PermToAppActivity"

    const-string v8, "doInBackground......"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v7, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mPermName:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$1000(Lcom/mediatek/security/ui/PermissionToAppActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/security/datamanager/DatabaseManager;->getPermRecordListByPermName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 309
    .local v5, recordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    if-nez v5, :cond_0

    .line 310
    const-string v7, "PermToAppActivity"

    const-string v8, "no app has the perm"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v0, 0x0

    .line 338
    :goto_0
    return-object v0

    .line 314
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v0, appsList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/mom/PermissionRecord;

    .line 317
    .local v4, record:Lcom/mediatek/common/mom/PermissionRecord;
    iget-object v3, v4, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    .line 318
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v6

    .line 319
    .local v6, status:I
    new-instance v2, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    iget-object v7, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    iget-object v8, v4, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-direct {v2, v7, v3, v8, v6}, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;-><init>(Lcom/mediatek/security/ui/PermissionToAppActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 321
    .local v2, myRecord:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;
    iget-object v7, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mCxt:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$500(Lcom/mediatek/security/ui/PermissionToAppActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/mediatek/security/service/PermControlUtils;->getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mPkgLabel:Ljava/lang/String;
    invoke-static {v2, v7}, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->access$202(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    const-string v7, "PermToAppActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get  label "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mPkgLabel:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->access$200(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mPkgLabel:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->access$200(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 325
    iget-object v7, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mCxt:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$500(Lcom/mediatek/security/ui/PermissionToAppActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/mediatek/security/service/PermControlUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    #setter for: Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mAppIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v7}, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->access$902(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 327
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v7, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mSelectPermInfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;
    invoke-static {v7}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$400(Lcom/mediatek/security/ui/PermissionToAppActivity;)Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    move-result-object v7

    if-eqz v7, :cond_1

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mPkgLabel:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->access$200(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mSelectPermInfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;
    invoke-static {v8}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$400(Lcom/mediatek/security/ui/PermissionToAppActivity;)Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    move-result-object v8

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mPkgLabel:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->access$200(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mSelectPermInfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;
    invoke-static {v8}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$400(Lcom/mediatek/security/ui/PermissionToAppActivity;)Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    move-result-object v8

    iget-object v8, v8, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 332
    iget-object v7, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    invoke-static {v6}, Lcom/mediatek/security/ui/UiUtils;->getSelectIndex(I)I

    move-result v8

    #setter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mSavedSelectedIndex:I
    invoke-static {v7, v8}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$302(Lcom/mediatek/security/ui/PermissionToAppActivity;I)I

    goto/16 :goto_1

    .line 337
    .end local v2           #myRecord:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;
    .end local v3           #pkgName:Ljava/lang/String;
    .end local v4           #record:Lcom/mediatek/common/mom/PermissionRecord;
    .end local v6           #status:I
    :cond_2
    sget-object v7, Lcom/mediatek/security/ui/PermissionToAppActivity;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 301
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, permsList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;>;"
    const-string v1, "PermToAppActivity"

    const-string v2, "onPostExecute......"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #calls: Lcom/mediatek/security/ui/PermissionToAppActivity;->updateAlertDialog()V
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$1100(Lcom/mediatek/security/ui/PermissionToAppActivity;)V

    .line 347
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 349
    .local v0, emptyView:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    .end local v0           #emptyView:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mApdater:Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$600(Lcom/mediatek/security/ui/PermissionToAppActivity;)Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;->setDataAndNotify(Ljava/util/List;)V

    .line 352
    return-void
.end method
