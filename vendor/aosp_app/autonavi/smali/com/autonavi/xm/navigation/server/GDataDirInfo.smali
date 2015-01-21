.class public Lcom/autonavi/xm/navigation/server/GDataDirInfo;
.super Ljava/lang/Object;


# instance fields
.field public bDel:I

.field public nDirType:I

.field public szDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/GDataDirInfo;->nDirType:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/GDataDirInfo;->bDel:I

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/GDataDirInfo;->szDir:Ljava/lang/String;

    return-void
.end method
