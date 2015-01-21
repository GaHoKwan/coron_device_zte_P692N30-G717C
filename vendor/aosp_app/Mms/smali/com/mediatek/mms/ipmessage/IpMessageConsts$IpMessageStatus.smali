.class public final Lcom/mediatek/mms/ipmessage/IpMessageConsts$IpMessageStatus;
.super Ljava/lang/Object;
.source "IpMessageConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mms/ipmessage/IpMessageConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpMessageStatus"
.end annotation


# static fields
.field public static final ACTION_MESSAGE_STATUS:Ljava/lang/String; = "com.mediatek.mms.ipmessage.messageStatus"

.field public static final DELIVERED:I = 0x5

.field public static final DRAFT:I = 0x7

.field public static final FAILED:I = 0x0

.field public static final INBOX:I = 0x8

.field public static final IP_MESSAGE_ID:Ljava/lang/String; = "com.mediatek.mms.ipmessage.IpMessageRecdId"

.field public static final MO_CANCEL:I = 0xf

.field public static final MO_INVITE:I = 0xb

.field public static final MO_REJECTED:I = 0xd

.field public static final MO_SENDING:I = 0xc

.field public static final MO_SENT:I = 0xe

.field public static final MT_CANCEL:I = 0x19

.field public static final MT_INVITED:I = 0x15

.field public static final MT_RECEIVED:I = 0x18

.field public static final MT_RECEIVING:I = 0x17

.field public static final MT_REJECT:I = 0x16

.field public static final NOT_DELIVERED:I = 0x4

.field public static final OUTBOX:I = 0x2

.field public static final OUTBOX_PENDING:I = 0x1

.field public static final SENT:I = 0x3

.field public static final VIEWED:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
