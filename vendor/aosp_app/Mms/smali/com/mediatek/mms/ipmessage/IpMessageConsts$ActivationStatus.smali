.class public final Lcom/mediatek/mms/ipmessage/IpMessageConsts$ActivationStatus;
.super Ljava/lang/Object;
.source "IpMessageConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mms/ipmessage/IpMessageConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivationStatus"
.end annotation


# static fields
.field public static final ACTION_ACTIVATION_STATUS:Ljava/lang/String; = "com.mediatek.mms.ipmessage.activationStatus"

.field public static final ACTIVATED:I = 0x3

.field public static final ACTIVATING:I = 0x1

.field public static final FAILED_TO_ACTIVATE:I = -0x1

.field public static final NOT_ACTIVATED:I = 0x0

.field public static final WAITING_INPUT_NUMBER:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
