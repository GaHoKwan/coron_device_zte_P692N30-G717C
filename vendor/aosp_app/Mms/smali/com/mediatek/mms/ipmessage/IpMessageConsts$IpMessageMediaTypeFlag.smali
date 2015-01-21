.class public final Lcom/mediatek/mms/ipmessage/IpMessageConsts$IpMessageMediaTypeFlag;
.super Ljava/lang/Object;
.source "IpMessageConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mms/ipmessage/IpMessageConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpMessageMediaTypeFlag"
.end annotation


# static fields
.field public static final ALL:I = 0x7f0

.field public static final CALENDAR:I = 0x400

.field public static final LOCATION:I = 0x80

.field public static final PICTURE:I = 0x10

.field public static final SKETCH:I = 0x100

.field public static final VCARD:I = 0x40

.field public static final VIDEO:I = 0x200

.field public static final VOICE:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
