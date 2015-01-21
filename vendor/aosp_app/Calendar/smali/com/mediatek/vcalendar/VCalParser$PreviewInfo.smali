.class public Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;
.super Ljava/lang/Object;
.source "VCalParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vcalendar/VCalParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewInfo"
.end annotation


# instance fields
.field private mEventsCnt:I

.field private mFirstEventDuration:Ljava/lang/String;

.field private mFirstEventOrganizer:Ljava/lang/String;

.field private mFirstEventSummary:Ljava/lang/String;

.field private mFisrtEventStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 260
    iget v0, p0, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mEventsCnt:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 260
    iput p1, p0, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mEventsCnt:I

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mFirstEventSummary:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mFirstEventOrganizer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 260
    iput-wide p1, p0, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mFisrtEventStartTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mFirstEventDuration:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getEventsCnt()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mEventsCnt:I

    return v0
.end method

.method public getFirstEventDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mFirstEventDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstEventOrganizer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mFirstEventOrganizer:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstEventStartTime()J
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mFisrtEventStartTime:J

    return-wide v0
.end method

.method public getFirstEventSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mFirstEventSummary:Ljava/lang/String;

    return-object v0
.end method
