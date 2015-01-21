.class public final Ltmsdkobf/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic N:Z

.field public static final cA:Ltmsdkobf/z;

.field public static final cB:Ltmsdkobf/z;

.field public static final cC:Ltmsdkobf/z;

.field public static final cD:Ltmsdkobf/z;

.field public static final cE:Ltmsdkobf/z;

.field public static final cF:Ltmsdkobf/z;

.field public static final cG:Ltmsdkobf/z;

.field public static final cH:Ltmsdkobf/z;

.field private static cn:[Ltmsdkobf/z;

.field public static final co:Ltmsdkobf/z;

.field public static final cp:Ltmsdkobf/z;

.field public static final cq:Ltmsdkobf/z;

.field public static final cr:Ltmsdkobf/z;

.field public static final cs:Ltmsdkobf/z;

.field public static final ct:Ltmsdkobf/z;

.field public static final cu:Ltmsdkobf/z;

.field public static final cv:Ltmsdkobf/z;

.field public static final cw:Ltmsdkobf/z;

.field public static final cx:Ltmsdkobf/z;

.field public static final cy:Ltmsdkobf/z;

.field public static final cz:Ltmsdkobf/z;


# instance fields
.field private aW:I

.field private aX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    const-class v0, Ltmsdkobf/z;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ltmsdkobf/z;->N:Z

    .line 11
    const/16 v0, 0x14

    new-array v0, v0, [Ltmsdkobf/z;

    sput-object v0, Ltmsdkobf/z;->cn:[Ltmsdkobf/z;

    .line 16
    new-instance v0, Ltmsdkobf/z;

    const-string v3, "ESP_NONE"

    invoke-direct {v0, v2, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->co:Ltmsdkobf/z;

    .line 18
    new-instance v0, Ltmsdkobf/z;

    const/16 v2, 0x65

    const-string v3, "ESP_Symbian_V3"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cp:Ltmsdkobf/z;

    .line 20
    new-instance v0, Ltmsdkobf/z;

    const/4 v1, 0x2

    const/16 v2, 0x66

    const-string v3, "ESP_Symbian_V5"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cq:Ltmsdkobf/z;

    .line 22
    new-instance v0, Ltmsdkobf/z;

    const/4 v1, 0x3

    const/16 v2, 0x67

    const-string v3, "ESP_Symbian_V2"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cr:Ltmsdkobf/z;

    .line 24
    new-instance v0, Ltmsdkobf/z;

    const/4 v1, 0x4

    const/16 v2, 0x68

    const-string v3, "ESP_Symbian_3"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cs:Ltmsdkobf/z;

    .line 26
    new-instance v0, Ltmsdkobf/z;

    const/4 v1, 0x5

    const/16 v2, 0xc9

    const-string v3, "ESP_Android_General"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->ct:Ltmsdkobf/z;

    .line 28
    new-instance v0, Ltmsdkobf/z;

    const/4 v1, 0x6

    const/16 v2, 0xca

    const-string v3, "ESP_Android_Pad"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cu:Ltmsdkobf/z;

    .line 30
    new-instance v0, Ltmsdkobf/z;

    const/4 v1, 0x7

    const/16 v2, 0xcb

    const-string v3, "ESP_Android_HD"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cv:Ltmsdkobf/z;

    .line 32
    new-instance v0, Ltmsdkobf/z;

    const/16 v1, 0x8

    const/16 v2, 0x12d

    const-string v3, "ESP_Iphone_General"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cw:Ltmsdkobf/z;

    .line 34
    new-instance v0, Ltmsdkobf/z;

    const/16 v1, 0x9

    const/16 v2, 0x12e

    const-string v3, "ESP_Ipad"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cx:Ltmsdkobf/z;

    .line 36
    new-instance v0, Ltmsdkobf/z;

    const/16 v1, 0xa

    const/16 v2, 0x12f

    const-string v3, "ESP_Ipod"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cy:Ltmsdkobf/z;

    .line 38
    new-instance v0, Ltmsdkobf/z;

    const/16 v1, 0xb

    const/16 v2, 0x191

    const-string v3, "ESP_Kjava_General"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cz:Ltmsdkobf/z;

    .line 40
    new-instance v0, Ltmsdkobf/z;

    const/16 v1, 0xc

    const/16 v2, 0x192

    const-string v3, "ESP_NK_Kjava_General"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cA:Ltmsdkobf/z;

    .line 42
    new-instance v0, Ltmsdkobf/z;

    const/16 v1, 0xd

    const/16 v2, 0x1f5

    const-string v3, "ESP_Server_General"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cB:Ltmsdkobf/z;

    .line 44
    new-instance v0, Ltmsdkobf/z;

    const/16 v1, 0xe

    const/16 v2, 0x259

    const-string v3, "ESP_WinPhone_General"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cC:Ltmsdkobf/z;

    .line 46
    new-instance v0, Ltmsdkobf/z;

    const/16 v1, 0xf

    const/16 v2, 0x25a

    const-string v3, "ESP_WinPhone_Tablet"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cD:Ltmsdkobf/z;

    .line 48
    new-instance v0, Ltmsdkobf/z;

    const/16 v1, 0x10

    const/16 v2, 0x2bd

    const-string v3, "ESP_MTK_General"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cE:Ltmsdkobf/z;

    .line 50
    new-instance v0, Ltmsdkobf/z;

    const/16 v1, 0x11

    const/16 v2, 0x321

    const-string v3, "ESP_BB_General"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cF:Ltmsdkobf/z;

    .line 52
    new-instance v0, Ltmsdkobf/z;

    const/16 v1, 0x12

    const/16 v2, 0x385

    const-string v3, "ESP_PC_WindowsGeneral"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cG:Ltmsdkobf/z;

    .line 54
    new-instance v0, Ltmsdkobf/z;

    const/16 v1, 0x13

    const/16 v2, 0x386

    const-string v3, "ESP_END"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/z;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/z;->cH:Ltmsdkobf/z;

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
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Ltmsdkobf/z;->aX:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Ltmsdkobf/z;->aX:Ljava/lang/String;

    .line 95
    iput p2, p0, Ltmsdkobf/z;->aW:I

    .line 96
    sget-object v0, Ltmsdkobf/z;->cn:[Ltmsdkobf/z;

    aput-object p0, v0, p1

    .line 97
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Ltmsdkobf/z;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Ltmsdkobf/z;->aW:I

    return v0
.end method
