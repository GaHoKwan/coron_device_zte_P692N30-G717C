.class public final Lcom/mediatek/mms/ipmessage/IpMessageConsts$ContactStatus;
.super Ljava/lang/Object;
.source "IpMessageConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mms/ipmessage/IpMessageConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactStatus"
.end annotation


# static fields
.field public static final CONTACT_UPDATE:Ljava/lang/String; = "com.mediatek.mms.ipmessage.contactUpdate"

.field public static final OFFLINE:I = 0x0

.field public static final ONLINE:I = 0x1

.field public static final RECORDING:I = 0x4

.field public static final SKETCHING:I = 0x6

.field public static final STATUSCOUNT:I = 0x8

.field public static final STOP_RECORDING:I = 0x5

.field public static final STOP_SKETCHING:I = 0x7

.field public static final STOP_TYPING:I = 0x3

.field public static final TYPING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
