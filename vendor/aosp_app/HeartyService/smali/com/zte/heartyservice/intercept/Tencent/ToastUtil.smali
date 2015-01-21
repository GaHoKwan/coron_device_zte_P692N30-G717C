.class public abstract Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static lastShowTime:J

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->lastShowTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShowLongToast(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "textid"

    .prologue
    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 67
    return-void
.end method

.method public static ShowLongToast(Landroid/content/Context;IZ)V
    .locals 2
    .parameter "context"
    .parameter "textid"
    .parameter "allowToastQueue"

    .prologue
    .line 106
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 108
    return-void
.end method

.method public static ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "text"

    .prologue
    .line 70
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 71
    return-void
.end method

.method public static ShowLongToast(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "text"
    .parameter "allowToastQueue"

    .prologue
    .line 119
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, p2}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 120
    return-void
.end method

.method public static ShowShortToast(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "textid"

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 58
    return-void
.end method

.method public static ShowShortToast(Landroid/content/Context;IZ)V
    .locals 2
    .parameter "context"
    .parameter "textid"
    .parameter "allowToastQueue"

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 83
    return-void
.end method

.method public static ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v0, -0x1

    invoke-static {p0, v0, p1, v1, v1}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 62
    return-void
.end method

.method public static ShowShortToast(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "text"
    .parameter "allowToastQueue"

    .prologue
    .line 94
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, p2}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 95
    return-void
.end method

.method private static _showToast(Landroid/content/Context;ILjava/lang/String;IZ)V
    .locals 6
    .parameter "context"
    .parameter "textid"
    .parameter "text"
    .parameter "delay"
    .parameter "allowToastQueue"

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 22
    .local v0, currentTime:J
    if-nez p4, :cond_0

    sget-wide v2, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->lastShowTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 54
    :goto_0
    return-void

    .line 25
    :cond_0
    sput-wide v0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->lastShowTime:J

    .line 27
    sget-object v2, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_1

    .line 28
    sget-object v2, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 30
    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;

    invoke-direct {v3, p1, p0, p2, p3}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;-><init>(ILandroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    sput-object p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->mToast:Landroid/widget/Toast;

    return-object p0
.end method
