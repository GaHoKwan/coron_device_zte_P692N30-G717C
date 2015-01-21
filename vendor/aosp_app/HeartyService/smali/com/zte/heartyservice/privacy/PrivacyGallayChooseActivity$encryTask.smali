.class Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;
.super Landroid/os/AsyncTask;
.source "PrivacyGallayChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "encryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mUpdatePD:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 386
    new-instance v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask$1;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->mUpdatePD:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 384
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 398
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->showPD()V
    invoke-static {v5}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$1100(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    .line 399
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mChoosedFileList:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$300(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 400
    const/4 v2, 0x1

    .line 401
    .local v2, n:I
    invoke-static {v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshGrid(Z)V

    .line 402
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mChoosedFileList:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$300(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;

    .line 404
    .local v1, localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    const/4 v4, 0x0

    .line 405
    .local v4, ret:Z
    iget v5, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->type:I

    if-ne v5, v9, :cond_1

    .line 407
    iget-object v5, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->mUpdatePD:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;

    iget-object v7, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->bitMap:Landroid/graphics/Bitmap;

    invoke-static {v2, v5, v9, v6, v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry(ILjava/lang/String;ILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z

    move-result v4

    .line 426
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->isCancelled()Z

    move-result v5

    if-ne v5, v9, :cond_4

    .line 427
    :cond_0
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->dissmissPD()V
    invoke-static {v5}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$1200(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    .line 428
    const-string v5, "chenlu"

    const-string v6, "cancel or error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    .end local v2           #n:I
    .end local v4           #ret:Z
    :goto_2
    return-object v10

    .line 411
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    .restart local v2       #n:I
    .restart local v4       #ret:Z
    :cond_1
    iget-object v5, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    const-string v6, "3gp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    const-string v6, "avi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    const-string v6, "mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    const-string v6, "rmvb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    const-string v6, "mkv"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    const-string v6, "vob"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    const-string v6, "mov"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 417
    :cond_2
    iget-object v5, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->mUpdatePD:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;

    iget-object v8, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->bitMap:Landroid/graphics/Bitmap;

    invoke-static {v2, v5, v6, v7, v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry(ILjava/lang/String;ILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z

    move-result v4

    goto :goto_1

    .line 421
    :cond_3
    iget-object v5, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->path:Ljava/lang/String;

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->mUpdatePD:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;

    iget-object v8, v1, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->bitMap:Landroid/graphics/Bitmap;

    invoke-static {v2, v5, v6, v7, v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry(ILjava/lang/String;ILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z

    move-result v4

    goto :goto_1

    .line 431
    :cond_4
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #n:I
    .local v3, n:I
    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->updatePD(I)V
    invoke-static {v5, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$1300(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;I)V

    move v2, v3

    .line 432
    .end local v3           #n:I
    .restart local v2       #n:I
    goto/16 :goto_0

    .line 434
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #localGallayChooseItem:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
    .end local v2           #n:I
    .end local v4           #ret:Z
    :cond_5
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->dissmissPD()V
    invoke-static {v5}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$1200(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 384
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 440
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mEncryTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$802(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    .line 441
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    const-class v2, Lcom/zte/heartyservice/privacy/ImageVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 443
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    invoke-static {v1, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 444
    return-void
.end method
