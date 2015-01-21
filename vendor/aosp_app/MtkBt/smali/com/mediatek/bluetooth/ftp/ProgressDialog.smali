.class public Lcom/mediatek/bluetooth/ftp/ProgressDialog;
.super Landroid/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final MODE_BASE:I = 0x0

.field public static final MODE_MULTIPLE:I = 0x4

.field public static final MODE_SIMPLE:I = 0x1

.field public static final MODE_SINGLE_PERCENTAGE:I = 0x3

.field public static final MODE_SINGLE_TRANSFERRED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ProgressDialog"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIndeterminate:Z

.field private mMax:I

.field private mMessage:Ljava/lang/String;

.field private mMessageView:Landroid/widget/TextView;

.field private mMode:I

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressText:Landroid/widget/TextView;

.field private mProgressValue:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMode:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMessage:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMode:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMessage:Ljava/lang/String;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgressValue:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgressText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMax:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f090018

    const v5, 0x7f090011

    const/4 v4, 0x0

    .line 94
    new-instance v2, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;-><init>(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mHandler:Landroid/os/Handler;

    .line 116
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 117
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 118
    const v2, 0x7f030012

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 120
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 121
    iput-object v4, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgressText:Landroid/widget/TextView;

    .line 122
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 132
    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setIndeterminate(Z)V

    .line 133
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->updateUI()V

    .line 135
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 136
    return-void

    .line 125
    .end local v1           #view:Landroid/view/View;
    :cond_0
    const v2, 0x7f030011

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 126
    .restart local v1       #view:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 127
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 128
    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgressText:Landroid/widget/TextView;

    .line 129
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .parameter "indeterminate"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 157
    :cond_0
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mIndeterminate:Z

    .line 158
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 144
    iput p1, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMax:I

    .line 145
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->updateUI()V

    .line 146
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMessage:Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->updateUI()V

    .line 151
    return-void
.end method

.method public setProgress(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgressValue:J

    .line 140
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->updateUI()V

    .line 141
    return-void
.end method

.method public setProgressMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 161
    iput p1, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMode:I

    .line 162
    return-void
.end method
