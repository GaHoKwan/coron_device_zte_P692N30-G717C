.class public Lcom/autonavi/xmgd/controls/GDBaseActivity;
.super Landroid/app/Activity;


# static fields
.field private static final SDK_2_3:I = 0x9

.field private static final SDK_3_0:I = 0xb

.field private static final SDK_4_0:I = 0xe


# instance fields
.field private mLockCount:I

.field private mOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected lockCurrentOrientation()I
    .locals 8

    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget v0, p0, Lcom/autonavi/xmgd/controls/GDBaseActivity;->mLockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/controls/GDBaseActivity;->mLockCount:I

    iget v0, p0, Lcom/autonavi/xmgd/controls/GDBaseActivity;->mLockCount:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/controls/GDBaseActivity;->mOrientation:I

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_7

    if-nez v0, :cond_2

    if-ne v1, v4, :cond_1

    invoke-virtual {p0, v5}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/autonavi/xmgd/controls/GDBaseActivity;->mLockCount:I

    return v0

    :cond_1
    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_4

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, v7}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_5

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v6}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    if-ne v1, v3, :cond_6

    invoke-virtual {p0, v3}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_6
    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v6}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    if-ne v0, v4, :cond_9

    :cond_8
    invoke-virtual {p0, v3}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v4}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected unlockCurrentOrientation()I
    .locals 2

    iget v0, p0, Lcom/autonavi/xmgd/controls/GDBaseActivity;->mLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/controls/GDBaseActivity;->mLockCount:I

    iget v0, p0, Lcom/autonavi/xmgd/controls/GDBaseActivity;->mLockCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/controls/GDBaseActivity;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->setRequestedOrientation(I)V

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/autonavi/xmgd/controls/GDBaseActivity;->mLockCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/controls/GDBaseActivity;->mLockCount:I

    iget v0, p0, Lcom/autonavi/xmgd/controls/GDBaseActivity;->mLockCount:I

    return v0
.end method
