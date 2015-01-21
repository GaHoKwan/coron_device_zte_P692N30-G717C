.class public Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogFragmentBuilder"
.end annotation


# instance fields
.field protected final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public create()Lcom/mediatek/filemanager/AlertDialogFragment;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/mediatek/filemanager/AlertDialogFragment;

    invoke-direct {v0}, Lcom/mediatek/filemanager/AlertDialogFragment;-><init>()V

    .line 99
    .local v0, f:Lcom/mediatek/filemanager/AlertDialogFragment;
    iget-object v1, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 100
    return-object v0
.end method

.method public setCancelTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2
    .parameter "resId"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "negativeTitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    return-object p0
.end method

.method public setCancelable(Z)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2
    .parameter "cancelable"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "cancelable"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    return-object p0
.end method

.method public setDoneTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2
    .parameter "resId"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "positiveTitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    return-object p0
.end method

.method public setIcon(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2
    .parameter "resId"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "icon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    return-object p0
.end method

.method public setLayout(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2
    .parameter "resId"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "layout"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    return-object p0
.end method

.method public setMessage(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2
    .parameter "resId"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    return-object p0
.end method

.method public setTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2
    .parameter "resId"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    return-object p0
.end method
