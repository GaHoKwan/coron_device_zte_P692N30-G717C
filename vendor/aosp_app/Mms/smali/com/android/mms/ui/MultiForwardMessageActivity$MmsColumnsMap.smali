.class Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;
.super Ljava/lang/Object;
.source "MultiForwardMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiForwardMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsColumnsMap"
.end annotation


# instance fields
.field public mColumnMmsDate:I

.field public mColumnMmsDateSent:I

.field public mColumnMmsDeliveryReport:I

.field public mColumnMmsLocked:I

.field public mColumnMmsMessageBox:I

.field public mColumnMmsMessageType:I

.field public mColumnMmsRead:I

.field public mColumnMmsReadReport:I

.field public mColumnMmsServiceCenter:I

.field public mColumnMmsSimId:I

.field public mColumnMmsStatus:I

.field public mColumnMmsSubject:I

.field public mColumnMmsSubjectCharset:I

.field public mColumnMsgId:I

.field public mColumnThreadId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMsgId:I

    .line 233
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnThreadId:I

    .line 234
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsSubject:I

    .line 235
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsSubjectCharset:I

    .line 236
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsDate:I

    .line 237
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsRead:I

    .line 238
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsMessageType:I

    .line 239
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsMessageBox:I

    .line 240
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsDeliveryReport:I

    .line 241
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsReadReport:I

    .line 242
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsLocked:I

    .line 243
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsSimId:I

    .line 244
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsServiceCenter:I

    .line 246
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsStatus:I

    .line 247
    return-void
.end method
