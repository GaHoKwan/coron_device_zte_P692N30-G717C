.class Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
.super Ljava/lang/Object;
.source "PhoneStatesMgrService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/CellConnService/PhoneStatesMgrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestItem"
.end annotation


# instance fields
.field mICallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback;

.field mReqSlot:I

.field mReqType:I

.field final synthetic this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;


# direct methods
.method constructor <init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)V
    .locals 1
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->mReqSlot:I

    .line 926
    const/16 v0, 0x12c

    iput v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->mReqType:I

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->mICallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback;

    .line 928
    return-void
.end method

.method constructor <init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;IILcom/mediatek/CellConnService/IPhoneStatesCallback;)V
    .locals 0
    .parameter
    .parameter "reqSlot"
    .parameter "reqType"
    .parameter "iCallback"

    .prologue
    .line 930
    iput-object p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    iput p2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->mReqSlot:I

    .line 932
    iput p3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->mReqType:I

    .line 933
    iput-object p4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->mICallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback;

    .line 934
    return-void
.end method


# virtual methods
.method getCallback()Lcom/mediatek/CellConnService/IPhoneStatesCallback;
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->mICallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback;

    if-nez v0, :cond_0

    .line 946
    const-string v0, "PhoneStatesMgrService"

    const-string v1, "RequestItem callback interface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->mICallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback;

    return-object v0
.end method

.method getReqSlot()I
    .locals 1

    .prologue
    .line 937
    iget v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->mReqSlot:I

    return v0
.end method

.method getReqType()I
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->mReqType:I

    return v0
.end method
