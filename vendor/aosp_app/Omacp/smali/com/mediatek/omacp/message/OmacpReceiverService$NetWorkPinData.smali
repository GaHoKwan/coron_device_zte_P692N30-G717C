.class Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;
.super Ljava/lang/Object;
.source "OmacpReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omacp/message/OmacpReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetWorkPinData"
.end annotation


# instance fields
.field private mMac:Ljava/lang/String;

.field private mSec:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/omacp/message/OmacpReceiverService;


# direct methods
.method private constructor <init>(Lcom/mediatek/omacp/message/OmacpReceiverService;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->this$0:Lcom/mediatek/omacp/message/OmacpReceiverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/omacp/message/OmacpReceiverService;Lcom/mediatek/omacp/message/OmacpReceiverService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;-><init>(Lcom/mediatek/omacp/message/OmacpReceiverService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->mMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->mSec:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->mSec:Ljava/lang/String;

    return-object p1
.end method
