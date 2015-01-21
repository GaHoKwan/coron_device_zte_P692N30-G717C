.class public final Lcom/mediatek/mms/ipmessage/IpMessageConsts$DownloadAttachStatus;
.super Ljava/lang/Object;
.source "IpMessageConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mms/ipmessage/IpMessageConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadAttachStatus"
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_ATTACH_STATUS:Ljava/lang/String; = "com.mediatek.mms.ipmessage.downloadAttachStatus"

.field public static final DONE:I = 0x2

.field public static final DOWNLOADING:I = 0x1

.field public static final DOWNLOAD_MSG_ID:Ljava/lang/String; = "DownloadMsgId"

.field public static final DOWNLOAD_MSG_STATUS:Ljava/lang/String; = "DownloadMsgStatus"

.field public static final DOWNLOAD_PERCENTAGE:Ljava/lang/String; = "DownloadPercentage"

.field public static final FAILED:I = -0x1

.field public static final STARTING:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
