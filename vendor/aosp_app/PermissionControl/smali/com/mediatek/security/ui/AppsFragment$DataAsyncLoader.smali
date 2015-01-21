.class Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;
.super Landroid/os/AsyncTask;
.source "AppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/AppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataAsyncLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/mediatek/security/ui/AppsFragment$AppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/AppsFragment;


# direct methods
.method private constructor <init>(Lcom/mediatek/security/ui/AppsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/security/ui/AppsFragment;Lcom/mediatek/security/ui/AppsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;-><init>(Lcom/mediatek/security/ui/AppsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 14
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/security/ui/AppsFragment$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    const-string v11, "AppsFragment"

    const-string v12, "doInBackground......"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Lcom/mediatek/security/datamanager/DatabaseManager;->getPackageNames()Ljava/util/List;

    move-result-object v6

    .line 264
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 265
    :cond_0
    const-string v11, "AppsFragment"

    const-string v12, "get origin list is null "

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v9, 0x0

    .line 306
    :goto_0
    return-object v9

    .line 270
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v9, pkgList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/security/ui/AppsFragment$AppInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 273
    .local v10, pkgName:Ljava/lang/String;
    iget-object v11, p0, Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppsFragment;

    #getter for: Lcom/mediatek/security/ui/AppsFragment;->mCxt:Landroid/content/Context;
    invoke-static {v11}, Lcom/mediatek/security/ui/AppsFragment;->access$600(Lcom/mediatek/security/ui/AppsFragment;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/mediatek/security/service/PermControlUtils;->getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, appLabel:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 276
    iget-object v11, p0, Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppsFragment;

    #getter for: Lcom/mediatek/security/ui/AppsFragment;->mCxt:Landroid/content/Context;
    invoke-static {v11}, Lcom/mediatek/security/ui/AppsFragment;->access$600(Lcom/mediatek/security/ui/AppsFragment;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/mediatek/security/service/PermControlUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 279
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v10}, Lcom/mediatek/security/datamanager/DatabaseManager;->getPermRecordListByPkgName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 281
    .local v8, permList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    const/4 v3, 0x0

    .line 282
    .local v3, count:I
    if-nez v8, :cond_3

    .line 283
    const-string v11, "AppsFragment"

    const-string v12, "error ,the app doesn\'t have any control permission"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_2
    const/4 v11, 0x1

    if-le v3, v11, :cond_4

    iget-object v11, p0, Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppsFragment;

    const v12, 0x7f070013

    invoke-virtual {v11, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, countUnit:Ljava/lang/String;
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, permCount:Ljava/lang/String;
    const-string v11, "AppsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appLabel = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , permCount = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v1, Lcom/mediatek/security/ui/AppsFragment$AppInfo;

    iget-object v11, p0, Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppsFragment;

    invoke-direct {v1, v11}, Lcom/mediatek/security/ui/AppsFragment$AppInfo;-><init>(Lcom/mediatek/security/ui/AppsFragment;)V

    .line 295
    .local v1, appItem:Lcom/mediatek/security/ui/AppsFragment$AppInfo;
    #setter for: Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mPkgName:Ljava/lang/String;
    invoke-static {v1, v10}, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->access$102(Lcom/mediatek/security/ui/AppsFragment$AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    #setter for: Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->access$302(Lcom/mediatek/security/ui/AppsFragment$AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    #setter for: Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v0}, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->access$402(Lcom/mediatek/security/ui/AppsFragment$AppInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 298
    #setter for: Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppPermSize:Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->access$502(Lcom/mediatek/security/ui/AppsFragment$AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 285
    .end local v1           #appItem:Lcom/mediatek/security/ui/AppsFragment$AppInfo;
    .end local v4           #countUnit:Ljava/lang/String;
    .end local v7           #permCount:Ljava/lang/String;
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_2

    .line 287
    :cond_4
    iget-object v11, p0, Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppsFragment;

    const v12, 0x7f070012

    invoke-virtual {v11, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 305
    .end local v0           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v2           #appLabel:Ljava/lang/String;
    .end local v3           #count:I
    .end local v8           #permList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .end local v10           #pkgName:Ljava/lang/String;
    :cond_5
    sget-object v11, Lcom/mediatek/security/ui/AppsFragment;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 256
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;->onPostExecute(Ljava/util/List;)V

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
            "Lcom/mediatek/security/ui/AppsFragment$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/security/ui/AppsFragment$AppInfo;>;"
    const-string v0, "AppsFragment"

    const-string v1, "onPostExecute......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;->this$0:Lcom/mediatek/security/ui/AppsFragment;

    #getter for: Lcom/mediatek/security/ui/AppsFragment;->mApdater:Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;
    invoke-static {v0}, Lcom/mediatek/security/ui/AppsFragment;->access$700(Lcom/mediatek/security/ui/AppsFragment;)Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;->setDataAndNotify(Ljava/util/List;)V

    .line 313
    return-void
.end method
