.class public Lcom/mediatek/mms/ipmessage/GroupManager;
.super Landroid/content/ContextWrapper;
.source "GroupManager.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/GroupManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/GroupManager;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public getGroupIdList()[I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupIpMessageCount(J)I
    .locals 1
    .parameter "threadId"

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
