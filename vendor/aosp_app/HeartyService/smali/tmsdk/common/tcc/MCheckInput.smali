.class public Ltmsdk/common/tcc/MCheckInput;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHECK_INPUT_SENDER:I = 0x1

.field public static final CHECK_INPUT_SMS:I = 0x2

.field public static final SMS_IN:I = 0x0

.field public static final SMS_OUT:I = 0x1

.field public static final SMS_TYPE_COLOR:I = 0x1

.field public static final SMS_TYPE_COMMON:I = 0x0

.field public static final SMS_TYPE_WAP_PUSH:I = 0x2


# instance fields
.field public checkFlag:I

.field public sender:Ljava/lang/String;

.field public sms:Ljava/lang/String;

.field public smsInOut:I

.field public smsType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .parameter "sender"
    .parameter "sms"
    .parameter "checkFlag"
    .parameter "smsType"
    .parameter "smsInOut"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    iput-object p1, p0, Ltmsdk/common/tcc/MCheckInput;->sender:Ljava/lang/String;

    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ""

    .end local p2
    :cond_1
    iput-object p2, p0, Ltmsdk/common/tcc/MCheckInput;->sms:Ljava/lang/String;

    .line 51
    iput p3, p0, Ltmsdk/common/tcc/MCheckInput;->checkFlag:I

    .line 52
    iput p4, p0, Ltmsdk/common/tcc/MCheckInput;->smsType:I

    .line 53
    iput p5, p0, Ltmsdk/common/tcc/MCheckInput;->smsInOut:I

    .line 54
    return-void
.end method
