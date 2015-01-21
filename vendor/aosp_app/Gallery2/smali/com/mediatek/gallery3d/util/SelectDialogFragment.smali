.class public Lcom/mediatek/gallery3d/util/SelectDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# static fields
.field private static final KEY_DEFAULT_SELECT:Ljava/lang/String; = "nowSelect"

.field private static final KEY_DEFAULT_SELECTARRAY:Ljava/lang/String; = "nowSelectArray"

.field private static final KEY_ITEM_ARRAY:Ljava/lang/String; = "itemArray"

.field private static final KEY_SINGLE_CHOICE:Ljava/lang/String; = "singleChoice"

.field private static final KEY_SUFFIX_ARRAY:Ljava/lang/String; = "suffixArray"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "Gallery2/SelectDialogFragment"


# instance fields
.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/mediatek/gallery3d/util/SelectDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 23
    iput-object v0, p0, Lcom/mediatek/gallery3d/util/SelectDialogFragment;->mMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-void
.end method

.method public static newInstance([I[Ljava/lang/CharSequence;IZI[Z)Lcom/mediatek/gallery3d/util/SelectDialogFragment;
    .locals 4
    .parameter "itemArrayID"
    .parameter "sufffixArray"
    .parameter "titleID"
    .parameter "singleChoice"
    .parameter "nowSelect"
    .parameter "nowSelectArray"

    .prologue
    .line 40
    new-instance v1, Lcom/mediatek/gallery3d/util/SelectDialogFragment;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/util/SelectDialogFragment;-><init>()V

    .line 41
    .local v1, frag:Lcom/mediatek/gallery3d/util/SelectDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "itemArray"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 43
    const-string v2, "suffixArray"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 44
    const-string v2, "title"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v2, "singleChoice"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    if-eqz p3, :cond_0

    .line 47
    const-string v2, "nowSelect"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v1

    .line 49
    :cond_0
    const-string v3, "nowSelectArray"

    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/SelectDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/SelectDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 103
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/SelectDialogFragment;->mMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/SelectDialogFragment;->mMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 110
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 60
    const-string v11, "Gallery2/SelectDialogFragment"

    const-string v12, "<onCreateDialog>"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, args:Landroid/os/Bundle;
    const-string v11, "title"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, title:Ljava/lang/String;
    const-string v11, "itemArray"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 64
    .local v5, itemArrayID:[I
    array-length v1, v5

    .line 65
    .local v1, arraySize:I
    new-array v4, v1, [Ljava/lang/CharSequence;

    .line 66
    .local v4, itemArray:[Ljava/lang/CharSequence;
    const-string v11, "suffixArray"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v9

    .line 67
    .local v9, suffixArray:[Ljava/lang/CharSequence;
    if-nez v9, :cond_0

    .line 68
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 69
    aget v11, v5, v3

    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v3

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v3           #i:I
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 73
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget v12, v5, v3

    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v3

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    :cond_1
    const-string v11, "singleChoice"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 78
    .local v8, singleChoice:Z
    const/4 v2, 0x0

    .line 79
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v8, :cond_2

    .line 80
    const-string v11, "nowSelect"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 81
    .local v6, nowSelect:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .restart local v2       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v4, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/high16 v12, 0x104

    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x104000a

    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    .end local v6           #nowSelect:I
    :goto_2
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    return-object v11

    .line 86
    :cond_2
    const-string v11, "nowSelectArray"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v7

    .line 87
    .local v7, nowSelectArray:[Z
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    .restart local v2       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v4, v7, p0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/high16 v12, 0x104

    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x104000a

    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/gallery3d/util/SelectDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 120
    return-void
.end method

.method public setOnMultiChoiceListener(Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mediatek/gallery3d/util/SelectDialogFragment;->mMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 124
    return-void
.end method
