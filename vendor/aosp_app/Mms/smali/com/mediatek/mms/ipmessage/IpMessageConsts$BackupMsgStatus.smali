.class public final Lcom/mediatek/mms/ipmessage/IpMessageConsts$BackupMsgStatus;
.super Ljava/lang/Object;
.source "IpMessageConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mms/ipmessage/IpMessageConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackupMsgStatus"
.end annotation


# static fields
.field public static final ACTION_BACKUP_MSG_STATUS:Ljava/lang/String; = "com.mediatek.mms.ipmessage.backupMsgStatus"

.field public static final FAILED:I = 0x2

.field public static final STARTING:I = 0x0

.field public static final UPLOADING:I = 0x1

.field public static final UPLOADING_PERCENTAGE:Ljava/lang/String; = "uploadingPercentage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
