.class public final Lcom/mediatek/mms/ipmessage/IpMessageConsts$ConnectionStatus;
.super Ljava/lang/Object;
.source "IpMessageConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mms/ipmessage/IpMessageConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionStatus"
.end annotation


# static fields
.field public static final STATUS_CONNECTED:I = 0x4

.field public static final STATUS_CONNECTING:I = 0x3

.field public static final STATUS_UNCONNECTED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
