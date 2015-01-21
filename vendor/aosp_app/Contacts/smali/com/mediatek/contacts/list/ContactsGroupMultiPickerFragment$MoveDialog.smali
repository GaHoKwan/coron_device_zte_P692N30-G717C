.class Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;
.super Landroid/app/DialogFragment;
.source "ContactsGroupMultiPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveDialog"
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field private mIdArray:[J

.field private mOriginalGroupId:J

.field private mOriginalGroupName:Ljava/lang/String;

.field private mSlotId:I

.field private mTargetGroupId:J

.field private mTargetGroupName:Ljava/lang/String;

.field private mTitleArray:[Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 430
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 420
    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mContext:Landroid/app/Activity;

    .line 421
    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mAccountName:Ljava/lang/String;

    .line 422
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mSlotId:I

    .line 423
    iput-wide v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mOriginalGroupId:J

    .line 424
    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mOriginalGroupName:Ljava/lang/String;

    .line 425
    iput-wide v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupId:J

    .line 426
    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupName:Ljava/lang/String;

    .line 427
    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mIdArray:[J

    .line 428
    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTitleArray:[Ljava/lang/String;

    .line 431
    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mOriginalGroupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 418
    iget-wide v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mOriginalGroupId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 418
    iget v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mSlotId:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mIdArray:[J

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTitleArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 418
    iget-wide v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupId:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-wide p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupId:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mContext:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 436
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mContext:Landroid/app/Activity;

    .line 437
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedState"

    .prologue
    const-wide/16 v5, -0x1

    .line 440
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 441
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 443
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "mGroupName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mOriginalGroupName:Ljava/lang/String;

    .line 444
    const-string v1, "mAccountName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mAccountName:Ljava/lang/String;

    .line 445
    const-string v1, "mSlotId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mSlotId:I

    .line 446
    const-string v1, "mGroupId"

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mOriginalGroupId:J

    .line 448
    const-string v1, "IdArray"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mIdArray:[J

    .line 449
    const-string v1, "TitleArray"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTitleArray:[Ljava/lang/String;

    .line 451
    invoke-static {}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MoveDialog#onCreate]originalGroupName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|originalGroupId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mOriginalGroupId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|accountName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|slotId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mSlotId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|mIdArray"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mIdArray:[J

    if-nez v1, :cond_1

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|mTitleArray:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTitleArray:[Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-eqz p1, :cond_0

    .line 458
    const-string v1, "target_group_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupName:Ljava/lang/String;

    .line 459
    const-string v1, "target_group_id"

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupId:J

    .line 460
    invoke-static {}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MoveDialog#onCreate]targetGroupName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|targetGroupId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    return-void

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mIdArray:[J

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTitleArray:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 482
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 483
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c005c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 484
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 485
    const/4 v1, -0x1

    .line 486
    .local v1, checkedPositon:I
    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTitleArray:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTitleArray:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 487
    const/4 v1, 0x0

    .line 488
    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mIdArray:[J

    aget-wide v2, v2, v4

    iput-wide v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupId:J

    .line 489
    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTitleArray:[Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupName:Ljava/lang/String;

    .line 491
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTitleArray:[Ljava/lang/String;

    new-instance v3, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$1;

    invoke-direct {v3, p0}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$1;-><init>(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 503
    const v2, 0x1040013

    new-instance v3, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;

    invoke-direct {v3, p0}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog$2;-><init>(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 519
    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    const-string v0, "target_group_name"

    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_0
    const-string v0, "target_group_id"

    iget-wide v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mTargetGroupId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 473
    const-string v0, "mGroupName"

    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v0, "mAccountName"

    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, "mSlotId"

    iget v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mSlotId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    const-string v0, "mGroupId"

    iget-wide v1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;->mOriginalGroupId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 477
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 478
    return-void
.end method
