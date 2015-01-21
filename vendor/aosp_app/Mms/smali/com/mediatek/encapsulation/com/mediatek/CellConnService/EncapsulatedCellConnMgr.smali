.class public Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;
.super Ljava/lang/Object;
.source "EncapsulatedCellConnMgr.java"


# static fields
.field public static final FLAG_REQUEST_NOPREFER:I = 0x40000000

.field public static final FLAG_SUPPRESS_CONFIRMDLG:I = -0x80000000

.field public static final REQUEST_TYPE_FDN:I = 0x130

.field public static final REQUEST_TYPE_ROAMING:I = 0x132

.field public static final REQUEST_TYPE_SIMLOCK:I = 0x12e

.field public static final REQUEST_TYPE_UNKNOWN:I = 0x12c

.field public static final RESULT_ABORT:I = 0x2

.field public static final RESULT_EXCEPTION:I = 0x3

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_STATE_NORMAL:I = 0x4

.field public static final RESULT_UNKNOWN:I = -0x1

.field public static final RESULT_WAIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EncapsulatedCellConnMgr"


# instance fields
.field mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mPreferSlot:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v0}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v0, p1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 58
    return-void
.end method

.method public static resultToString(I)Ljava/lang/String;
    .locals 1
    .parameter "ret"

    .prologue
    .line 70
    invoke-static {p0}, Lcom/mediatek/CellConnService/CellConnMgr;->resultToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPreferSlot()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->getPreferSlot()I

    move-result v0

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    return v0
.end method

.method public handleCellConn(II)I
    .locals 1
    .parameter "slot"
    .parameter "reqType"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    move-result v0

    return v0
.end method

.method public handleCellConn(IILjava/lang/Runnable;)I
    .locals 1
    .parameter "slot"
    .parameter "reqType"
    .parameter "r"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I

    move-result v0

    return v0
.end method

.method public register(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0, p1}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 105
    return-void
.end method
