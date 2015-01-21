.class public Lcom/mediatek/gallery3d/video/DetailDialog;
.super Landroid/app/AlertDialog;
.source "DetailDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final BTN_OK:I = -0x1

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/DetailDialog"


# instance fields
.field private final mAuthor:Ljava/lang/String;

.field private mAuthorView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mCopyright:Ljava/lang/String;

.field private mCopyrightView:Landroid/widget/TextView;

.field private final mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "author"
    .parameter "copyright"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 84
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mContext:Landroid/content/Context;

    .line 85
    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2
    :cond_0
    iput-object p2, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mTitle:Ljava/lang/String;

    .line 86
    if-nez p3, :cond_1

    const-string p3, ""

    .end local p3
    :cond_1
    iput-object p3, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mAuthor:Ljava/lang/String;

    .line 87
    if-nez p4, :cond_2

    const-string p4, ""

    .end local p4
    :cond_2
    iput-object p4, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mCopyright:Ljava/lang/String;

    .line 89
    const-string v0, "Gallery2/VideoPlayer/DetailDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LimitDialog() mTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAuthor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mAuthor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCopyRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mCopyright:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    const v0, 0x7f0c0223

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mTitleView:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mAuthorView:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mCopyrightView:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0224

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mAuthorView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0226

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mAuthor:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mCopyrightView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0225

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mCopyright:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/DetailDialog;->mContext:Landroid/content/Context;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method
