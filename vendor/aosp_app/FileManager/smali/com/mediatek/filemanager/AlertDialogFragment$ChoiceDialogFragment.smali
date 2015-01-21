.class public Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;
.super Lcom/mediatek/filemanager/AlertDialogFragment;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoiceDialogFragment"
.end annotation


# static fields
.field public static final ARRAY_ID:Ljava/lang/String; = "arrayId"

.field public static final CHOICE_DIALOG_TAG:Ljava/lang/String; = "ChoiceDialogFragment"

.field public static final DEFAULT_CHOICE:Ljava/lang/String; = "defaultChoice"

.field public static final ITEM_LISTENER:Ljava/lang/String; = "itemlistener"


# instance fields
.field private mArrayId:I

.field private mDefaultChoice:I

.field private mItemLinster:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/mediatek/filemanager/AlertDialogFragment;-><init>()V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;->mItemLinster:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;->mItemLinster:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;->mItemLinster:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 599
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 577
    const-string v2, "ChoiceDialogFragment"

    const-string v3, "Show alertSortDialog"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/AlertDialogFragment;->createAlertDialogBuilder(Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 580
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x0

    .line 581
    .local v0, args:Landroid/os/Bundle;
    if-nez p1, :cond_1

    .line 582
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 586
    :goto_0
    if-eqz v0, :cond_0

    .line 587
    const-string v2, "defaultChoice"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;->mDefaultChoice:I

    .line 588
    const-string v2, "arrayId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;->mArrayId:I

    .line 590
    :cond_0
    iget v2, p0, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;->mArrayId:I

    iget v3, p0, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;->mDefaultChoice:I

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 591
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 584
    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public setItemClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;->mItemLinster:Landroid/content/DialogInterface$OnClickListener;

    .line 573
    return-void
.end method
