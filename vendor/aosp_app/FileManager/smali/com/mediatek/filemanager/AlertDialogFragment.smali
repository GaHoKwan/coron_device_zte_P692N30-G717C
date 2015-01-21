.class public Lcom/mediatek/filemanager/AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/filemanager/AlertDialogFragment$OnDialogDismissListener;,
        Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;,
        Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragmentBuilder;,
        Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;,
        Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;,
        Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
    }
.end annotation


# static fields
.field private static final CANCELABLE:Ljava/lang/String; = "cancelable"

.field private static final ICON:Ljava/lang/String; = "icon"

.field public static final INVIND_RES_ID:I = -0x1

.field private static final LAYOUT:Ljava/lang/String; = "layout"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final NEGATIVE_TITLE:Ljava/lang/String; = "negativeTitle"

.field private static final POSITIVE_TITLE:Ljava/lang/String; = "positiveTitle"

.field public static final TAG:Ljava/lang/String; = "AlertDialogFragment"

.field private static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mDialogDismissListener:Lcom/mediatek/filemanager/AlertDialogFragment$OnDialogDismissListener;

.field protected mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field protected mDoneListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 80
    iput-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    .line 602
    return-void
.end method


# virtual methods
.method protected createAlertDialogBuilder(Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, -0x1

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, args:Landroid/os/Bundle;
    if-nez p1, :cond_6

    .line 217
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 221
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v0, :cond_5

    .line 223
    const-string v10, "title"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 224
    .local v8, title:I
    if-eq v8, v12, :cond_0

    .line 225
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 228
    :cond_0
    const-string v10, "icon"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 229
    .local v5, icon:I
    if-eq v5, v12, :cond_1

    .line 230
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 233
    :cond_1
    const-string v10, "message"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 234
    .local v7, message:I
    const-string v10, "layout"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 235
    .local v6, layout:I
    if-eq v6, v12, :cond_7

    .line 236
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 238
    .local v9, view:Landroid/view/View;
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 243
    .end local v9           #view:Landroid/view/View;
    :cond_2
    :goto_1
    const-string v10, "negativeTitle"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 245
    .local v2, cancel:I
    if-eq v2, v12, :cond_3

    .line 246
    new-instance v10, Lcom/mediatek/filemanager/AlertDialogFragment$1;

    invoke-direct {v10, p0}, Lcom/mediatek/filemanager/AlertDialogFragment$1;-><init>(Lcom/mediatek/filemanager/AlertDialogFragment;)V

    invoke-virtual {v1, v2, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    :cond_3
    const-string v10, "positiveTitle"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 255
    .local v4, done:I
    if-eq v4, v12, :cond_4

    .line 256
    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 259
    :cond_4
    new-instance v10, Lcom/mediatek/filemanager/utils/ToastHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/mediatek/filemanager/utils/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/mediatek/filemanager/AlertDialogFragment;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    .line 260
    const-string v10, "cancelable"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 261
    .local v3, cancelable:Z
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 263
    .end local v2           #cancel:I
    .end local v3           #cancelable:Z
    .end local v4           #done:I
    .end local v5           #icon:I
    .end local v6           #layout:I
    .end local v7           #message:I
    .end local v8           #title:I
    :cond_5
    return-object v1

    .line 219
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_6
    move-object v0, p1

    goto :goto_0

    .line 239
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v5       #icon:I
    .restart local v6       #layout:I
    .restart local v7       #message:I
    .restart local v8       #title:I
    :cond_7
    if-eq v7, v12, :cond_2

    .line 240
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment;->mDoneListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment;->mDoneListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 200
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/AlertDialogFragment;->createAlertDialogBuilder(Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 205
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment;->mDialogDismissListener:Lcom/mediatek/filemanager/AlertDialogFragment$OnDialogDismissListener;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment;->mDialogDismissListener:Lcom/mediatek/filemanager/AlertDialogFragment$OnDialogDismissListener;

    invoke-interface {v0}, Lcom/mediatek/filemanager/AlertDialogFragment$OnDialogDismissListener;->onDialogDismiss()V

    .line 295
    :cond_1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 296
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 86
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/mediatek/filemanager/AlertDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 274
    return-void
.end method

.method public setOnDialogDismissListener(Lcom/mediatek/filemanager/AlertDialogFragment$OnDialogDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/mediatek/filemanager/AlertDialogFragment;->mDialogDismissListener:Lcom/mediatek/filemanager/AlertDialogFragment$OnDialogDismissListener;

    .line 285
    return-void
.end method

.method public setOnDoneListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mediatek/filemanager/AlertDialogFragment;->mDoneListener:Landroid/content/DialogInterface$OnClickListener;

    .line 193
    return-void
.end method
