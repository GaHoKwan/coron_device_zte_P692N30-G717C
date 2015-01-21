.class Lcom/mediatek/security/ui/PermissionsFragment$PermListsyncLoader;
.super Landroid/os/AsyncTask;
.source "PermissionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/PermissionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermListsyncLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionsFragment;


# direct methods
.method private constructor <init>(Lcom/mediatek/security/ui/PermissionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermListsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/security/ui/PermissionsFragment;Lcom/mediatek/security/ui/PermissionsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/mediatek/security/ui/PermissionsFragment$PermListsyncLoader;-><init>(Lcom/mediatek/security/ui/PermissionsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/security/ui/PermissionsFragment$PermListsyncLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
            "Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    const-string v11, "PermissionsFragment"

    const-string v12, "doInBackground......"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {}, Lcom/mediatek/security/service/PermControlUtils;->getControlPermArray()[Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, originPermArrary:[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v9, permList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;>;"
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v10, v1, v4

    .line 261
    .local v10, permName:Ljava/lang/String;
    invoke-static {v10}, Lcom/mediatek/security/datamanager/DatabaseManager;->getPermRecordListByPermName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 264
    .local v7, originPermList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    const/4 v2, 0x0

    .line 265
    .local v2, count:I
    if-nez v7, :cond_0

    .line 266
    const-string v11, "PermissionsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error ,there is no apps with the perm name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_1
    const/4 v11, 0x1

    if-le v2, v11, :cond_1

    iget-object v11, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermListsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionsFragment;

    const v12, 0x7f070011

    invoke-virtual {v11, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, countUnit:Ljava/lang/String;
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, appCount:Ljava/lang/String;
    new-instance v8, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;

    iget-object v11, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermListsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionsFragment;

    invoke-direct {v8, v11}, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;-><init>(Lcom/mediatek/security/ui/PermissionsFragment;)V

    .line 276
    .local v8, permItem:Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;
    #setter for: Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mPermName:Ljava/lang/String;
    invoke-static {v8, v10}, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->access$102(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    iget-object v11, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermListsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionsFragment;

    iget-object v11, v11, Lcom/mediatek/security/ui/PermissionsFragment;->mPermLabelArray:[Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/mediatek/security/service/PermControlUtils;->getPermissionLabel(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mPermLabel:Ljava/lang/String;
    invoke-static {v8, v11}, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->access$302(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    invoke-static {v10}, Lcom/mediatek/security/service/PermControlUtils;->getPermissionIcon(Ljava/lang/String;)I

    move-result v11

    #setter for: Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mPermIcon:I
    invoke-static {v8, v11}, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->access$402(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;I)I

    .line 281
    #setter for: Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mAppCount:Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->access$502(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    .end local v0           #appCount:Ljava/lang/String;
    .end local v3           #countUnit:Ljava/lang/String;
    .end local v8           #permItem:Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 271
    :cond_1
    iget-object v11, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermListsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionsFragment;

    const v12, 0x7f070010

    invoke-virtual {v11, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 286
    .end local v2           #count:I
    .end local v7           #originPermList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .end local v10           #permName:Ljava/lang/String;
    :cond_2
    return-object v9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 248
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/security/ui/PermissionsFragment$PermListsyncLoader;->onPostExecute(Ljava/util/List;)V

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
            "Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;>;"
    const-string v0, "PermissionsFragment"

    const-string v1, "onPostExecute......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermListsyncLoader;->this$0:Lcom/mediatek/security/ui/PermissionsFragment;

    #getter for: Lcom/mediatek/security/ui/PermissionsFragment;->mApdater:Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;
    invoke-static {v0}, Lcom/mediatek/security/ui/PermissionsFragment;->access$600(Lcom/mediatek/security/ui/PermissionsFragment;)Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;->setDataAndNotify(Ljava/util/List;)V

    .line 293
    return-void
.end method
