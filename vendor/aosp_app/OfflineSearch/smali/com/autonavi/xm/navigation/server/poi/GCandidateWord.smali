.class public Lcom/autonavi/xm/navigation/server/poi/GCandidateWord;
.super Ljava/lang/Object;


# instance fields
.field public Length:B

.field public Reserved1:B

.field public Reserved2:S

.field public szWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BBSLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateWord;->Length:B

    iput-byte p2, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateWord;->Reserved1:B

    iput-short p3, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateWord;->Reserved2:S

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateWord;->szWord:Ljava/lang/String;

    return-void
.end method
