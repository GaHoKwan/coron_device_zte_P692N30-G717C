.class Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;
.super Landroid/os/AsyncTask;
.source "AddPrivacyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/AddPrivacyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mTaskUpdateCB:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 395
    new-instance v0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask$1;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->mTaskUpdateCB:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;Lcom/zte/heartyservice/privacy/AddPrivacyActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, params:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 314
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsDataSpaceNotEnoughAndShowToast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 316
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 354
    :goto_0
    return-object v6

    .line 318
    :cond_0
    aget-object v3, p1, v8

    .line 319
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_2

    .line 320
    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 323
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 324
    .local v0, acHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 326
    const/4 v5, 0x0

    .line 327
    .local v5, progress:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 328
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNumberFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, format:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 334
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v6

    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNumberName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertContact(Ljava/lang/String;Ljava/lang/String;)Z

    .line 336
    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f0a03bc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 343
    .end local v1           #format:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 344
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->mTaskUpdateCB:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;

    invoke-static {v0, v9, v10, v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->moveSms2PrivatySpace(Ljava/util/HashSet;ZILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;)Z

    move-result v6

    if-ne v9, v6, :cond_6

    .line 346
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledSmsId()V

    .line 347
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->mTaskUpdateCB:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;

    invoke-static {v0, v9, v10, v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->moveCallLog2PrivatySpace(Ljava/util/HashSet;ZILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;)Z

    .line 349
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledCallId()V

    .line 354
    :cond_5
    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0

    .line 351
    :cond_6
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledSmsId()V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 309
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mImportTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$502(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;)Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 309
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 359
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 360
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 361
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    const v2, 0x7f0a03bc

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 364
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 9
    .parameter "values"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 368
    aget-object v3, p1, v8

    check-cast v3, Ljava/lang/Integer;

    .line 369
    .local v3, progress:Ljava/lang/Integer;
    aget-object v1, p1, v7

    check-cast v1, Ljava/lang/Integer;

    .line 370
    .local v1, max:Ljava/lang/Integer;
    const/4 v4, 0x2

    aget-object v2, p1, v4

    check-cast v2, Ljava/lang/Integer;

    .line 371
    .local v2, msgRes:Ljava/lang/Integer;
    const/4 v4, 0x3

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    .line 373
    .local v0, deal:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_0

    .line 374
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 376
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_1

    .line 377
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 379
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    .line 380
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 383
    :cond_2
    return-void
.end method
