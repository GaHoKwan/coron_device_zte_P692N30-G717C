.class public final Ltmsdkobf/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic N:Z

.field public static final dA:Ltmsdkobf/ad;

.field public static final dB:Ltmsdkobf/ad;

.field private static dc:[Ltmsdkobf/ad;

.field public static final dd:Ltmsdkobf/ad;

.field public static final de:Ltmsdkobf/ad;

.field public static final df:Ltmsdkobf/ad;

.field public static final dg:Ltmsdkobf/ad;

.field public static final dh:Ltmsdkobf/ad;

.field public static final di:Ltmsdkobf/ad;

.field public static final dj:Ltmsdkobf/ad;

.field public static final dk:Ltmsdkobf/ad;

.field public static final dl:Ltmsdkobf/ad;

.field public static final dm:Ltmsdkobf/ad;

.field public static final dn:Ltmsdkobf/ad;

.field public static final do:Ltmsdkobf/ad;

.field public static final dp:Ltmsdkobf/ad;

.field public static final dq:Ltmsdkobf/ad;

.field public static final dr:Ltmsdkobf/ad;

.field public static final ds:Ltmsdkobf/ad;

.field public static final dt:Ltmsdkobf/ad;

.field public static final du:Ltmsdkobf/ad;

.field public static final dv:Ltmsdkobf/ad;

.field public static final dw:Ltmsdkobf/ad;

.field public static final dx:Ltmsdkobf/ad;

.field public static final dy:Ltmsdkobf/ad;

.field public static final dz:Ltmsdkobf/ad;


# instance fields
.field private aW:I

.field private aX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    const-class v0, Ltmsdkobf/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ltmsdkobf/ad;->N:Z

    .line 11
    const/16 v0, 0x19

    new-array v0, v0, [Ltmsdkobf/ad;

    sput-object v0, Ltmsdkobf/ad;->dc:[Ltmsdkobf/ad;

    .line 16
    new-instance v0, Ltmsdkobf/ad;

    const-string v3, "EMUA_MIN"

    invoke-direct {v0, v2, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dd:Ltmsdkobf/ad;

    .line 18
    new-instance v0, Ltmsdkobf/ad;

    const-string v2, "EMUA_PHONE_DEL"

    invoke-direct {v0, v1, v1, v2}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->de:Ltmsdkobf/ad;

    .line 20
    new-instance v0, Ltmsdkobf/ad;

    const-string v1, "EMUA_WEB_DEL"

    invoke-direct {v0, v4, v4, v1}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->df:Ltmsdkobf/ad;

    .line 22
    new-instance v0, Ltmsdkobf/ad;

    const-string v1, "EMUA_MOVE2FOLDER"

    invoke-direct {v0, v5, v5, v1}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dg:Ltmsdkobf/ad;

    .line 24
    new-instance v0, Ltmsdkobf/ad;

    const-string v1, "EMUA_PASS_SENDER2BLACK"

    invoke-direct {v0, v6, v6, v1}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dh:Ltmsdkobf/ad;

    .line 26
    new-instance v0, Ltmsdkobf/ad;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "EMUA_DOUBT_SENDER2BLACK"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->di:Ltmsdkobf/ad;

    .line 28
    new-instance v0, Ltmsdkobf/ad;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "EMUA_DOUBT_SENDER2CONTACT"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dj:Ltmsdkobf/ad;

    .line 30
    new-instance v0, Ltmsdkobf/ad;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "EMUA_DOUBT_SENDER2WHITE"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dk:Ltmsdkobf/ad;

    .line 32
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "EMUA_INTERCEPT_SENDER2CONTACT"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dl:Ltmsdkobf/ad;

    .line 34
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "EMUA_INTERCEPT_SENDER2WHITE"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dm:Ltmsdkobf/ad;

    .line 36
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-string v3, "EMUA_INTERCEPT_SENDER2BLACK"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dn:Ltmsdkobf/ad;

    .line 38
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0xb

    const/16 v2, 0xb

    const-string v3, "EMUA_IMPEACH"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->do:Ltmsdkobf/ad;

    .line 40
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0xc

    const/16 v2, 0xc

    const-string v3, "EMUA_INTERCEPT2RECOVER"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dp:Ltmsdkobf/ad;

    .line 42
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0xd

    const/16 v2, 0xd

    const-string v3, "EMUA_SENDER2BLACK"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dq:Ltmsdkobf/ad;

    .line 44
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0xe

    const/16 v2, 0xe

    const-string v3, "EMUA_SENDER2CONTACT"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dr:Ltmsdkobf/ad;

    .line 46
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0xf

    const/16 v2, 0xf

    const-string v3, "EMUA_ADD_TO_WHITE"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->ds:Ltmsdkobf/ad;

    .line 48
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0x10

    const/16 v2, 0x10

    const-string v3, "EMUA_NOCHARGE_SMS"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dt:Ltmsdkobf/ad;

    .line 50
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0x11

    const/16 v2, 0x11

    const-string v3, "EMUA_NOCHARGE_SENDER"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->du:Ltmsdkobf/ad;

    .line 52
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0x12

    const/16 v2, 0x12

    const-string v3, "EMUA_AUTO_RECOVER"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dv:Ltmsdkobf/ad;

    .line 54
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0x13

    const/16 v2, 0x13

    const-string v3, "EMUA_IMPEACH_SYSTEM"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dw:Ltmsdkobf/ad;

    .line 56
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0x14

    const/16 v2, 0x14

    const-string v3, "EMUA_IMPEACH_AUTO_PROMPT"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dx:Ltmsdkobf/ad;

    .line 58
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0x15

    const/16 v2, 0x15

    const-string v3, "EMUA_AUTO_RECOVER2"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dy:Ltmsdkobf/ad;

    .line 60
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0x16

    const/16 v2, 0x16

    const-string v3, "EMUA_AUTO_RECOVER3"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dz:Ltmsdkobf/ad;

    .line 62
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0x17

    const/16 v2, 0x17

    const-string v3, "EMUA_USER_REPORT_TELTAG"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dA:Ltmsdkobf/ad;

    .line 64
    new-instance v0, Ltmsdkobf/ad;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const-string v3, "EMUA_MAX"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ad;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ad;->dB:Ltmsdkobf/ad;

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto/16 :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "val"
    .parameter "s"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Ltmsdkobf/ad;->aX:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Ltmsdkobf/ad;->aX:Ljava/lang/String;

    .line 105
    iput p2, p0, Ltmsdkobf/ad;->aW:I

    .line 106
    sget-object v0, Ltmsdkobf/ad;->dc:[Ltmsdkobf/ad;

    aput-object p0, v0, p1

    .line 107
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ltmsdkobf/ad;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Ltmsdkobf/ad;->aW:I

    return v0
.end method
