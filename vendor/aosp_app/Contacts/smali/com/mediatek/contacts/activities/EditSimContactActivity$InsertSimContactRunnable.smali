.class Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;
.super Ljava/lang/Object;
.source "EditSimContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/activities/EditSimContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertSimContactRunnable"
.end annotation


# instance fields
.field mModeForThread:I

.field final synthetic this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/activities/EditSimContactActivity;I)V
    .locals 2
    .parameter
    .parameter "md"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->mModeForThread:I

    .line 604
    iput p2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->mModeForThread:I

    .line 605
    const-string v0, "EditSimContactActivity"

    const-string v1, "InsertSimContactRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-void
.end method

.method private checkPhoneStatus()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1249
    iget-object v3, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isRadioOn(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAirPlaneModeOn:Z
    invoke-static {v3, v0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2102(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    .line 1250
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v3, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isFdnEnabed(I)Z

    move-result v3

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFDNEnabled:Z
    invoke-static {v0, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3602(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    .line 1251
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v3, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimStateReady(I)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSIMInvalid:Z
    invoke-static {v0, v1}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3702(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    .line 1252
    return-void

    :cond_0
    move v0, v2

    .line 1249
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1251
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 74

    .prologue
    .line 610
    const/16 v34, 0x0

    .line 611
    .local v34, checkUri:Landroid/net/Uri;
    const/16 v58, 0x0

    .line 612
    .local v58, result:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 613
    .local v11, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$002(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$300()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$202(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 616
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before replace - mUpdatephone is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 618
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[run] befor replaceall mUpdatephone : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$202(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$202(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 621
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[run] after replaceall mUpdatephone : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after replace - mUpdatephone is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 626
    .local v4, values:Landroid/content/ContentValues;
    const-string v3, "tag"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ""

    :goto_0
    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v3, "number"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimType:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$400(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$600()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$502(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$800()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$702(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 635
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$900(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAnrsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "ExtensionForAAS"

    invoke-virtual/range {v2 .. v8}, Lcom/android/contacts/ext/ContactAccountExtension;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 638
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before replace - mUpdateAdditionalNumber is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 641
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[run] befor replaceall mUpdateAdditionalNumber : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$702(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$702(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 645
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[run] after replaceall mUpdateAdditionalNumber : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_1
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after replace - mUpdateAdditionalNumber is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v3, "anr"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, ""

    :goto_2
    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_2
    const-string v3, "emails"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, ""

    :goto_3
    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$900(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1100()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "ExtensionForSNE"

    invoke-virtual/range {v2 .. v8}, Lcom/android/contacts/ext/ContactAccountExtension;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 662
    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1202(Ljava/lang/String;)Ljava/lang/String;

    .line 667
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mPhbReady:Z

    .line 668
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the mPhbReady is = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-boolean v5, v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mPhbReady:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " the mSlotId is = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->mModeForThread:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 671
    const-string v2, "huibin"

    const-string v3, "thread mModeForThread == MODE_INSERT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->checkPhoneStatus()V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimType:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$400(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1242
    :cond_4
    :goto_4
    return-void

    .line 626
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 627
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 651
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 656
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 685
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 693
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberIsNull:Z
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1402(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    .line 699
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 700
    const-string v2, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFixNumberInvalid:Z
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1602(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    .line 722
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #calls: Lcom/mediatek/contacts/activities/EditSimContactActivity;->setSaveFailToastText()Z
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x0

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOnBackGoing:Z
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1802(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    goto/16 :goto_4

    .line 694
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 695
    const-string v2, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberInvalid:Z
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1502(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    goto :goto_5

    .line 712
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 716
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 717
    const-string v2, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberInvalid:Z
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1502(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    goto/16 :goto_6

    .line 731
    :cond_10
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1200()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v5

    const/4 v6, 0x1

    const-string v8, "ExtensionForSNE"

    invoke-virtual {v2, v3, v5, v6, v8}, Lcom/android/contacts/ext/ContactAccountExtension;->isTextValid(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #calls: Lcom/mediatek/contacts/activities/EditSimContactActivity;->showSaveFailToast()V
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1900(Lcom/mediatek/contacts/activities/EditSimContactActivity;)V

    goto/16 :goto_4

    .line 739
    :cond_11
    const-string v2, "EditSimContactActivity"

    const-string v3, "********BEGIN insert to SIM card "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v34

    .line 741
    const-string v2, "EditSimContactActivity"

    const-string v3, "********END insert to SIM card "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "values is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkUri is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    move-object/from16 v0, v34

    #calls: Lcom/mediatek/contacts/activities/EditSimContactActivity;->setSaveFailToastText2(Landroid/net/Uri;)Z
    invoke-static {v2, v0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2000(Lcom/mediatek/contacts/activities/EditSimContactActivity;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x0

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOnBackGoing:Z
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1802(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    goto/16 :goto_4

    .line 750
    :cond_12
    invoke-static/range {v34 .. v34}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    .line 752
    .local v15, indexFromUri:J
    const-string v2, "EditSimContactActivity"

    const-string v3, "insert to db"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/16 v47, -0x1

    .line 755
    .local v47, errorType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimType:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$400(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 756
    const/16 v60, -0x1

    .line 757
    .local v60, ugrpId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v55

    .line 758
    .local v55, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;>;"
    :goto_7
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 759
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/util/Map$Entry;

    .line 760
    .local v46, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface/range {v46 .. v46}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    .line 761
    .local v48, grpId:J
    invoke-interface/range {v46 .. v46}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    .line 763
    .local v50, grpName:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    move-object/from16 v0, v50

    invoke-static {v2, v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->syncUSIMGroupNewIfMissing(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v60

    .line 770
    :goto_8
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM group]syncUSIMGroupNewIfMissing ugrpId:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    if-lez v60, :cond_13

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    long-to-int v3, v15

    move/from16 v0, v60

    invoke-static {v2, v3, v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->addUSIMGroupMember(III)Z

    move-result v59

    .line 774
    .local v59, suFlag:Z
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM group]addUSIMGroupMember suFlag:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 764
    .end local v59           #suFlag:Z
    :catch_0
    move-exception v44

    .line 765
    .local v44, e:Landroid/os/RemoteException;
    const/16 v60, -0x1

    .line 769
    goto :goto_8

    .line 766
    .end local v44           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v44

    .line 767
    .local v44, e:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->getErrorType()I

    move-result v47

    .line 768
    const/16 v60, -0x1

    goto :goto_8

    .line 776
    .end local v44           #e:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;
    :cond_13
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 785
    .end local v46           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v48           #grpId:J
    .end local v50           #grpName:Ljava/lang/String;
    .end local v55           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v60           #ugrpId:I
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->checkPhoneStatus()V

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAirPlaneModeOn:Z
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2100(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 787
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAirPlaneModeOn is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAirPlaneModeOn:Z
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2100(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",return!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 799
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$900(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Landroid/accounts/Account;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2300()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2400()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v12, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndicate:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimType:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$400(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAnrsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1200()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v5 .. v19}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->insertToDB(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;JLjava/lang/String;JLjava/util/Set;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v56

    .line 802
    .local v56, lookupUri:Landroid/net/Uri;
    if-nez v56, :cond_16

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Landroid/accounts/Account;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2300()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2400()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v12, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndicate:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimType:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$400(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-static/range {v6 .. v17}, Lcom/mediatek/contacts/SubContactsUtils;->insertToDB(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;JLjava/lang/String;JLjava/util/Set;)Landroid/net/Uri;

    move-result-object v56

    .line 810
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x0

    move/from16 v0, v47

    #calls: Lcom/mediatek/contacts/activities/EditSimContactActivity;->showResultToastText(ILjava/lang/String;)V
    invoke-static {v2, v0, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2500(Lcom/mediatek/contacts/activities/EditSimContactActivity;ILjava/lang/String;)V

    .line 812
    const/4 v2, -0x1

    move/from16 v0, v47

    if-ne v0, v2, :cond_17

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 817
    new-instance v54, Landroid/content/Intent;

    invoke-direct/range {v54 .. v54}, Landroid/content/Intent;-><init>()V

    .line 818
    .local v54, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, -0x1

    move-object/from16 v0, v54

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 828
    .end local v54           #intent:Landroid/content/Intent;
    :cond_17
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 822
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    move-object/from16 v0, v56

    invoke-virtual {v2, v0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->startViewActivity(Landroid/net/Uri;)V

    goto :goto_9

    .line 830
    .end local v15           #indexFromUri:J
    .end local v47           #errorType:I
    .end local v56           #lookupUri:Landroid/net/Uri;
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->mModeForThread:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 831
    const-string v2, "EditSimContactActivity"

    const-string v3, "thread mModeForThread is MODE_EDIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 834
    .local v19, updatevalues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mPhoneTypeSuffix:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2600(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 835
    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mPhoneTypeSuffix:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2600(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mPhoneTypeSuffix:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2600(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_b
    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$002(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 841
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$800()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$702(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 843
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[run -edit] befor replaceall mUpdateAdditionalNumber : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$702(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$702(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 847
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[run -edit] after replaceall mUpdateAdditionalNumber : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_1b
    const-string v3, "newTag"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, ""

    :goto_c
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v3, "newNumber"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, ""

    :goto_d
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v3, "newAnr"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, ""

    :goto_e
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$900(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAnrsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    const-string v23, "ExtensionForAAS"

    invoke-virtual/range {v17 .. v23}, Lcom/android/contacts/ext/ContactAccountExtension;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z

    .line 865
    const-string v3, "newEmails"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, ""

    :goto_f
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1200()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v2, v0, v3}, Lcom/mediatek/contacts/extension/aassne/SneExt;->buildNicknameValueForInsert(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    .line 872
    const-string v2, "index"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndexInSim:J
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 874
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatevalues IS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mModeForThread IS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->mModeForThread:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/16 v35, 0x0

    .line 877
    .local v35, cursor:Landroid/database/Cursor;
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIndicate  is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v5, v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndicate:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->checkPhoneStatus()V

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "contact_id"

    aput-object v3, v7, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v8, v3, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 883
    .local v33, c:Landroid/database/Cursor;
    if-eqz v33, :cond_1d

    .line 884
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mContactId:I

    .line 886
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContactId is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget v5, v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mContactId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_1c
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimType:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$400(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v52

    .line 899
    .local v52, iccUriForSim:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndexInSim:J
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    .line 901
    .local v69, where:Ljava/lang/String;
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "where "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v69

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccUriForSim ******** "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v69

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v39

    .line 904
    .local v39, deleteDone:I
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteDone is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v2, 0x1

    move/from16 v0, v39

    if-ne v0, v2, :cond_1e

    .line 906
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget v3, v3, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mContactId:I

    int-to-long v5, v3

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v43

    .line 908
    .local v43, deleteUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v2, v0, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v38

    .line 909
    .local v38, deleteDB:I
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteDB is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    .end local v38           #deleteDB:I
    .end local v43           #deleteUri:Landroid/net/Uri;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 835
    .end local v33           #c:Landroid/database/Cursor;
    .end local v35           #cursor:Landroid/database/Cursor;
    .end local v39           #deleteDone:I
    .end local v52           #iccUriForSim:Landroid/net/Uri;
    .end local v69           #where:Ljava/lang/String;
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mPhoneTypeSuffix:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2600(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 837
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mPhoneTypeSuffix:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2600(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    .line 852
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    .line 853
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d

    .line 854
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 865
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f

    .line 913
    .restart local v33       #c:Landroid/database/Cursor;
    .restart local v35       #cursor:Landroid/database/Cursor;
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 914
    const-string v2, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberInvalid:Z
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1502(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    .line 972
    :cond_26
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #calls: Lcom/mediatek/contacts/activities/EditSimContactActivity;->setSaveFailToastText()Z
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x0

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOnBackGoing:Z
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1802(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    goto/16 :goto_4

    .line 918
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimType:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$400(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v53

    .line 931
    .local v53, iccUriForUsim:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndexInSim:J
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    .line 932
    .restart local v69       #where:Ljava/lang/String;
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "where "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v69

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccUriForUsim ******** "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v53

    move-object/from16 v1, v69

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v39

    .line 936
    .restart local v39       #deleteDone:I
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteDone is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/4 v2, 0x1

    move/from16 v0, v39

    if-ne v0, v2, :cond_28

    .line 938
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget v3, v3, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mContactId:I

    int-to-long v5, v3

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v43

    .line 940
    .restart local v43       #deleteUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v2, v0, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v38

    .line 941
    .restart local v38       #deleteDB:I
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteDB is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    .end local v38           #deleteDB:I
    .end local v43           #deleteUri:Landroid/net/Uri;
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 945
    .end local v39           #deleteDone:I
    .end local v53           #iccUriForUsim:Landroid/net/Uri;
    .end local v69           #where:Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 953
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberIsNull:Z
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1402(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    .line 959
    :cond_2b
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 960
    const-string v2, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFixNumberInvalid:Z
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1602(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    .line 965
    :cond_2c
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFixNumberInvalid is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFixNumberInvalid:Z
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1600(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 954
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 955
    const-string v2, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberInvalid:Z
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1502(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z

    goto :goto_11

    .line 978
    :cond_2e
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1200()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v5

    const/4 v6, 0x1

    const-string v8, "ExtensionForSNE"

    invoke-virtual {v2, v3, v5, v6, v8}, Lcom/android/contacts/ext/ContactAccountExtension;->isTextValid(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #calls: Lcom/mediatek/contacts/activities/EditSimContactActivity;->showSaveFailToast()V
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1900(Lcom/mediatek/contacts/activities/EditSimContactActivity;)V

    goto/16 :goto_4

    .line 992
    :cond_2f
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2800()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "ExtensionForAAS"

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/contacts/ext/ContactAccountExtension;->getProjection(I[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 996
    .local v7, addressBookColumnName:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 999
    if-eqz v35, :cond_31

    .line 1001
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v11, v2, v0, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v58

    .line 1003
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatevalues IS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result IS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    move/from16 v0, v58

    #calls: Lcom/mediatek/contacts/activities/EditSimContactActivity;->updateFailToastText(I)Z
    invoke-static {v2, v0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2900(Lcom/mediatek/contacts/activities/EditSimContactActivity;I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x0

    #setter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOnBackGoing:Z
    invoke-static {v2, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1802(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1010
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :cond_30
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 1013
    :cond_31
    const-string v2, "EditSimContactActivity"

    const-string v3, "update to db"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    new-instance v57, Landroid/content/ContentValues;

    invoke-direct/range {v57 .. v57}, Landroid/content/ContentValues;-><init>()V

    .line 1023
    .local v57, namevalues:Landroid/content/ContentValues;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v5, v3, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    .line 1025
    .local v72, wherename:Ljava/lang/String;
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wherename is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v72

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mUpdateName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 1029
    const-string v2, "data1"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string v2, "data2"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1032
    const-string v2, "data3"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1033
    const-string v2, "data4"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1034
    const-string v2, "data5"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1035
    const-string v2, "data6"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1037
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v72

    invoke-virtual {v11, v2, v0, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v67

    .line 1038
    .local v67, upname:I
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upname is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    .end local v67           #upname:I
    :cond_32
    :goto_12
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1053
    .local v22, phonevalues:Landroid/content/ContentValues;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v5, v3, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_additional_number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v73

    .line 1056
    .local v73, wherephone:Ljava/lang/String;
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " wherephone is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v73

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mOldPhone:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldPhone:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3100(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "|mUpdatephone:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldPhone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3100(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 1059
    const-string v2, "data1"

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2300()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v73

    invoke-virtual {v11, v2, v0, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v68

    .line 1061
    .local v68, upnumber:I
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upnumber is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    .end local v68           #upnumber:I
    :cond_33
    :goto_13
    const/16 v47, -0x1

    .line 1106
    .restart local v47       #errorType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimType:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$400(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1108
    new-instance v45, Landroid/content/ContentValues;

    invoke-direct/range {v45 .. v45}, Landroid/content/ContentValues;-><init>()V

    .line 1110
    .local v45, emailvalues:Landroid/content/ContentValues;
    const-string v2, "data2"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v5, v3, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    .line 1114
    .local v71, wheremail:Ljava/lang/String;
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wheremail is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldEmail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1116
    const-string v2, "data1"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v71

    invoke-virtual {v11, v2, v0, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v66

    .line 1119
    .local v66, upemail:I
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upemail is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v66

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    .end local v66           #upemail:I
    :cond_34
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$900(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1200()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldNickname:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v0, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    move-wide/from16 v28, v0

    move-object/from16 v25, v11

    invoke-static/range {v23 .. v29}, Lcom/mediatek/contacts/extension/aassne/SneExt;->updateDataToDb(ILjava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1138
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 1140
    .local v32, additionalvalues:Landroid/content/ContentValues;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$900(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAnrsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldAnrsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3400(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v0, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    move-wide/from16 v28, v0

    const/16 v30, 0x1

    const-string v31, "ExtensionForAAS"

    move-object/from16 v25, v11

    invoke-virtual/range {v23 .. v31}, Lcom/android/contacts/ext/ContactAccountExtension;->updateDataToDb(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;JILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v5, v3, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_additional_number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " =1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    .line 1147
    .local v70, whereadditional:Ljava/lang/String;
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "whereadditional is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldOtherPhone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 1151
    const-string v2, "data1"

    invoke-static {}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2400()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v70

    invoke-virtual {v11, v2, v0, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v65

    .line 1154
    .local v65, upadditional:I
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upadditional is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v65

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    .end local v65           #upadditional:I
    .end local v70           #whereadditional:Ljava/lang/String;
    :cond_35
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_3f

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v51

    .local v51, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/util/Map$Entry;

    .line 1177
    .restart local v46       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface/range {v46 .. v46}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    .line 1178
    .restart local v48       #grpId:J
    invoke-interface/range {v46 .. v46}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    .line 1179
    .restart local v50       #grpName:Ljava/lang/String;
    const/16 v60, -0x1

    .line 1181
    .restart local v60       #ugrpId:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    move-object/from16 v0, v50

    invoke-static {v2, v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->hasExistGroup(ILjava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v60

    .line 1185
    :goto_17
    if-lez v60, :cond_36

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndexInSim:J
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)J

    move-result-wide v5

    long-to-int v3, v5

    move/from16 v0, v60

    invoke-static {v2, v3, v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->deleteUSIMGroupMember(III)Z

    .line 1188
    :cond_36
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype=\'vnd.android.cursor.item/group_membership\' AND raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v5, v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "data1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v48

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v36

    .line 1192
    .local v36, delCount:I
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM group]DB deleteCount:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1010
    .end local v22           #phonevalues:Landroid/content/ContentValues;
    .end local v32           #additionalvalues:Landroid/content/ContentValues;
    .end local v36           #delCount:I
    .end local v45           #emailvalues:Landroid/content/ContentValues;
    .end local v46           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v47           #errorType:I
    .end local v48           #grpId:J
    .end local v50           #grpName:Ljava/lang/String;
    .end local v51           #i$:Ljava/util/Iterator;
    .end local v57           #namevalues:Landroid/content/ContentValues;
    .end local v60           #ugrpId:I
    .end local v71           #wheremail:Ljava/lang/String;
    .end local v72           #wherename:Ljava/lang/String;
    .end local v73           #wherephone:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1039
    .restart local v57       #namevalues:Landroid/content/ContentValues;
    .restart local v72       #wherename:Ljava/lang/String;
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1040
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v5, v3, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1041
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v2, "data1"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v57

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v63

    .line 1044
    .local v63, upNameUri:Landroid/net/Uri;
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upNameUri is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v63

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 1045
    .end local v63           #upNameUri:Landroid/net/Uri;
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1047
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v72

    invoke-virtual {v11, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v41

    .line 1048
    .local v41, deleteName:I
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteName is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 1062
    .end local v41           #deleteName:I
    .restart local v22       #phonevalues:Landroid/content/ContentValues;
    .restart local v73       #wherephone:Ljava/lang/String;
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldPhone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3100(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1063
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v5, v3, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1064
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v2, "data1"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v2, "is_additional_number"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1067
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1070
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3

    const-string v26, "ExtensionForAAS"

    invoke-virtual/range {v20 .. v26}, Lcom/android/contacts/ext/ContactAccountExtension;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z

    .line 1075
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v64

    .line 1076
    .local v64, upNumberUri:Landroid/net/Uri;
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upNumberUri is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v64

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 1077
    .end local v64           #upNumberUri:Landroid/net/Uri;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1078
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v73

    invoke-virtual {v11, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v42

    .line 1079
    .local v42, deletePhone:I
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deletePhone is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 1120
    .end local v42           #deletePhone:I
    .restart local v45       #emailvalues:Landroid/content/ContentValues;
    .restart local v47       #errorType:I
    .restart local v71       #wheremail:Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldEmail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1121
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v5, v3, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1122
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v45

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v2, "data1"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v45

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v62

    .line 1125
    .local v62, upEmailUri:Landroid/net/Uri;
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upEmailUri is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 1126
    .end local v62           #upEmailUri:Landroid/net/Uri;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1128
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v71

    invoke-virtual {v11, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v40

    .line 1129
    .local v40, deleteEmail:I
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteEmail is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 1155
    .end local v40           #deleteEmail:I
    .restart local v32       #additionalvalues:Landroid/content/ContentValues;
    .restart local v70       #whereadditional:Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldOtherPhone:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$3500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1157
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v5, v3, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1158
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v2, "data1"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const-string v2, "is_additional_number"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1161
    const-string v2, "data2"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1162
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v61

    .line 1164
    .local v61, upAdditionalUri:Landroid/net/Uri;
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upAdditionalUri is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1165
    .end local v61           #upAdditionalUri:Landroid/net/Uri;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1168
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v70

    invoke-virtual {v11, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v37

    .line 1170
    .local v37, deleteAdditional:I
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAdditional is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1182
    .end local v37           #deleteAdditional:I
    .end local v70           #whereadditional:Ljava/lang/String;
    .restart local v46       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v48       #grpId:J
    .restart local v50       #grpName:Ljava/lang/String;
    .restart local v51       #i$:Ljava/util/Iterator;
    .restart local v60       #ugrpId:I
    :catch_2
    move-exception v44

    .line 1183
    .local v44, e:Landroid/os/RemoteException;
    const/16 v60, -0x1

    goto/16 :goto_17

    .line 1203
    .end local v44           #e:Landroid/os/RemoteException;
    .end local v46           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v48           #grpId:J
    .end local v50           #grpName:Ljava/lang/String;
    .end local v51           #i$:Ljava/util/Iterator;
    .end local v60           #ugrpId:I
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_41

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v55

    .line 1205
    .restart local v55       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;>;"
    :cond_40
    :goto_18
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1206
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/util/Map$Entry;

    .line 1207
    .restart local v46       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface/range {v46 .. v46}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    .line 1208
    .restart local v48       #grpId:J
    invoke-interface/range {v46 .. v46}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    .line 1209
    .restart local v50       #grpName:Ljava/lang/String;
    const/16 v60, -0x1

    .line 1211
    .restart local v60       #ugrpId:I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    move-object/from16 v0, v50

    invoke-static {v2, v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->syncUSIMGroupNewIfMissing(ILjava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v60

    .line 1218
    :goto_19
    if-lez v60, :cond_40

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    #getter for: Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndexInSim:J
    invoke-static {v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)J

    move-result-wide v5

    long-to-int v3, v5

    move/from16 v0, v60

    invoke-static {v2, v3, v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->addUSIMGroupMember(III)Z

    .line 1221
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 1222
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string v2, "data1"

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1225
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    iget-wide v5, v3, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1226
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_18

    .line 1212
    :catch_3
    move-exception v44

    .line 1213
    .restart local v44       #e:Landroid/os/RemoteException;
    const/16 v60, -0x1

    .line 1217
    goto :goto_19

    .line 1214
    .end local v44           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v44

    .line 1215
    .local v44, e:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->getErrorType()I

    move-result v47

    .line 1216
    const/16 v60, -0x1

    goto :goto_19

    .line 1232
    .end local v32           #additionalvalues:Landroid/content/ContentValues;
    .end local v44           #e:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;
    .end local v45           #emailvalues:Landroid/content/ContentValues;
    .end local v46           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v48           #grpId:J
    .end local v50           #grpName:Ljava/lang/String;
    .end local v55           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v60           #ugrpId:I
    .end local v71           #wheremail:Ljava/lang/String;
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, 0x0

    move/from16 v0, v47

    #calls: Lcom/mediatek/contacts/activities/EditSimContactActivity;->showResultToastText(ILjava/lang/String;)V
    invoke-static {v2, v0, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->access$2500(Lcom/mediatek/contacts/activities/EditSimContactActivity;ILjava/lang/String;)V

    .line 1234
    const/4 v2, -0x1

    move/from16 v0, v47

    if-ne v0, v2, :cond_42

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    const/4 v3, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1239
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;->this$0:Lcom/mediatek/contacts/activities/EditSimContactActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4
.end method
