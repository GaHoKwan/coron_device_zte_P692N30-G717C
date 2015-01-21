.class Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;
.super Ljava/lang/Object;
.source "MultiForwardMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiForwardMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmsColumnsMap"
.end annotation


# instance fields
.field public mColumnMsgId:I

.field public mColumnSmsBody:I

.field public mColumnSmsIpMsgId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;->mColumnMsgId:I

    .line 188
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;->mColumnSmsBody:I

    .line 189
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;->mColumnSmsIpMsgId:I

    .line 190
    return-void
.end method
