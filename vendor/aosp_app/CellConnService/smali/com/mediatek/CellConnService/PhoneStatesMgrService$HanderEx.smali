.class Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;
.super Landroid/os/Handler;
.source "PhoneStatesMgrService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/CellConnService/PhoneStatesMgrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HanderEx"
.end annotation


# instance fields
.field private mRetryCount:I

.field final synthetic this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;


# direct methods
.method public constructor <init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    .line 1773
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1767
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;->mRetryCount:I

    .line 1774
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    .prologue
    .line 1769
    iget v0, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;->mRetryCount:I

    return v0
.end method

.method public setRetryCount(I)V
    .locals 0
    .parameter "retryCount"

    .prologue
    .line 1777
    iput p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$HanderEx;->mRetryCount:I

    .line 1778
    return-void
.end method
