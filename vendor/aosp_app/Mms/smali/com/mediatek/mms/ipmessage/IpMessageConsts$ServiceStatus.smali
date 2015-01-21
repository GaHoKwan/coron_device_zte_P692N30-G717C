.class public final Lcom/mediatek/mms/ipmessage/IpMessageConsts$ServiceStatus;
.super Ljava/lang/Object;
.source "IpMessageConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mms/ipmessage/IpMessageConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceStatus"
.end annotation


# static fields
.field public static final ACTION_SERVICE_STATUS:Ljava/lang/String; = "com.mediatek.mms.ipmessage.serviceStatus"

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
