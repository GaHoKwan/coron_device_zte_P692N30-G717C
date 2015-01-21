.class public Lcom/autonavi/xm/navigation/server/map/GPriorityCategory;
.super Ljava/lang/Object;


# instance fields
.field public bShow:Z

.field public lCategoryID:I

.field public nIndex:I

.field public szName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/map/GPriorityCategory;->nIndex:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/map/GPriorityCategory;->lCategoryID:I

    iput-boolean p3, p0, Lcom/autonavi/xm/navigation/server/map/GPriorityCategory;->bShow:Z

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/map/GPriorityCategory;->szName:Ljava/lang/String;

    return-void
.end method
