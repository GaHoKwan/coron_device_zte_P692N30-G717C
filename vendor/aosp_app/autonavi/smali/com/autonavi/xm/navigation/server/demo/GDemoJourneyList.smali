.class public Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyList;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfDemoJourney:I

.field public pDemoJourney:[Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyList;->nNumberOfDemoJourney:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyList;->pDemoJourney:[Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyInfo;

    return-void
.end method
