.class public Ltmsdk/common/module/numbermarker/NumberMarkEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CLIENT_LOGIC_BLACK_LIST:I

.field public static CLIENT_LOGIC_MAX:I

.field public static CLIENT_LOGIC_MIN:I

.field public static TAG_TYPE_CHEAT:I

.field public static TAG_TYPE_HOUSE_AGT:I

.field public static TAG_TYPE_INSURANCE:I

.field public static TAG_TYPE_MAX:I

.field public static TAG_TYPE_NONE:I

.field public static TAG_TYPE_OTHER:I

.field public static TAG_TYPE_SALES:I

.field public static TEL_TYPE_MAX:I

.field public static TEL_TYPE_MIN:I

.field public static TEL_TYPE_MISS_CALL:I

.field public static TEL_TYPE_RING_ONE_SOUND:I

.field public static TEL_TYPE_USER_CANCEL:I

.field public static TEL_TYPE_USER_HANG_UP:I

.field public static USER_ACTION_ADD_TO_WHITE:I

.field public static USER_ACTION_AUTO_RECOVER:I

.field public static USER_ACTION_AUTO_RECOVER2:I

.field public static USER_ACTION_AUTO_RECOVER3:I

.field public static USER_ACTION_DOUBT_SENDER2BLACK:I

.field public static USER_ACTION_DOUBT_SENDER2CONTACT:I

.field public static USER_ACTION_DOUBT_SENDER2WHITE:I

.field public static USER_ACTION_IMPEACH:I

.field public static USER_ACTION_IMPEACH_AUTO_PROMPT:I

.field public static USER_ACTION_IMPEACH_SYSTEM:I

.field public static USER_ACTION_INTERCEPT2RECOVER:I

.field public static USER_ACTION_INTERCEPT_SENDER2BLACK:I

.field public static USER_ACTION_INTERCEPT_SENDER2CONTACT:I

.field public static USER_ACTION_INTERCEPT_SENDER2WHITE:I

.field public static USER_ACTION_MAX:I

.field public static USER_ACTION_MIN:I

.field public static USER_ACTION_MOVE2FOLDER:I

.field public static USER_ACTION_NOCHARGE_SENDER:I

.field public static USER_ACTION_NOCHARGE_SMS:I

.field public static USER_ACTION_PASS_SENDER2BLACK:I

.field public static USER_ACTION_PHONE_DEL:I

.field public static USER_ACTION_SENDER2BLACK:I

.field public static USER_ACTION_SENDER2CONTACT:I

.field public static USER_ACTION_USER_REPORT_TELTAG:I

.field public static USER_ACTION_WEB_DEL:I


# instance fields
.field public calltime:I

.field public clientlogic:I

.field public phonenum:Ljava/lang/String;

.field public tagtype:I

.field public talktime:I

.field public teltype:I

.field public useraction:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 13
    const/16 v0, 0x36

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TAG_TYPE_CHEAT:I

    .line 17
    const/16 v0, 0x33

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TAG_TYPE_HOUSE_AGT:I

    .line 21
    const/16 v0, 0x34

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TAG_TYPE_INSURANCE:I

    .line 22
    const/16 v0, 0x37

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TAG_TYPE_MAX:I

    .line 26
    sput v1, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TAG_TYPE_NONE:I

    .line 30
    const/16 v0, 0x32

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TAG_TYPE_OTHER:I

    .line 34
    const/16 v0, 0x35

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TAG_TYPE_SALES:I

    .line 36
    const/4 v0, 0x5

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TEL_TYPE_MAX:I

    .line 37
    sput v1, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TEL_TYPE_MIN:I

    .line 41
    sput v4, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TEL_TYPE_MISS_CALL:I

    .line 45
    sput v2, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TEL_TYPE_RING_ONE_SOUND:I

    .line 49
    sput v3, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TEL_TYPE_USER_CANCEL:I

    .line 53
    sput v5, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TEL_TYPE_USER_HANG_UP:I

    .line 55
    const/16 v0, 0xf

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_ADD_TO_WHITE:I

    .line 56
    const/16 v0, 0x12

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_AUTO_RECOVER:I

    .line 57
    const/16 v0, 0x15

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_AUTO_RECOVER2:I

    .line 58
    const/16 v0, 0x16

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_AUTO_RECOVER3:I

    .line 59
    const/4 v0, 0x5

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_DOUBT_SENDER2BLACK:I

    .line 60
    const/4 v0, 0x6

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_DOUBT_SENDER2CONTACT:I

    .line 61
    const/4 v0, 0x7

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_DOUBT_SENDER2WHITE:I

    .line 62
    const/16 v0, 0xb

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_IMPEACH:I

    .line 63
    const/16 v0, 0x14

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_IMPEACH_AUTO_PROMPT:I

    .line 64
    const/16 v0, 0x13

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_IMPEACH_SYSTEM:I

    .line 65
    const/16 v0, 0xc

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_INTERCEPT2RECOVER:I

    .line 66
    const/16 v0, 0xa

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_INTERCEPT_SENDER2BLACK:I

    .line 67
    const/16 v0, 0x8

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_INTERCEPT_SENDER2CONTACT:I

    .line 68
    const/16 v0, 0x9

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_INTERCEPT_SENDER2WHITE:I

    .line 69
    const/16 v0, 0x18

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_MAX:I

    .line 70
    sput v1, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_MIN:I

    .line 71
    sput v4, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_MOVE2FOLDER:I

    .line 72
    const/16 v0, 0x11

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_NOCHARGE_SENDER:I

    .line 73
    const/16 v0, 0x10

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_NOCHARGE_SMS:I

    .line 74
    sput v5, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_PASS_SENDER2BLACK:I

    .line 75
    sput v2, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_PHONE_DEL:I

    .line 76
    const/16 v0, 0xd

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_SENDER2BLACK:I

    .line 77
    const/16 v0, 0xe

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_SENDER2CONTACT:I

    .line 81
    const/16 v0, 0x17

    sput v0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_USER_REPORT_TELTAG:I

    .line 82
    sput v3, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_WEB_DEL:I

    .line 84
    sput v1, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->CLIENT_LOGIC_MIN:I

    .line 85
    sput v2, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->CLIENT_LOGIC_BLACK_LIST:I

    .line 86
    sput v3, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->CLIENT_LOGIC_MAX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->phonenum:Ljava/lang/String;

    .line 90
    sget-object v0, Ltmsdkobf/ad;->dd:Ltmsdkobf/ad;

    invoke-virtual {v0}, Ltmsdkobf/ad;->value()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->useraction:I

    .line 92
    sget-object v0, Ltmsdkobf/ab;->cN:Ltmsdkobf/ab;

    invoke-virtual {v0}, Ltmsdkobf/ab;->value()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->teltype:I

    .line 94
    iput v1, p0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->talktime:I

    .line 96
    iput v1, p0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->calltime:I

    .line 98
    sget-object v0, Ltmsdkobf/aa;->cJ:Ltmsdkobf/aa;

    invoke-virtual {v0}, Ltmsdkobf/aa;->value()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->clientlogic:I

    .line 100
    iput v1, p0, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->tagtype:I

    return-void
.end method
