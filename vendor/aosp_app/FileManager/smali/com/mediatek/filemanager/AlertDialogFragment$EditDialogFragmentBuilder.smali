.class public Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;
.super Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditDialogFragmentBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;
    .locals 2

    .prologue
    .line 302
    new-instance v0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    invoke-direct {v0}, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;-><init>()V

    .line 303
    .local v0, f:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;
    iget-object v1, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 304
    return-object v0
.end method

.method public bridge synthetic create()Lcom/mediatek/filemanager/AlertDialogFragment;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;->create()Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public setDefault(Ljava/lang/String;I)Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;
    .locals 2
    .parameter "defaultString"
    .parameter "defaultSelection"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "defaultString"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "defaultSelection"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    return-object p0
.end method
