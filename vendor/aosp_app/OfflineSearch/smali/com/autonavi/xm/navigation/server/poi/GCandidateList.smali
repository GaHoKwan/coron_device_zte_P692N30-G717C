.class public Lcom/autonavi/xm/navigation/server/poi/GCandidateList;
.super Ljava/lang/Object;


# instance fields
.field public Flag:B

.field public NumberOfCandidate:S

.field public NumberOfPOI:S

.field public pCandidateChar:[Lcom/autonavi/xm/navigation/server/poi/GCandidateChar;

.field public pCandidateWord:[Lcom/autonavi/xm/navigation/server/poi/GCandidateWord;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SS[Lcom/autonavi/xm/navigation/server/poi/GCandidateChar;[Lcom/autonavi/xm/navigation/server/poi/GCandidateWord;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateList;->NumberOfCandidate:S

    iput-short p2, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateList;->NumberOfPOI:S

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateList;->pCandidateChar:[Lcom/autonavi/xm/navigation/server/poi/GCandidateChar;

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateList;->pCandidateWord:[Lcom/autonavi/xm/navigation/server/poi/GCandidateWord;

    iput-byte p5, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateList;->Flag:B

    return-void
.end method
