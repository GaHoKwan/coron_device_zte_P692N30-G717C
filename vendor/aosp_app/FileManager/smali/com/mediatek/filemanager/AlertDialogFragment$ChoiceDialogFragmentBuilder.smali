.class public Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragmentBuilder;
.super Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoiceDialogFragmentBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;
    .locals 2

    .prologue
    .line 537
    new-instance v0, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;

    invoke-direct {v0}, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;-><init>()V

    .line 538
    .local v0, f:Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;
    iget-object v1, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 539
    return-object v0
.end method

.method public bridge synthetic create()Lcom/mediatek/filemanager/AlertDialogFragment;
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragmentBuilder;->create()Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public setDefault(II)Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragmentBuilder;
    .locals 2
    .parameter "arrayId"
    .parameter "defaultChoice"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "defaultChoice"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 552
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "arrayId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 553
    return-object p0
.end method
