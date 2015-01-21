.class public Lcom/android/mms/ui/MmsQuickContactBadge;
.super Landroid/widget/QuickContactBadge;
.source "MmsQuickContactBadge.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsGroupAvator:Z

.field private mThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p1, p0, Lcom/android/mms/ui/MmsQuickContactBadge;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-object p1, p0, Lcom/android/mms/ui/MmsQuickContactBadge;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput-object p1, p0, Lcom/android/mms/ui/MmsQuickContactBadge;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 75
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsQuickContactBadge;->mIsGroupAvator:Z

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->QUICK_CONTACT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, it:Landroid/content/Intent;
    const-string v1, "thread_id"

    iget-wide v2, p0, Lcom/android/mms/ui/MmsQuickContactBadge;->mThreadId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/android/mms/ui/MmsQuickContactBadge;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 82
    .end local v0           #it:Landroid/content/Intent;
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/QuickContactBadge;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setGroupAvator(Z)V
    .locals 0
    .parameter "isGroup"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsQuickContactBadge;->mIsGroupAvator:Z

    .line 68
    return-void
.end method

.method public setThreadId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/android/mms/ui/MmsQuickContactBadge;->mThreadId:J

    .line 72
    return-void
.end method
