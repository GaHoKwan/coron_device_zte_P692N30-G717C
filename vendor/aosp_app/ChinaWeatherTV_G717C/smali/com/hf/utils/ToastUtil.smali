.class public Lcom/hf/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getToast(Landroid/content/Context;I)Landroid/widget/Toast;
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 22
    sget-object v0, Lcom/hf/utils/ToastUtil;->sContext:Landroid/content/Context;

    if-ne v0, p0, :cond_0

    .line 23
    sget-object v0, Lcom/hf/utils/ToastUtil;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 24
    sget-object v0, Lcom/hf/utils/ToastUtil;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 30
    :goto_0
    sget-object v0, Lcom/hf/utils/ToastUtil;->sToast:Landroid/widget/Toast;

    return-object v0

    .line 26
    :cond_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/hf/utils/ToastUtil;->sToast:Landroid/widget/Toast;

    .line 27
    sput-object p0, Lcom/hf/utils/ToastUtil;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 10
    sget-object v0, Lcom/hf/utils/ToastUtil;->sContext:Landroid/content/Context;

    if-ne v0, p0, :cond_0

    .line 11
    sget-object v0, Lcom/hf/utils/ToastUtil;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 12
    sget-object v0, Lcom/hf/utils/ToastUtil;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 18
    :goto_0
    sget-object v0, Lcom/hf/utils/ToastUtil;->sToast:Landroid/widget/Toast;

    return-object v0

    .line 14
    :cond_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/hf/utils/ToastUtil;->sToast:Landroid/widget/Toast;

    .line 15
    sput-object p0, Lcom/hf/utils/ToastUtil;->sContext:Landroid/content/Context;

    goto :goto_0
.end method
