.class Lcom/android/music/MusicDialog;
.super Landroid/app/AlertDialog;
.source "MusicDialog.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mSearchKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "view"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/android/music/MusicDialog$1;

    invoke-direct {v0, p0}, Lcom/android/music/MusicDialog$1;-><init>(Lcom/android/music/MusicDialog;)V

    iput-object v0, p0, Lcom/android/music/MusicDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 41
    new-instance v0, Lcom/android/music/MusicDialog$2;

    invoke-direct {v0, p0}, Lcom/android/music/MusicDialog$2;-><init>(Lcom/android/music/MusicDialog;)V

    iput-object v0, p0, Lcom/android/music/MusicDialog;->mSearchKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 60
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/music/MusicDialog;->mActivity:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Lcom/android/music/MusicDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 62
    iput-object p3, p0, Lcom/android/music/MusicDialog;->mView:Landroid/view/View;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/MusicDialog;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/music/MusicDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getNeutralButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 113
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 105
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/music/MusicDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/music/MusicDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/music/MusicDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 79
    return-void
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 97
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/music/MusicDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 98
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 89
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/music/MusicDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 90
    return-void
.end method

.method public setSearchKeyListener()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/music/MusicDialog;->mSearchKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 83
    return-void
.end method
