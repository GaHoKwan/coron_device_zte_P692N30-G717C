.class public Lcom/mediatek/filemanager/utils/ToastHelper;
.super Ljava/lang/Object;
.source "ToastHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/utils/ToastHelper;->mToast:Landroid/widget/Toast;

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/mediatek/filemanager/utils/ToastHelper;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method


# virtual methods
.method public showToast(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/filemanager/utils/ToastHelper;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/mediatek/filemanager/utils/ToastHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/utils/ToastHelper;->mToast:Landroid/widget/Toast;

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/mediatek/filemanager/utils/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/utils/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/filemanager/utils/ToastHelper;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/mediatek/filemanager/utils/ToastHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/utils/ToastHelper;->mToast:Landroid/widget/Toast;

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/mediatek/filemanager/utils/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/utils/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
