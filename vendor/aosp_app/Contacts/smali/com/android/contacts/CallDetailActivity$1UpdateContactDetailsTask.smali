.class Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/CallDetailActivity;->updateData([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateContactDetailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/contacts/PhoneCallDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/CallDetailActivity;

.field final synthetic val$callUris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/CallDetailActivity;[Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 519
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/android/contacts/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/android/contacts/PhoneCallDetails;
    .locals 6
    .parameter "params"

    .prologue
    .line 524
    iget-object v4, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    array-length v3, v4

    .line 525
    .local v3, numCalls:I
    new-array v0, v3, [Lcom/android/contacts/PhoneCallDetails;

    .line 527
    .local v0, details:[Lcom/android/contacts/PhoneCallDetails;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 528
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iget-object v5, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    aget-object v5, v5, v2

    #calls: Lcom/android/contacts/CallDetailActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;
    invoke-static {v4, v5}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;

    move-result-object v4

    aput-object v4, v0, v2

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/ext/CallDetailExtension;->doInBackgroundForUpdateData([Landroid/net/Uri;[Lcom/android/contacts/PhoneCallDetails;)[Lcom/android/contacts/PhoneCallDetails;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 536
    :goto_1
    return-object v4

    .line 533
    :catch_0
    move-exception v1

    .line 535
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/contacts/CallDetailActivity;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "invalid URI starting call details"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 519
    check-cast p1, [Lcom/android/contacts/PhoneCallDetails;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/android/contacts/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/android/contacts/PhoneCallDetails;)V
    .locals 36
    .parameter "details"

    .prologue
    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    invoke-static {}, Lcom/android/contacts/CallDetailActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[updateData] onPostExecute, activity finished."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :goto_0
    return-void

    .line 546
    :cond_0
    if-nez p1, :cond_1

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f0c0199

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 556
    :cond_1
    const/4 v2, 0x0

    aget-object v24, p1, v2

    .line 557
    .local v24, firstDetails:Lcom/android/contacts/PhoneCallDetails;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/contacts/CallDetailActivity;->access$602(Lcom/android/contacts/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 558
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    .line 559
    .local v21, contactUri:Landroid/net/Uri;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v35, v0

    .line 562
    .local v35, photoUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$800(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/PhoneCallDetailsHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$700(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Lcom/android/contacts/PhoneCallDetailsHelper;->setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/contacts/PhoneCallDetails;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$900(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v34

    .line 569
    .local v34, numberCallUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$900(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v20

    .line 570
    .local v20, canPlaceCallsTo:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$900(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;I)Z

    move-result v27

    .line 571
    .local v27, isVoicemailNumber:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$900(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v26

    .line 580
    .local v26, isSipNumber:Z
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 581
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    .line 586
    .local v33, nameOrNumber:Ljava/lang/CharSequence;
    :goto_1
    invoke-static {}, Lcom/android/contacts/CallDetailActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onPostExecute]contactUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isVoicemailNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", canPlaceCallsTo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    if-eqz v21, :cond_8

    .line 589
    new-instance v32, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 592
    .local v32, mainActionIntent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 594
    const v31, 0x7f020095

    .line 595
    .local v31, mainActionIcon:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f0c02e5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v33, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 638
    .local v30, mainActionDescription:Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/android/contacts/CallDetailActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onPostExecute]mainActionIntent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    if-nez v32, :cond_c

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$1000(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$1100(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$700(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$1200(Lcom/android/contacts/CallDetailActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 660
    :goto_3
    if-eqz v20, :cond_f

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$900(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 670
    .local v22, displayNumber:Ljava/lang/CharSequence;
    invoke-static/range {v34 .. v34}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailUri(Landroid/net/Uri;)Z

    move-result v28

    .line 671
    .local v28, isVoicemailUri:Z
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v6

    .line 672
    .local v6, slotId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.original"

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v19

    .line 674
    .local v19, callIntent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    if-eqz v28, :cond_2

    const/4 v2, -0x1

    if-eq v6, v2, :cond_2

    .line 676
    const-string v2, "simId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    :cond_2
    new-instance v23, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f0c0128

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v22}, Lcom/android/contacts/format/FormatUtils;->forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v4, 0x7f0c02e6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v33, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1, v3}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 684
    .local v23, entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 689
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    if-nez v2, :cond_d

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iget-object v2, v2, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0298

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 709
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$900(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mHasSms:Z
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$1300(Lcom/android/contacts/CallDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 710
    const v2, 0x7f0200d9

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "sms"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v5, 0x7f0c02e7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v33, v7, v8

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/contacts/CallDetailActivity$ViewEntry;->setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 719
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    #calls: Lcom/android/contacts/CallDetailActivity;->setSimInfo(I)V
    invoke-static {v2, v3}, Lcom/android/contacts/CallDetailActivity;->access$1400(Lcom/android/contacts/CallDetailActivity;I)V

    .line 735
    const/4 v2, 0x0

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->thirdIntent:Landroid/content/Intent;

    .line 738
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v2

    if-eqz v2, :cond_e

    .line 739
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v34

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "com.android.phone.extra.original"

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.ip"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.original"

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v29

    .line 743
    .local v29, itFourth:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    if-eqz v28, :cond_5

    const/4 v2, -0x1

    if-eq v6, v2, :cond_5

    .line 746
    const-string v2, "simId"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f0c009c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v22}, Lcom/android/contacts/format/FormatUtils;->forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v4, 0x7f0c02e6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v33, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/contacts/CallDetailActivity$ViewEntry;->setFourthAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 755
    .end local v29           #itFourth:Landroid/content/Intent;
    :goto_5
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->geocode:Ljava/lang/CharSequence;

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, v23

    #calls: Lcom/android/contacts/CallDetailActivity;->configureCallButton(Lcom/android/contacts/CallDetailActivity$ViewEntry;)V
    invoke-static {v2, v0}, Lcom/android/contacts/CallDetailActivity;->access$1500(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$ViewEntry;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/contacts/CallDetailActivity;->access$1602(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    #setter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/contacts/CallDetailActivity;->access$1702(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 765
    const/4 v9, 0x0

    .line 766
    .local v9, name:Ljava/lang/String;
    const/4 v10, 0x0

    .line 767
    .local v10, number:Ljava/lang/String;
    if-eqz v24, :cond_6

    .line 768
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 769
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    .line 770
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 773
    :cond_6
    invoke-static {}, Lcom/android/contacts/CallDetailActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateData name, number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v11, 0x7f070070

    const v12, 0x7f070060

    const v13, 0x7f070071

    const v14, 0x7f070072

    const v15, 0x7f070073

    const v16, 0x7f070075

    const v17, 0x7f070074

    const-string v18, "ExtenstionForRCS"

    invoke-virtual/range {v7 .. v18}, Lcom/android/contacts/ext/CallDetailExtension;->setViewVisibleByActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/lang/String;)V

    .line 786
    .end local v6           #slotId:I
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    .end local v19           #callIntent:Landroid/content/Intent;
    .end local v22           #displayNumber:Ljava/lang/CharSequence;
    .end local v23           #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    .end local v28           #isVoicemailUri:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    if-eqz v20, :cond_10

    if-nez v26, :cond_10

    if-nez v27, :cond_10

    const/4 v2, 0x1

    :goto_7
    #setter for: Lcom/android/contacts/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z
    invoke-static {v3, v2}, Lcom/android/contacts/CallDetailActivity;->access$1902(Lcom/android/contacts/CallDetailActivity;Z)Z

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #calls: Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$2100(Lcom/android/contacts/CallDetailActivity;)Z

    move-result v3

    #setter for: Lcom/android/contacts/CallDetailActivity;->mHasTrashOption:Z
    invoke-static {v2, v3}, Lcom/android/contacts/CallDetailActivity;->access$2002(Lcom/android/contacts/CallDetailActivity;Z)Z

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #calls: Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$2100(Lcom/android/contacts/CallDetailActivity;)Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    :goto_8
    #setter for: Lcom/android/contacts/CallDetailActivity;->mHasRemoveFromCallLogOption:Z
    invoke-static {v3, v2}, Lcom/android/contacts/CallDetailActivity;->access$2202(Lcom/android/contacts/CallDetailActivity;Z)Z

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f070044

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ListView;

    .line 795
    .local v25, historyList:Landroid/widget/ListView;
    new-instance v11, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iget-object v13, v2, Lcom/android/contacts/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$2300(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/CallTypeHelper;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #calls: Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$2100(Lcom/android/contacts/CallDetailActivity;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f070045

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v15, p1

    move/from16 v17, v20

    invoke-direct/range {v11 .. v18}, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/calllog/CallTypeHelper;[Lcom/android/contacts/PhoneCallDetails;ZZLandroid/view/View;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 800
    new-instance v2, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;-><init>(Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;)V

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/android/contacts/BackScrollManager;->bind(Lcom/android/contacts/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, v35

    #calls: Lcom/android/contacts/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;)V
    invoke-static {v2, v0}, Lcom/android/contacts/CallDetailActivity;->access$2400(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f070043

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 583
    .end local v25           #historyList:Landroid/widget/ListView;
    .end local v30           #mainActionDescription:Ljava/lang/String;
    .end local v31           #mainActionIcon:I
    .end local v32           #mainActionIntent:Landroid/content/Intent;
    .end local v33           #nameOrNumber:Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    .restart local v33       #nameOrNumber:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 597
    :cond_8
    if-eqz v27, :cond_9

    .line 598
    const/16 v32, 0x0

    .line 599
    .restart local v32       #mainActionIntent:Landroid/content/Intent;
    const/16 v31, 0x0

    .line 600
    .restart local v31       #mainActionIcon:I
    const/16 v30, 0x0

    .restart local v30       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_2

    .line 616
    .end local v30           #mainActionDescription:Ljava/lang/String;
    .end local v31           #mainActionIcon:I
    .end local v32           #mainActionIntent:Landroid/content/Intent;
    :cond_9
    if-eqz v20, :cond_b

    .line 617
    new-instance v32, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    .restart local v32       #mainActionIntent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    if-eqz v26, :cond_a

    .line 622
    const-string v2, "sip_address"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    :goto_9
    const v31, 0x7f020052

    .line 629
    .restart local v31       #mainActionIcon:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f0c02e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_2

    .line 625
    .end local v30           #mainActionDescription:Ljava/lang/String;
    .end local v31           #mainActionIcon:I
    :cond_a
    const-string v2, "phone"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 633
    .end local v32           #mainActionIntent:Landroid/content/Intent;
    :cond_b
    const/16 v32, 0x0

    .line 634
    .restart local v32       #mainActionIntent:Landroid/content/Intent;
    const/16 v31, 0x0

    .line 635
    .restart local v31       #mainActionIcon:I
    const/16 v30, 0x0

    .restart local v30       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_2

    .line 645
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$1000(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$1000(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$1100(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$1100(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v3, v0, v1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$1;-><init>(Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$1100(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$700(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$1200(Lcom/android/contacts/CallDetailActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 696
    .restart local v6       #slotId:I
    .restart local v19       #callIntent:Landroid/content/Intent;
    .restart local v22       #displayNumber:Ljava/lang/CharSequence;
    .restart local v23       #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    .restart local v28       #isVoicemailUri:Z
    :cond_d
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iget-object v3, v3, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    const-string v7, "ExtensionForAAS"

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 752
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->fourthIntent:Landroid/content/Intent;

    goto/16 :goto_5

    .line 780
    .end local v6           #slotId:I
    .end local v19           #callIntent:Landroid/content/Intent;
    .end local v22           #displayNumber:Ljava/lang/CharSequence;
    .end local v23           #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    .end local v28           #isVoicemailUri:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #calls: Lcom/android/contacts/CallDetailActivity;->disableCallButton()V
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$1800(Lcom/android/contacts/CallDetailActivity;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const/4 v3, 0x0

    #setter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/contacts/CallDetailActivity;->access$1602(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const/4 v3, 0x0

    #setter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/contacts/CallDetailActivity;->access$1702(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 786
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 789
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_8
.end method
