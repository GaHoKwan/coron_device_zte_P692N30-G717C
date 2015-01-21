.class public Lcom/autonavi/xm/navigation/server/GTime;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public hour:B

.field public minute:B

.field public second:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BBB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/autonavi/xm/navigation/server/GTime;->hour:B

    iput-byte p2, p0, Lcom/autonavi/xm/navigation/server/GTime;->minute:B

    iput-byte p3, p0, Lcom/autonavi/xm/navigation/server/GTime;->second:B

    return-void
.end method
