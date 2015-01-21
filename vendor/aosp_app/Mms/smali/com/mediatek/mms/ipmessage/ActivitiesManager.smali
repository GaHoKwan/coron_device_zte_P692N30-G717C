.class public Lcom/mediatek/mms/ipmessage/ActivitiesManager;
.super Landroid/content/ContextWrapper;
.source "ActivitiesManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Mms/ActivityManagerImpl"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/ActivitiesManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/ActivitiesManager;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    const-string v0, "Mms/ActivityManagerImpl"

    const-string v1, "ActivityManagerImpl start remote activity called."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
