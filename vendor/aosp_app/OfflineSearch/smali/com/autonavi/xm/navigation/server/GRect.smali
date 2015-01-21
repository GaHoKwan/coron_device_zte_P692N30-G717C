.class public Lcom/autonavi/xm/navigation/server/GRect;
.super Ljava/lang/Object;


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/GRect;->left:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/GRect;->top:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/GRect;->right:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/GRect;->bottom:I

    return-void
.end method
