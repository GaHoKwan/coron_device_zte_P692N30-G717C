.class public Lcom/android/gallery3d/app/TrimVideoUtils;
.super Ljava/lang/Object;
.source "TrimVideoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/TrimVideoUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D
    .locals 21
    .parameter "track"
    .parameter "cutHere"
    .parameter "next"

    .prologue
    .line 156
    const-string v17, "Gallery2/TrimVideoUtils"

    const-string v18, "correctTimeToSyncSample()"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v16, v0

    .line 158
    .local v16, timeOfSyncSamples:[D
    const-wide/16 v3, 0x0

    .line 159
    .local v3, currentSample:J
    const-wide/16 v5, 0x0

    .line 160
    .local v5, currentTime:D
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 161
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 162
    .local v7, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    int-to-long v0, v10

    move-wide/from16 v17, v0

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-gez v17, :cond_1

    .line 163
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    const-wide/16 v18, 0x1

    add-long v18, v18, v3

    invoke-static/range {v17 .. v19}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v17

    if-ltz v17, :cond_0

    .line 165
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    const-wide/16 v18, 0x1

    add-long v18, v18, v3

    invoke-static/range {v17 .. v19}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v17

    aput-wide v5, v16, v17

    .line 167
    :cond_0
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    add-double v5, v5, v17

    .line 168
    const-wide/16 v17, 0x1

    add-long v3, v3, v17

    .line 162
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 160
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 171
    .end local v7           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v10           #j:I
    :cond_2
    const-wide/16 v12, 0x0

    .line 172
    .local v12, previous:D
    move-object/from16 v2, v16

    .local v2, arr$:[D
    array-length v11, v2

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v11, :cond_5

    aget-wide v14, v2, v9

    .line 173
    .local v14, timeOfSyncSample:D
    cmpl-double v17, v14, p1

    if-lez v17, :cond_4

    .line 174
    if-eqz p3, :cond_3

    .line 182
    .end local v14           #timeOfSyncSample:D
    :goto_3
    return-wide v14

    .restart local v14       #timeOfSyncSample:D
    :cond_3
    move-wide v14, v12

    .line 177
    goto :goto_3

    .line 180
    :cond_4
    move-wide v12, v14

    .line 172
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 182
    .end local v14           #timeOfSyncSample:D
    :cond_5
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-wide v14, v16, v17

    goto :goto_3
.end method

.method private static correctTimeToSyncSample2(Lcom/googlecode/mp4parser/authoring/Track;DD[D)V
    .locals 27
    .parameter "track"
    .parameter "cutStart"
    .parameter "cutEnd"
    .parameter "newCut"

    .prologue
    .line 187
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [D

    move-object/from16 v22, v0

    .line 188
    .local v22, timeOfSyncSamples:[D
    const-wide/16 v4, 0x0

    .line 189
    .local v4, currentSample:J
    const-wide/16 v6, 0x0

    .line 190
    .local v6, currentTime:D
    const-string v23, "Gallery2/TrimVideoUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "correctTimeToSyncSample()SyncSample length:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "DecodingTimeEntries: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_2

    .line 193
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 194
    .local v8, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    int-to-long v0, v12

    move-wide/from16 v23, v0

    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v25

    cmp-long v23, v23, v25

    if-gez v23, :cond_1

    .line 195
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v23

    const-wide/16 v24, 0x1

    add-long v24, v24, v4

    invoke-static/range {v23 .. v25}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v11

    .line 196
    .local v11, indexToSyncSample:I
    if-ltz v11, :cond_0

    .line 198
    aput-wide v6, v22, v11

    .line 200
    :cond_0
    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v25

    move-wide/from16 v0, v25

    long-to-double v0, v0

    move-wide/from16 v25, v0

    div-double v23, v23, v25

    add-double v6, v6, v23

    .line 201
    const-wide/16 v23, 0x1

    add-long v4, v4, v23

    .line 194
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 192
    .end local v11           #indexToSyncSample:I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 205
    .end local v8           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v12           #j:I
    :cond_2
    const-wide/16 v18, 0x0

    .line 206
    .local v18, previous:D
    const-wide/high16 v14, -0x4010

    .line 207
    .local v14, newCutEnd:D
    const-wide/high16 v16, -0x4010

    .line 208
    .local v16, newCutStart:D
    move-object/from16 v3, v22

    .local v3, arr$:[D
    array-length v13, v3

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v13, :cond_4

    aget-wide v20, v3, v10

    .line 209
    .local v20, timeOfSyncSample:D
    cmpl-double v23, v20, p1

    if-lez v23, :cond_3

    const-wide/high16 v23, -0x4010

    cmpl-double v23, v16, v23

    if-nez v23, :cond_3

    .line 210
    move-wide/from16 v16, v18

    .line 211
    const-string v23, "Gallery2/TrimVideoUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "newCutStart "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_3
    cmpl-double v23, v20, p3

    if-lez v23, :cond_7

    const-wide/high16 v23, -0x4010

    cmpl-double v23, v14, v23

    if-nez v23, :cond_7

    .line 214
    move-wide/from16 v14, v20

    .line 215
    const-string v23, "Gallery2/TrimVideoUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "newCutEnd "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v20           #timeOfSyncSample:D
    :cond_4
    const-wide/high16 v23, -0x4010

    cmpl-double v23, v16, v23

    if-nez v23, :cond_5

    .line 221
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget-wide v16, v22, v23

    .line 223
    :cond_5
    const-wide/high16 v23, -0x4010

    cmpl-double v23, v14, v23

    if-nez v23, :cond_6

    .line 224
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget-wide v14, v22, v23

    .line 227
    :cond_6
    const/16 v23, 0x0

    aput-wide v16, p5, v23

    .line 228
    const/16 v23, 0x1

    aput-wide v14, p5, v23

    .line 229
    return-void

    .line 218
    .restart local v20       #timeOfSyncSample:D
    :cond_7
    move-wide/from16 v18, v20

    .line 208
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method protected static getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 8
    .parameter "track"

    .prologue
    .line 146
    const-string v4, "Gallery2/TrimVideoUtils"

    const-string v5, "getDuration()"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-wide/16 v0, 0x0

    .line 148
    .local v0, duration:J
    invoke-interface {p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 149
    .local v2, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    goto :goto_0

    .line 151
    .end local v2           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    :cond_0
    const-string v4, "Gallery2/TrimVideoUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "duration is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-wide v0
.end method

.method public static startTrim(Ljava/io/File;Ljava/io/File;IILcom/android/gallery3d/app/TrimVideo;)Z
    .locals 31
    .parameter "src"
    .parameter "dst"
    .parameter "startMs"
    .parameter "endMs"
    .parameter "trimVideo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 52
    const-string v8, "Gallery2/TrimVideoUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "startTrim() src is "

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v29, " and dst is "

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    const-string v8, "Gallery2/TrimVideoUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "startTrim() startMs is "

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v29, " endMs is "

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v26, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v26, randomAccessFile:Ljava/io/RandomAccessFile;
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-static {v8}, Lcom/googlecode/mp4parser/authoring/container/mp4/MovieCreator;->build(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v24

    .line 58
    .local v24, movie:Lcom/googlecode/mp4parser/authoring/Movie;
    if-nez v24, :cond_1

    .line 59
    const/4 v8, 0x0

    .line 142
    :goto_0
    return v8

    .line 63
    :cond_1
    invoke-virtual/range {v24 .. v24}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v28

    .line 64
    .local v28, tracks:Ljava/util/List;,"Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/googlecode/mp4parser/authoring/Movie;->setTracks(Ljava/util/List;)V

    .line 66
    move/from16 v0, p2

    div-int/lit16 v8, v0, 0x3e8

    int-to-double v3, v8

    .line 67
    .local v3, startTime:D
    move/from16 v0, p3

    div-int/lit16 v8, v0, 0x3e8

    int-to-double v5, v8

    .line 69
    .local v5, endTime:D
    const/16 v27, 0x0

    .line 74
    .local v27, timeCorrected:Z
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 75
    .local v2, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_2

    .line 76
    if-eqz v27, :cond_3

    .line 80
    const/4 v8, 0x0

    goto :goto_0

    .line 86
    :cond_3
    const/4 v8, 0x2

    new-array v7, v8, [D

    .line 87
    .local v7, newCut:[D
    invoke-static/range {v2 .. v7}, Lcom/android/gallery3d/app/TrimVideoUtils;->correctTimeToSyncSample2(Lcom/googlecode/mp4parser/authoring/Track;DD[D)V

    .line 88
    const/4 v8, 0x0

    aget-wide v3, v7, v8

    .line 89
    const/4 v8, 0x1

    aget-wide v5, v7, v8

    .line 91
    const/16 v27, 0x1

    goto :goto_1

    .line 95
    .end local v2           #track:Lcom/googlecode/mp4parser/authoring/Track;
    .end local v7           #newCut:[D
    :cond_4
    const-string v8, "Gallery2/TrimVideoUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "startTrim() startTime "

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v29, " endTime "

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    cmpl-double v8, v3, v5

    if-nez v8, :cond_5

    .line 97
    const/4 v8, 0x0

    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/android/gallery3d/app/TrimVideo;->showDialogCommand()V

    .line 101
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 102
    .restart local v2       #track:Lcom/googlecode/mp4parser/authoring/Track;
    const-wide/16 v14, 0x0

    .line 103
    .local v14, currentSample:J
    const-wide/16 v16, 0x0

    .line 104
    .local v16, currentTime:D
    const-wide/16 v10, -0x1

    .line 105
    .local v10, startSample:J
    const-wide/16 v12, -0x1

    .line 107
    .local v12, endSample:J
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v0, v21

    if-ge v0, v8, :cond_8

    .line 108
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v8

    move/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 109
    .local v18, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    const/16 v23, 0x0

    .local v23, j:I
    :goto_4
    move/from16 v0, v23

    int-to-long v8, v0

    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v29

    cmp-long v8, v8, v29

    if-gez v8, :cond_7

    .line 112
    cmpg-double v8, v16, v3

    if-gtz v8, :cond_6

    .line 114
    move-wide v10, v14

    .line 116
    :cond_6
    cmpg-double v8, v16, v5

    if-gtz v8, :cond_7

    .line 118
    move-wide v12, v14

    .line 123
    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v8

    long-to-double v8, v8

    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-double v0, v0

    move-wide/from16 v29, v0

    div-double v8, v8, v29

    add-double v16, v16, v8

    .line 124
    const-wide/16 v8, 0x1

    add-long/2addr v14, v8

    .line 109
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 107
    :cond_7
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 127
    .end local v18           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v23           #j:I
    :cond_8
    new-instance v8, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;

    move-object v9, v2

    invoke-direct/range {v8 .. v13}, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;-><init>(Lcom/googlecode/mp4parser/authoring/Track;JJ)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_2

    .line 129
    .end local v2           #track:Lcom/googlecode/mp4parser/authoring/Track;
    .end local v10           #startSample:J
    .end local v12           #endSample:J
    .end local v14           #currentSample:J
    .end local v16           #currentTime:D
    .end local v21           #i:I
    :cond_9
    new-instance v8, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v8}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object v25

    .line 131
    .local v25, out:Lcom/coremedia/iso/IsoFile;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_a

    .line 132
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    .line 135
    :cond_a
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 136
    .local v20, fos:Ljava/io/FileOutputStream;
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v19

    .line 137
    .local v19, fc:Ljava/nio/channels/FileChannel;
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 139
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 140
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V

    .line 141
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->close()V

    .line 142
    const/4 v8, 0x1

    goto/16 :goto_0
.end method
