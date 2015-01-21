.class Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/calllog/CallLogFragment;->updateData([Landroid/net/Uri;)V
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
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogFragment;

.field final synthetic val$callUris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;[Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1395
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/android/contacts/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/android/contacts/PhoneCallDetails;
    .locals 6
    .parameter "params"

    .prologue
    .line 1400
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    array-length v3, v4

    .line 1401
    .local v3, numCalls:I
    new-array v0, v3, [Lcom/android/contacts/PhoneCallDetails;

    .line 1403
    .local v0, details:[Lcom/android/contacts/PhoneCallDetails;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1404
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    aget-object v5, v5, v2

    #calls: Lcom/android/contacts/calllog/CallLogFragment;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;
    invoke-static {v4, v5}, Lcom/android/contacts/calllog/CallLogFragment;->access$1500(Lcom/android/contacts/calllog/CallLogFragment;Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1407
    :catch_0
    move-exception v1

    .line 1409
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "CallLogFragment"

    const-string v5, "invalid URI starting call details"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1410
    const/4 v0, 0x0

    .end local v0           #details:[Lcom/android/contacts/PhoneCallDetails;
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1395
    check-cast p1, [Lcom/android/contacts/PhoneCallDetails;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->onPostExecute([Lcom/android/contacts/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/android/contacts/PhoneCallDetails;)V
    .locals 36
    .parameter "details"

    .prologue
    .line 1417
    if-nez p1, :cond_0

    .line 1707
    :goto_0
    return-void

    .line 1423
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    aget-object v25, p1, v2

    .line 1424
    .local v25, firstDetails:Lcom/android/contacts/PhoneCallDetails;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/contacts/calllog/CallLogFragment;->mNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$1602(Lcom/android/contacts/calllog/CallLogFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1425
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    .line 1426
    .local v21, contactUri:Landroid/net/Uri;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v35, v0

    .line 1429
    .local v35, photoUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$1800(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/PhoneCallDetailsHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$1700(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Lcom/android/contacts/PhoneCallDetailsHelper;->setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/contacts/PhoneCallDetails;)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$1900(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$1600(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v34

    .line 1436
    .local v34, numberCallUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$1900(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$1600(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v20

    .line 1439
    .local v20, canPlaceCallsTo:Z
    const/16 v27, 0x0

    .line 1441
    .local v27, isVoicemailNumber:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$1900(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$1600(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v26

    .line 1450
    .local v26, isSipNumber:Z
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1451
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    .line 1456
    .local v33, nameOrNumber:Ljava/lang/CharSequence;
    :goto_1
    if-eqz v21, :cond_7

    .line 1457
    new-instance v32, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1460
    .local v32, mainActionIntent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1462
    const v31, 0x7f020095

    .line 1463
    .local v31, mainActionIcon:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const v3, 0x7f0c02e5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v33, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 1506
    .local v30, mainActionDescription:Ljava/lang/String;
    :goto_2
    if-nez v32, :cond_a

    .line 1507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$2000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$2100(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$1700(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$2200(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1527
    :goto_3
    if-eqz v20, :cond_d

    .line 1528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$1900(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 1537
    .local v22, displayNumber:Ljava/lang/CharSequence;
    invoke-static/range {v34 .. v34}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailUri(Landroid/net/Uri;)Z

    move-result v28

    .line 1538
    .local v28, isVoicemailUri:Z
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v6

    .line 1539
    .local v6, slotId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$1600(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.original"

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v19

    .line 1541
    .local v19, callIntent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1542
    if-eqz v28, :cond_1

    const/4 v2, -0x1

    if-eq v6, v2, :cond_1

    .line 1543
    const-string v2, "simId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1545
    :cond_1
    new-instance v23, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const v3, 0x7f0c0128

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v22}, Lcom/android/contacts/format/FormatUtils;->forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const v4, 0x7f0c02e6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v33, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1, v3}, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1551
    .local v23, entry:Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1556
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    if-nez v2, :cond_b

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    iget-object v2, v2, Lcom/android/contacts/calllog/CallLogFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0298

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 1576
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$1900(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$1600(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mHasSms:Z
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$2300(Lcom/android/contacts/calllog/CallLogFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1577
    const v2, 0x7f0200d9

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "sms"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/contacts/calllog/CallLogFragment;->access$1600(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const v5, 0x7f0c02e7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v33, v7, v8

    invoke-virtual {v4, v5, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 1586
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    #calls: Lcom/android/contacts/calllog/CallLogFragment;->setSimInfo(I)V
    invoke-static {v2, v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$2400(Lcom/android/contacts/calllog/CallLogFragment;I)V

    .line 1602
    const/4 v2, 0x0

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->thirdIntent:Landroid/content/Intent;

    .line 1605
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v2

    if-eqz v2, :cond_c

    .line 1606
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v34

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "com.android.phone.extra.original"

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.ip"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.original"

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v29

    .line 1610
    .local v29, itFourth:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1612
    if-eqz v28, :cond_4

    const/4 v2, -0x1

    if-eq v6, v2, :cond_4

    .line 1613
    const-string v2, "simId"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1615
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const v3, 0x7f0c009c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v22}, Lcom/android/contacts/format/FormatUtils;->forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const v4, 0x7f0c02e6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v33, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->setFourthAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1622
    .end local v29           #itFourth:Landroid/content/Intent;
    :goto_5
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->geocode:Ljava/lang/CharSequence;

    .line 1625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v0, v23

    #calls: Lcom/android/contacts/calllog/CallLogFragment;->configureCallButton(Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;)V
    invoke-static {v2, v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$2500(Lcom/android/contacts/calllog/CallLogFragment;Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v0, v22

    #setter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$2602(Lcom/android/contacts/calllog/CallLogFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    #setter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$2702(Lcom/android/contacts/calllog/CallLogFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1629
    const/4 v9, 0x0

    .line 1630
    .local v9, name:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1631
    .local v10, number:Ljava/lang/String;
    if-eqz v25, :cond_5

    .line 1632
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1633
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    .line 1634
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1637
    :cond_5
    const-string v2, "CallLogFragment"

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

    .line 1638
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v11, 0x7f070070

    const v12, 0x7f070060

    const v13, 0x7f070071

    const v14, 0x7f070072

    const v15, 0x7f070073

    const v16, 0x7f070075

    const v17, 0x7f070074

    const-string v18, "ExtenstionForRCS"

    invoke-virtual/range {v7 .. v18}, Lcom/android/contacts/ext/CallDetailExtension;->setViewVisibleByActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/lang/String;)V

    .line 1654
    .end local v6           #slotId:I
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    .end local v19           #callIntent:Landroid/content/Intent;
    .end local v22           #displayNumber:Ljava/lang/CharSequence;
    .end local v23           #entry:Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;
    .end local v28           #isVoicemailUri:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    if-eqz v20, :cond_e

    if-nez v26, :cond_e

    const/4 v2, 0x1

    :goto_7
    #setter for: Lcom/android/contacts/calllog/CallLogFragment;->mHasEditNumberBeforeCallOption:Z
    invoke-static {v3, v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$2802(Lcom/android/contacts/calllog/CallLogFragment;Z)Z

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->historyList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$3100(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v11, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    iget-object v13, v3, Lcom/android/contacts/calllog/CallLogFragment;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$2900(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallTypeHelper;

    move-result-object v14

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mControls:Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$3000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v15, p1

    move/from16 v17, v20

    invoke-direct/range {v11 .. v18}, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/calllog/CallTypeHelper;[Lcom/android/contacts/PhoneCallDetails;ZZLandroid/view/View;)V

    invoke-virtual {v2, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1668
    new-instance v2, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask$2;-><init>(Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->historyList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$3100(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/contacts/BackScrollManager;->bind(Lcom/android/contacts/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v0, v35

    #calls: Lcom/android/contacts/calllog/CallLogFragment;->loadContactPhotos(Landroid/net/Uri;)V
    invoke-static {v2, v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$3500(Lcom/android/contacts/calllog/CallLogFragment;Landroid/net/Uri;)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$3600(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1692
    if-nez v20, :cond_f

    .line 1693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$3700(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mSeparator:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$3400(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mSeparator02:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$3800(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mConvertView2:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$3900(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1703
    .end local v20           #canPlaceCallsTo:Z
    .end local v21           #contactUri:Landroid/net/Uri;
    .end local v25           #firstDetails:Lcom/android/contacts/PhoneCallDetails;
    .end local v26           #isSipNumber:Z
    .end local v27           #isVoicemailNumber:Z
    .end local v30           #mainActionDescription:Ljava/lang/String;
    .end local v31           #mainActionIcon:I
    .end local v32           #mainActionIntent:Landroid/content/Intent;
    .end local v33           #nameOrNumber:Ljava/lang/CharSequence;
    .end local v34           #numberCallUri:Landroid/net/Uri;
    .end local v35           #photoUri:Landroid/net/Uri;
    :catch_0
    move-exception v24

    .line 1704
    .local v24, ex:Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1453
    .end local v24           #ex:Ljava/lang/Exception;
    .restart local v20       #canPlaceCallsTo:Z
    .restart local v21       #contactUri:Landroid/net/Uri;
    .restart local v25       #firstDetails:Lcom/android/contacts/PhoneCallDetails;
    .restart local v26       #isSipNumber:Z
    .restart local v27       #isVoicemailNumber:Z
    .restart local v34       #numberCallUri:Landroid/net/Uri;
    .restart local v35       #photoUri:Landroid/net/Uri;
    :cond_6
    :try_start_1
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    .restart local v33       #nameOrNumber:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1484
    :cond_7
    if-eqz v20, :cond_9

    .line 1485
    new-instance v32, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1486
    .restart local v32       #mainActionIntent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1489
    if-eqz v26, :cond_8

    .line 1490
    const-string v2, "sip_address"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$1600(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1496
    :goto_8
    const v31, 0x7f020052

    .line 1497
    .restart local v31       #mainActionIcon:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const v3, 0x7f0c02e4

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_2

    .line 1493
    .end local v30           #mainActionDescription:Ljava/lang/String;
    .end local v31           #mainActionIcon:I
    :cond_8
    const-string v2, "phone"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$1600(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    .line 1501
    .end local v32           #mainActionIntent:Landroid/content/Intent;
    :cond_9
    const/16 v32, 0x0

    .line 1502
    .restart local v32       #mainActionIntent:Landroid/content/Intent;
    const/16 v31, 0x0

    .line 1503
    .restart local v31       #mainActionIcon:I
    const/16 v30, 0x0

    .restart local v30       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_2

    .line 1512
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$2000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$2000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ImageView;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$2100(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$2100(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v3, v0, v1}, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask$1;-><init>(Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$2100(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ImageButton;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$1700(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$2200(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1563
    .restart local v6       #slotId:I
    .restart local v19       #callIntent:Landroid/content/Intent;
    .restart local v22       #displayNumber:Ljava/lang/CharSequence;
    .restart local v23       #entry:Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;
    .restart local v28       #isVoicemailUri:Z
    :cond_b
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    iget-object v3, v3, Lcom/android/contacts/calllog/CallLogFragment;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    const-string v7, "ExtensionForAAS"

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 1619
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->fourthIntent:Landroid/content/Intent;

    goto/16 :goto_5

    .line 1645
    .end local v6           #slotId:I
    .end local v19           #callIntent:Landroid/content/Intent;
    .end local v22           #displayNumber:Ljava/lang/CharSequence;
    .end local v23           #entry:Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;
    .end local v28           #isVoicemailUri:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const/4 v3, 0x0

    #setter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$2602(Lcom/android/contacts/calllog/CallLogFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const/4 v3, 0x0

    #setter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$2702(Lcom/android/contacts/calllog/CallLogFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 1654
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 1698
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$3700(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mSeparator:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$3400(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mSeparator02:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$3800(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mConvertView2:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$3900(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
