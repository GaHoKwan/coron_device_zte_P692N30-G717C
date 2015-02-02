.class Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;
.super Ljava/lang/Object;
.source "GraphicEqualizerPainter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/ds1appUI/GraphicEqualizerPainter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EQTouchQueue"
.end annotation


# instance fields
.field private final mBands:[I

.field private final mGains:[F

.field private mSize:I

.field final synthetic this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;


# direct methods
.method public constructor <init>(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;I)V
    .locals 1
    .parameter
    .parameter "maxSize"

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1096
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    .line 1099
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    .line 1100
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    .line 1101
    return-void
.end method


# virtual methods
.method public declared-synchronized add(IF)V
    .locals 17
    .parameter "band"
    .parameter "gain"

    .prologue
    .line 1112
    monitor-enter p0

    :try_start_0
    const-string v12, "DsUI::MainActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EQTouchQueue.add  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/dolby/ds1appCoreUI/Tools;->mDecFormat:Ljava/text/DecimalFormat;

    move/from16 v0, p2

    float-to-double v15, v0

    invoke-virtual/range {v14 .. v16}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  size before: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  mPrevEditBand: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    #getter for: Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditBand:I
    invoke-static {v14}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->access$300(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    #getter for: Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditBand:I
    invoke-static {v12}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->access$300(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    #getter for: Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditBand:I
    invoke-static {v12}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->access$300(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)I

    move-result v12

    sub-int v8, p1, v12

    .local v8, n:I
    const/4 v12, -0x1

    if-lt v8, v12, :cond_0

    const/4 v12, 0x1

    if-le v8, v12, :cond_7

    .line 1121
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    #getter for: Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditBand:I
    invoke-static {v12}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->access$300(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)I

    move-result v13

    if-gez v8, :cond_2

    const/4 v12, -0x1

    :goto_0
    add-int/2addr v12, v13

    int-to-float v3, v12

    .line 1122
    .local v3, fromBand:F
    if-gez v8, :cond_3

    const/4 v12, 0x1

    :goto_1
    add-int v12, v12, p1

    int-to-float v9, v12

    .line 1123
    .local v9, toBand:F
    if-gez v8, :cond_4

    const/high16 v5, -0x4080

    .line 1124
    .local v5, inc:F
    :goto_2
    if-gez v8, :cond_5

    .line 1125
    move/from16 v0, p1

    int-to-float v7, v0

    .line 1126
    .local v7, minBand:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    #getter for: Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditBand:I
    invoke-static {v12}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->access$300(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)I

    move-result v12

    int-to-float v6, v12

    .line 1127
    .local v6, maxBand:F
    move/from16 v4, p2

    .line 1128
    .local v4, fromValue:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    #getter for: Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditGain:F
    invoke-static {v12}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->access$400(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)F

    move-result v12

    sub-float v11, v12, p2

    .line 1136
    .local v11, valueSpan:F
    :goto_3
    sub-float v2, v6, v7

    .line 1137
    .local v2, bandSpan:F
    move v1, v3

    .local v1, b:F
    :goto_4
    if-gez v8, :cond_6

    cmpl-float v12, v1, v9

    if-ltz v12, :cond_7

    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    array-length v13, v13

    if-ge v12, v13, :cond_7

    .line 1138
    sub-float v12, v1, v7

    mul-float/2addr v12, v11

    div-float/2addr v12, v2

    add-float v10, v4, v12

    .line 1139
    .local v10, val:F
    const-string v12, "DsUI::MainActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EQTouchQueue adding missing  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    float-to-int v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/dolby/ds1appCoreUI/Tools;->mDecFormat:Ljava/text/DecimalFormat;

    float-to-double v15, v10

    invoke-virtual/range {v14 .. v16}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    float-to-int v14, v1

    aput v14, v12, v13

    .line 1141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    aput v10, v12, v13

    .line 1142
    move-object/from16 v0, p0

    iget v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    .line 1137
    add-float/2addr v1, v5

    goto :goto_4

    .line 1121
    .end local v1           #b:F
    .end local v2           #bandSpan:F
    .end local v3           #fromBand:F
    .end local v4           #fromValue:F
    .end local v5           #inc:F
    .end local v6           #maxBand:F
    .end local v7           #minBand:F
    .end local v9           #toBand:F
    .end local v10           #val:F
    .end local v11           #valueSpan:F
    :cond_2
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1122
    .restart local v3       #fromBand:F
    :cond_3
    const/4 v12, -0x1

    goto/16 :goto_1

    .line 1123
    .restart local v9       #toBand:F
    :cond_4
    const/high16 v5, 0x3f80

    goto/16 :goto_2

    .line 1130
    .restart local v5       #inc:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    #getter for: Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditBand:I
    invoke-static {v12}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->access$300(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)I

    move-result v12

    int-to-float v7, v12

    .line 1131
    .restart local v7       #minBand:F
    move/from16 v0, p1

    int-to-float v6, v0

    .line 1132
    .restart local v6       #maxBand:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    #getter for: Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditGain:F
    invoke-static {v12}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->access$400(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)F

    move-result v4

    .line 1133
    .restart local v4       #fromValue:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    #getter for: Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditGain:F
    invoke-static {v12}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->access$400(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)F

    move-result v12

    sub-float v11, p2, v12

    .restart local v11       #valueSpan:F
    goto/16 :goto_3

    .line 1137
    .restart local v1       #b:F
    .restart local v2       #bandSpan:F
    :cond_6
    cmpg-float v12, v1, v9

    if-lez v12, :cond_1

    .line 1146
    .end local v1           #b:F
    .end local v2           #bandSpan:F
    .end local v3           #fromBand:F
    .end local v4           #fromValue:F
    .end local v5           #inc:F
    .end local v6           #maxBand:F
    .end local v7           #minBand:F
    .end local v8           #n:I
    .end local v9           #toBand:F
    .end local v11           #valueSpan:F
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    if-lez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    add-int/lit8 v13, v13, -0x1

    aget v12, v12, v13

    move/from16 v0, p1

    if-ne v12, v0, :cond_8

    .line 1147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    add-int/lit8 v13, v13, -0x1

    aput p2, v12, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1155
    :goto_5
    monitor-exit p0

    return-void

    .line 1148
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    array-length v13, v13

    if-ge v12, v13, :cond_9

    .line 1149
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    aput p1, v12, v13

    .line 1150
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    aput p2, v12, v13

    .line 1151
    move-object/from16 v0, p0

    iget v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 1112
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 1153
    :cond_9
    :try_start_2
    const-string v12, "DsUI::MainActivity"

    const-string v13, "EQTouchQueue.add buffer overflow"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public declared-synchronized getBandAt(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 1158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGainAt(I)F
    .locals 1
    .parameter "i"

    .prologue
    .line 1162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 1108
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    monitor-exit p0

    return-void

    .line 1108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 1104
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
