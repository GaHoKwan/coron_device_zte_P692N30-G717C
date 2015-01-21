.class public Lcom/mediatek/videoplayer/DetailDialog;
.super Landroid/app/AlertDialog;
.source "DetailDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final BTN_OK:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DetailDialog"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDurationView:Landroid/widget/TextView;

.field private mFileSizeView:Landroid/widget/TextView;

.field private final mHolder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

.field private mPathView:Landroid/widget/TextView;

.field private mTimeView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V
    .locals 3
    .parameter "context"
    .parameter "holder"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object p1, p0, Lcom/mediatek/videoplayer/DetailDialog;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/mediatek/videoplayer/DetailDialog;->mHolder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    .line 80
    const-string v0, "DetailDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DetailDialog() holder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 112
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 85
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f03

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mView:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mView:Landroid/view/View;

    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mTitleView:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mView:Landroid/view/View;

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mTimeView:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mView:Landroid/view/View;

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mDurationView:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mView:Landroid/view/View;

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mPathView:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mView:Landroid/view/View;

    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mFileSizeView:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/videoplayer/DetailDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f09004f

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/videoplayer/DetailDialog;->mHolder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    iget-object v4, v4, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mPathView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/videoplayer/DetailDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f090051

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/videoplayer/DetailDialog;->mHolder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    iget-object v4, v4, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mData:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mDurationView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/videoplayer/DetailDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f090053

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/videoplayer/DetailDialog;->mHolder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    iget-wide v4, v4, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDuration:J

    invoke-static {v4, v5}, Lcom/mediatek/videoplayer/MtkUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/videoplayer/DetailDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f090050

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/videoplayer/DetailDialog;->mHolder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    iget-wide v4, v4, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mDateTaken:J

    invoke-static {v4, v5}, Lcom/mediatek/videoplayer/MtkUtils;->localTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/mediatek/videoplayer/DetailDialog;->mFileSizeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/videoplayer/DetailDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f090052

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/videoplayer/DetailDialog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/videoplayer/DetailDialog;->mHolder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    iget-wide v5, v5, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mFileSize:J

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/mediatek/videoplayer/DetailDialog;->mContext:Landroid/content/Context;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    :goto_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 108
    return-void

    .line 105
    :cond_0
    const-string v0, "DetailDialog"

    const-string v1, "onCreate() mView is null"

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
