.class public Lorg/achartengine/util/BarChartFactory;
.super Ljava/lang/Object;
.source "BarChartFactory.java"


# static fields
.field private static MAX_NET_SIZE:D

.field private static barChartFactory:Lorg/achartengine/util/BarChartFactory;


# instance fields
.field private accountDay:I

.field private dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

.field private dataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

.field private dateInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/DateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lorg/achartengine/util/BarChartFactory;->barChartFactory:Lorg/achartengine/util/BarChartFactory;

    .line 38
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/achartengine/util/BarChartFactory;->MAX_NET_SIZE:D

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "accountDay"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lorg/achartengine/util/BarChartFactory;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 32
    iput-object v0, p0, Lorg/achartengine/util/BarChartFactory;->dataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 34
    iput-object v0, p0, Lorg/achartengine/util/BarChartFactory;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/util/BarChartFactory;->dateInfos:Ljava/util/List;

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lorg/achartengine/util/BarChartFactory;->accountDay:I

    .line 42
    iget-object v0, p0, Lorg/achartengine/util/BarChartFactory;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-direct {v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;-><init>()V

    iput-object v0, p0, Lorg/achartengine/util/BarChartFactory;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/achartengine/util/BarChartFactory;->dataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-direct {v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;-><init>()V

    iput-object v0, p0, Lorg/achartengine/util/BarChartFactory;->dataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 50
    :cond_1
    iget-object v0, p0, Lorg/achartengine/util/BarChartFactory;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    if-nez v0, :cond_2

    .line 51
    new-instance v0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    iput-object v0, p0, Lorg/achartengine/util/BarChartFactory;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 53
    :cond_2
    if-lez p1, :cond_3

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    .line 54
    iput p1, p0, Lorg/achartengine/util/BarChartFactory;->accountDay:I

    .line 56
    :cond_3
    return-void
.end method

.method private byteToKBytes([I)V
    .locals 8
    .parameter "dayTraffics"

    .prologue
    .line 230
    array-length v1, p1

    .line 233
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 234
    aget v4, p1, v0

    int-to-double v4, v4

    const-wide/high16 v6, 0x4090

    div-double v2, v4, v6

    .line 235
    .local v2, tmpMaxSize:D
    aget v4, p1, v0

    div-int/lit16 v4, v4, 0x400

    aput v4, p1, v0

    .line 236
    sget-wide v4, Lorg/achartengine/util/BarChartFactory;->MAX_NET_SIZE:D

    cmpg-double v4, v4, v2

    if-gez v4, :cond_0

    .line 237
    sput-wide v2, Lorg/achartengine/util/BarChartFactory;->MAX_NET_SIZE:D

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    .end local v2           #tmpMaxSize:D
    :cond_1
    const-string v4, "suzaiqiang"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAX_NET_SIZE:::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lorg/achartengine/util/BarChartFactory;->MAX_NET_SIZE:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method private generateDateInfo(Ljava/lang/String;Lcom/zte/heartyservice/common/datatype/DateInfo;)V
    .locals 2
    .parameter "time"
    .parameter "dateInfo"

    .prologue
    .line 222
    invoke-static {p1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, times:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/zte/heartyservice/common/datatype/DateInfo;->setMonth(I)V

    .line 225
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/zte/heartyservice/common/datatype/DateInfo;->setDay(I)V

    .line 227
    .end local v0           #times:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getInstance(I)Lorg/achartengine/util/BarChartFactory;
    .locals 1
    .parameter "accountDay"

    .prologue
    .line 59
    sget-object v0, Lorg/achartengine/util/BarChartFactory;->barChartFactory:Lorg/achartengine/util/BarChartFactory;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/achartengine/util/BarChartFactory;

    invoke-direct {v0, p0}, Lorg/achartengine/util/BarChartFactory;-><init>(I)V

    .line 62
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/achartengine/util/BarChartFactory;->barChartFactory:Lorg/achartengine/util/BarChartFactory;

    goto :goto_0
.end method

.method private setChartSettings(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/util/List;)V
    .locals 4
    .parameter "renderer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/achartengine/renderer/XYMultipleSeriesRenderer;",
            "Ljava/util/List",
            "<",
            "Lorg/achartengine/chart/BarChartSection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, barChartSections:Ljava/util/List;,"Ljava/util/List<Lorg/achartengine/chart/BarChartSection;>;"
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitle(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXTitle(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYTitle(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarChartSections(Ljava/util/List;)V

    .line 287
    invoke-virtual {p1, v3, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 288
    invoke-virtual {p1, v2, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(ZZ)V

    .line 289
    const-wide/high16 v0, 0x4010

    invoke-virtual {p1, v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarSpacing(D)V

    .line 290
    invoke-virtual {p1, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAntialiasing(Z)V

    .line 291
    invoke-virtual {p1, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowGrid(Z)V

    .line 292
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLegend(Z)V

    .line 293
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowAxes(Z)V

    .line 294
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setExternalZoomEnabled(Z)V

    .line 295
    const v0, -0x333334

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMarginsColor(I)V

    .line 296
    const/high16 v0, -0x100

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsColor(I)V

    .line 297
    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanLimits([D)V

    .line 298
    return-void

    .line 297
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private setVisibleRange(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 12
    .parameter "renderer"

    .prologue
    const-wide/high16 v10, 0x3ff8

    const-wide/16 v6, 0x0

    .line 156
    invoke-static {}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getFirstLastDayInPastWeek()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, weekday:Ljava/lang/String;
    iget-object v4, p0, Lorg/achartengine/util/BarChartFactory;->dateInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 159
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 160
    iget-object v4, p0, Lorg/achartengine/util/BarChartFactory;->dateInfos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/DateInfo;

    .line 161
    .local v0, dateInfo:Lcom/zte/heartyservice/common/datatype/DateInfo;
    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/DateInfo;->getMonthAndDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 162
    int-to-double v4, v1

    sub-double/2addr v4, v10

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    int-to-double v4, v1

    sub-double/2addr v4, v10

    :goto_1
    invoke-virtual {p1, v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 163
    const-wide/high16 v4, 0x4010

    int-to-double v8, v1

    sub-double/2addr v8, v10

    cmpl-double v8, v8, v6

    if-lez v8, :cond_0

    int-to-double v6, v1

    sub-double/2addr v6, v10

    :cond_0
    add-double/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 167
    .end local v0           #dateInfo:Lcom/zte/heartyservice/common/datatype/DateInfo;
    :cond_1
    return-void

    .restart local v0       #dateInfo:Lcom/zte/heartyservice/common/datatype/DateInfo;
    :cond_2
    move-wide v4, v6

    .line 162
    goto :goto_1

    .line 159
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public generateDataset(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;[I)Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 11
    .parameter "renderer"
    .parameter "dayTraffics"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    array-length v7, p2

    iget-object v8, p0, Lorg/achartengine/util/BarChartFactory;->dateInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 79
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Construct dataset error, dayTraffics length != days"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lorg/achartengine/util/BarChartFactory;->setVisibleRange(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 88
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v7}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v0

    .line 89
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, cusor:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 90
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v7, v1}, Lorg/achartengine/model/XYMultipleSeriesDataset;->removeSeries(I)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, p2}, Lorg/achartengine/util/BarChartFactory;->byteToKBytes([I)V

    .line 94
    invoke-virtual {p1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->clearXTextLabels()V

    .line 95
    new-instance v5, Lorg/achartengine/model/CategorySeries;

    const-string v7, " "

    invoke-direct {v5, v7}, Lorg/achartengine/model/CategorySeries;-><init>(Ljava/lang/String;)V

    .line 96
    .local v5, series:Lorg/achartengine/model/CategorySeries;
    const/4 v4, 0x1

    .line 97
    .local v4, index:I
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dateInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/DateInfo;

    .line 98
    .local v2, dateInfo:Lcom/zte/heartyservice/common/datatype/DateInfo;
    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/DateInfo;->getMonthAndDay()Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, time:Ljava/lang/String;
    add-int/lit8 v7, v4, -0x1

    aget v7, p2, v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x4010

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4014

    div-double/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Lorg/achartengine/model/CategorySeries;->add(Ljava/lang/String;D)V

    .line 100
    int-to-double v7, v4

    invoke-virtual {p1, v7, v8, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 101
    const-string v7, "xxxxxx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "time ::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  dayTraffic::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, -0x1

    aget v9, p2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  index::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLabels(Z)V

    .line 104
    add-int/lit8 v4, v4, 0x1

    .line 105
    goto :goto_1

    .line 106
    .end local v2           #dateInfo:Lcom/zte/heartyservice/common/datatype/DateInfo;
    .end local v6           #time:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v5}, Lorg/achartengine/model/CategorySeries;->toXYSeries()Lorg/achartengine/model/XYSeries;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 107
    sget-wide v7, Lorg/achartengine/util/BarChartFactory;->MAX_NET_SIZE:D

    invoke-virtual {p1, v7, v8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 108
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-object v7
.end method

.method public generateDatasetWifi(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;[I)Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 11
    .parameter "renderer"
    .parameter "dayTraffics"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    array-length v7, p2

    iget-object v8, p0, Lorg/achartengine/util/BarChartFactory;->dateInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 115
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Construct dataset error, dayTraffics length != days"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lorg/achartengine/util/BarChartFactory;->setVisibleRange(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 124
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v7}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v0

    .line 125
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, cusor:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 126
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v7, v1}, Lorg/achartengine/model/XYMultipleSeriesDataset;->removeSeries(I)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0, p2}, Lorg/achartengine/util/BarChartFactory;->byteToKBytes([I)V

    .line 130
    invoke-virtual {p1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->clearXTextLabels()V

    .line 131
    new-instance v5, Lorg/achartengine/model/CategorySeries;

    const-string v7, " "

    invoke-direct {v5, v7}, Lorg/achartengine/model/CategorySeries;-><init>(Ljava/lang/String;)V

    .line 132
    .local v5, series:Lorg/achartengine/model/CategorySeries;
    const/4 v4, 0x1

    .line 133
    .local v4, index:I
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dateInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/DateInfo;

    .line 134
    .local v2, dateInfo:Lcom/zte/heartyservice/common/datatype/DateInfo;
    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/DateInfo;->getMonthAndDay()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, time:Ljava/lang/String;
    add-int/lit8 v7, v4, -0x1

    aget v7, p2, v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x4010

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4014

    div-double/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Lorg/achartengine/model/CategorySeries;->add(Ljava/lang/String;D)V

    .line 136
    int-to-double v7, v4

    invoke-virtual {p1, v7, v8, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 137
    const-string v7, "xxxxxx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "time ::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  dayTraffic::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, -0x1

    aget v9, p2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  index::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLabels(Z)V

    .line 140
    add-int/lit8 v4, v4, 0x1

    .line 141
    goto :goto_1

    .line 142
    .end local v2           #dateInfo:Lcom/zte/heartyservice/common/datatype/DateInfo;
    .end local v6           #time:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v5}, Lorg/achartengine/model/CategorySeries;->toXYSeries()Lorg/achartengine/model/XYSeries;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 143
    sget-wide v7, Lorg/achartengine/util/BarChartFactory;->MAX_NET_SIZE:D

    invoke-virtual {p1, v7, v8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 144
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-object v7
.end method

.method public generateDateInfo()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/DateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x5

    .line 179
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dateInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 180
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "MM.dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 181
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getCalendarOfCurrentMonth()Ljava/util/Calendar;

    move-result-object v2

    .line 182
    .local v2, dateStart:Ljava/util/Calendar;
    iget v7, p0, Lorg/achartengine/util/BarChartFactory;->accountDay:I

    invoke-virtual {v2, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 183
    invoke-static {}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getDay()Ljava/util/Date;

    move-result-object v6

    .line 184
    .local v6, today:Ljava/util/Date;
    const/4 v3, 0x1

    .line 188
    .local v3, index:I
    invoke-static {}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getCalendarOfCurrentMonth()Ljava/util/Calendar;

    move-result-object v0

    .line 189
    .local v0, dateEnd:Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 190
    .local v1, dateInfo:Lcom/zte/heartyservice/common/datatype/DateInfo;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 191
    invoke-virtual {v0, v11, v8}, Ljava/util/Calendar;->add(II)V

    .line 192
    iget v7, p0, Lorg/achartengine/util/BarChartFactory;->accountDay:I

    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 193
    :goto_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getDateWithoutZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, time:Ljava/lang/String;
    new-instance v1, Lcom/zte/heartyservice/common/datatype/DateInfo;

    .end local v1           #dateInfo:Lcom/zte/heartyservice/common/datatype/DateInfo;
    invoke-direct {v1}, Lcom/zte/heartyservice/common/datatype/DateInfo;-><init>()V

    .line 197
    .restart local v1       #dateInfo:Lcom/zte/heartyservice/common/datatype/DateInfo;
    invoke-direct {p0, v5, v1}, Lorg/achartengine/util/BarChartFactory;->generateDateInfo(Ljava/lang/String;Lcom/zte/heartyservice/common/datatype/DateInfo;)V

    .line 198
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dateInfos:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v3, v3, 0x1

    .line 201
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 204
    .end local v5           #time:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v11, v10}, Ljava/util/Calendar;->add(II)V

    .line 205
    iget v7, p0, Lorg/achartengine/util/BarChartFactory;->accountDay:I

    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 206
    invoke-virtual {v0, v9, v8}, Ljava/util/Calendar;->add(II)V

    .line 207
    :goto_1
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 208
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getDateWithoutZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    .restart local v5       #time:Ljava/lang/String;
    new-instance v1, Lcom/zte/heartyservice/common/datatype/DateInfo;

    .end local v1           #dateInfo:Lcom/zte/heartyservice/common/datatype/DateInfo;
    invoke-direct {v1}, Lcom/zte/heartyservice/common/datatype/DateInfo;-><init>()V

    .line 211
    .restart local v1       #dateInfo:Lcom/zte/heartyservice/common/datatype/DateInfo;
    invoke-direct {p0, v5, v1}, Lorg/achartengine/util/BarChartFactory;->generateDateInfo(Ljava/lang/String;Lcom/zte/heartyservice/common/datatype/DateInfo;)V

    .line 212
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dateInfos:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v3, v3, 0x1

    .line 215
    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 218
    .end local v5           #time:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lorg/achartengine/util/BarChartFactory;->dateInfos:Ljava/util/List;

    return-object v7
.end method

.method public generateSeriesRenderer(Ljava/util/List;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/achartengine/chart/BarChartSection;",
            ">;)",
            "Lorg/achartengine/renderer/XYMultipleSeriesRenderer;"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, barChartSections:Ljava/util/List;,"Ljava/util/List<Lorg/achartengine/chart/BarChartSection;>;"
    iget-object v1, p0, Lorg/achartengine/util/BarChartFactory;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 257
    new-instance v0, Lorg/achartengine/renderer/SimpleSeriesRenderer;

    invoke-direct {v0}, Lorg/achartengine/renderer/SimpleSeriesRenderer;-><init>()V

    .line 258
    .local v0, r:Lorg/achartengine/renderer/SimpleSeriesRenderer;
    const-string v1, "#ff70A63F"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setColor(I)V

    .line 259
    const/high16 v1, 0x4130

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setChartValuesTextSize(F)V

    .line 260
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setDisplayChartValues(Z)V

    .line 261
    iget-object v1, p0, Lorg/achartengine/util/BarChartFactory;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 262
    iget-object v1, p0, Lorg/achartengine/util/BarChartFactory;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {p0, v1, p1}, Lorg/achartengine/util/BarChartFactory;->setChartSettings(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/util/List;)V

    .line 263
    iget-object v1, p0, Lorg/achartengine/util/BarChartFactory;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-object v1

    .line 256
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getYAxisMax()D
    .locals 2

    .prologue
    .line 244
    sget-wide v0, Lorg/achartengine/util/BarChartFactory;->MAX_NET_SIZE:D

    return-wide v0
.end method
