.class public Lcom/mediatek/gallery3d/video/ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "ErrorDialogFragment.java"


# static fields
.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/SR/ErrorDialogFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/mediatek/gallery3d/video/ErrorDialogFragment;
    .locals 3
    .parameter "messageID"

    .prologue
    .line 26
    new-instance v1, Lcom/mediatek/gallery3d/video/ErrorDialogFragment;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/video/ErrorDialogFragment;-><init>()V

    .line 27
    .local v1, frag:Lcom/mediatek/gallery3d/video/ErrorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 28
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x104000a

    new-instance v4, Lcom/mediatek/gallery3d/video/ErrorDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/mediatek/gallery3d/video/ErrorDialogFragment$1;-><init>(Lcom/mediatek/gallery3d/video/ErrorDialogFragment;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 47
    const-string v3, "message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 48
    const-string v3, "message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 51
    .local v2, res:Landroid/app/Dialog;
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 52
    new-instance v3, Lcom/mediatek/gallery3d/video/ErrorDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/mediatek/gallery3d/video/ErrorDialogFragment$2;-><init>(Lcom/mediatek/gallery3d/video/ErrorDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 64
    return-object v2
.end method
