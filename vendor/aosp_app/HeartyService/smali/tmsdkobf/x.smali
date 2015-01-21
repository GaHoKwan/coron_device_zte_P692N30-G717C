.class public final Ltmsdkobf/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic N:Z

.field private static bC:[Ltmsdkobf/x;

.field public static final bD:Ltmsdkobf/x;

.field public static final bE:Ltmsdkobf/x;

.field public static final bF:Ltmsdkobf/x;

.field public static final bG:Ltmsdkobf/x;

.field public static final bH:Ltmsdkobf/x;

.field public static final bI:Ltmsdkobf/x;

.field public static final bJ:Ltmsdkobf/x;

.field public static final bK:Ltmsdkobf/x;

.field public static final bL:Ltmsdkobf/x;

.field public static final bM:Ltmsdkobf/x;

.field public static final bN:Ltmsdkobf/x;

.field public static final bO:Ltmsdkobf/x;

.field public static final bP:Ltmsdkobf/x;

.field public static final bQ:Ltmsdkobf/x;

.field public static final bR:Ltmsdkobf/x;

.field public static final bS:Ltmsdkobf/x;

.field public static final bT:Ltmsdkobf/x;

.field public static final bU:Ltmsdkobf/x;

.field public static final bV:Ltmsdkobf/x;

.field public static final bW:Ltmsdkobf/x;

.field public static final bX:Ltmsdkobf/x;

.field public static final bY:Ltmsdkobf/x;

.field public static final bZ:Ltmsdkobf/x;

.field public static final ca:Ltmsdkobf/x;

.field public static final cb:Ltmsdkobf/x;

.field public static final cc:Ltmsdkobf/x;

.field public static final cd:Ltmsdkobf/x;

.field public static final ce:Ltmsdkobf/x;

.field public static final cf:Ltmsdkobf/x;

.field public static final cg:Ltmsdkobf/x;


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
    const-class v0, Ltmsdkobf/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ltmsdkobf/x;->N:Z

    .line 11
    const/16 v0, 0x1e

    new-array v0, v0, [Ltmsdkobf/x;

    sput-object v0, Ltmsdkobf/x;->bC:[Ltmsdkobf/x;

    .line 16
    new-instance v0, Ltmsdkobf/x;

    const-string v3, "EP_None"

    invoke-direct {v0, v2, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bD:Ltmsdkobf/x;

    .line 18
    new-instance v0, Ltmsdkobf/x;

    const-string v2, "EP_Secure"

    invoke-direct {v0, v1, v1, v2}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bE:Ltmsdkobf/x;

    .line 20
    new-instance v0, Ltmsdkobf/x;

    const-string v1, "EP_Phonebook"

    invoke-direct {v0, v4, v4, v1}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bF:Ltmsdkobf/x;

    .line 22
    new-instance v0, Ltmsdkobf/x;

    const-string v1, "EP_Pim"

    invoke-direct {v0, v5, v5, v1}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bG:Ltmsdkobf/x;

    .line 24
    new-instance v0, Ltmsdkobf/x;

    const-string v1, "EP_QQPhonebook"

    invoke-direct {v0, v6, v6, v1}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bH:Ltmsdkobf/x;

    .line 26
    new-instance v0, Ltmsdkobf/x;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "EP_QZone"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bI:Ltmsdkobf/x;

    .line 28
    new-instance v0, Ltmsdkobf/x;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "EP_MobileQQ_Secure"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bJ:Ltmsdkobf/x;

    .line 30
    new-instance v0, Ltmsdkobf/x;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "EP_QQBrowse_Secure"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bK:Ltmsdkobf/x;

    .line 32
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "EP_XiaoYou"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bL:Ltmsdkobf/x;

    .line 34
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "EP_Secure_Eng"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bM:Ltmsdkobf/x;

    .line 36
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-string v3, "EP_WBlog"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bN:Ltmsdkobf/x;

    .line 38
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0xb

    const/16 v2, 0xb

    const-string v3, "EP_Phonebook_Eng"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bO:Ltmsdkobf/x;

    .line 40
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0xc

    const/16 v2, 0xc

    const-string v3, "EP_AppAssistant"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bP:Ltmsdkobf/x;

    .line 42
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0xd

    const/16 v2, 0xd

    const-string v3, "EP_Secure_SDK"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bQ:Ltmsdkobf/x;

    .line 44
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0xe

    const/16 v2, 0xe

    const-string v3, "EP_KingRoot"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bR:Ltmsdkobf/x;

    .line 46
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0xf

    const/16 v2, 0xf

    const-string v3, "EP_Secure_SDK_Pay"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bS:Ltmsdkobf/x;

    .line 48
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x10

    const/16 v2, 0x10

    const-string v3, "EP_Secure_Jailbreak"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bT:Ltmsdkobf/x;

    .line 50
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x11

    const/16 v2, 0x11

    const-string v3, "EP_KingUser"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bU:Ltmsdkobf/x;

    .line 52
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x12

    const/16 v2, 0x12

    const-string v3, "EP_Pim_Pro"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bV:Ltmsdkobf/x;

    .line 54
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x13

    const/16 v2, 0x13

    const-string v3, "EP_Pim_Jailbreak"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bW:Ltmsdkobf/x;

    .line 56
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x14

    const/16 v2, 0x14

    const-string v3, "EP_PhonebookPro"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bX:Ltmsdkobf/x;

    .line 58
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x15

    const/16 v2, 0x15

    const-string v3, "EP_PowerManager"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bY:Ltmsdkobf/x;

    .line 60
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x16

    const/16 v2, 0x16

    const-string v3, "EP_BenchMark"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->bZ:Ltmsdkobf/x;

    .line 62
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x17

    const/16 v2, 0x17

    const-string v3, "EP_SecurePro_Enhance"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->ca:Ltmsdkobf/x;

    .line 64
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const-string v3, "EP_Pim_Eng"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->cb:Ltmsdkobf/x;

    .line 66
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x19

    const/16 v2, 0x19

    const-string v3, "EP_SMS_Fraud_Killer"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->cc:Ltmsdkobf/x;

    .line 68
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    const-string v3, "EP_King_SuperUser"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->cd:Ltmsdkobf/x;

    .line 70
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    const-string v3, "EP_Secure_SDK_Ign"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->ce:Ltmsdkobf/x;

    .line 72
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    const-string v3, "EP_Tracker"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->cf:Ltmsdkobf/x;

    .line 74
    new-instance v0, Ltmsdkobf/x;

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    const-string v3, "EP_END"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/x;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/x;->cg:Ltmsdkobf/x;

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
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Ltmsdkobf/x;->aX:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Ltmsdkobf/x;->aX:Ljava/lang/String;

    .line 115
    iput p2, p0, Ltmsdkobf/x;->aW:I

    .line 116
    sget-object v0, Ltmsdkobf/x;->bC:[Ltmsdkobf/x;

    aput-object p0, v0, p1

    .line 117
    return-void
.end method

.method public static s(I)Ltmsdkobf/x;
    .locals 2
    .parameter "val"

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, __i:I
    :goto_0
    sget-object v1, Ltmsdkobf/x;->bC:[Ltmsdkobf/x;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 80
    sget-object v1, Ltmsdkobf/x;->bC:[Ltmsdkobf/x;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ltmsdkobf/x;->value()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 82
    sget-object v1, Ltmsdkobf/x;->bC:[Ltmsdkobf/x;

    aget-object v1, v1, v0

    .line 86
    :goto_1
    return-object v1

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    sget-boolean v1, Ltmsdkobf/x;->N:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 86
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static y(Ljava/lang/String;)Ltmsdkobf/x;
    .locals 2
    .parameter "val"

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, __i:I
    :goto_0
    sget-object v1, Ltmsdkobf/x;->bC:[Ltmsdkobf/x;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 93
    sget-object v1, Ltmsdkobf/x;->bC:[Ltmsdkobf/x;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ltmsdkobf/x;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    sget-object v1, Ltmsdkobf/x;->bC:[Ltmsdkobf/x;

    aget-object v1, v1, v0

    .line 99
    :goto_1
    return-object v1

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    sget-boolean v1, Ltmsdkobf/x;->N:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 99
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ltmsdkobf/x;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Ltmsdkobf/x;->aW:I

    return v0
.end method
