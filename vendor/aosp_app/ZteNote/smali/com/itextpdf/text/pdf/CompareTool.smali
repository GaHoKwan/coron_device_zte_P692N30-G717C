.class public Lcom/itextpdf/text/pdf/CompareTool;
.super Ljava/lang/Object;
.source "CompareTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/CompareTool$ImageNameComparator;,
        Lcom/itextpdf/text/pdf/CompareTool$CmpPngFileFilter;,
        Lcom/itextpdf/text/pdf/CompareTool$PngFileFilter;
    }
.end annotation


# static fields
.field private static cannotOpenTargetDirectory:Ljava/lang/String;

.field private static differentPages:Ljava/lang/String;

.field private static gsFailed:Ljava/lang/String;

.field private static undefinedGsPath:Ljava/lang/String;

.field private static unexpectedNumberOfPages:Ljava/lang/String;


# instance fields
.field private cmpImage:Ljava/lang/String;

.field private cmpPdf:Ljava/lang/String;

.field private cmpPdfName:Ljava/lang/String;

.field private compareExec:Ljava/lang/String;

.field private compareParams:Ljava/lang/String;

.field private gsExec:Ljava/lang/String;

.field private gsParams:Ljava/lang/String;

.field private outImage:Ljava/lang/String;

.field private outPdf:Ljava/lang/String;

.field private outPdfName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "Cannot open target directory for <filename>."

    sput-object v0, Lcom/itextpdf/text/pdf/CompareTool;->cannotOpenTargetDirectory:Ljava/lang/String;

    .line 61
    const-string v0, "GhostScript failed for <filename>."

    sput-object v0, Lcom/itextpdf/text/pdf/CompareTool;->gsFailed:Ljava/lang/String;

    .line 62
    const-string v0, "Unexpected number of pages for <filename>."

    sput-object v0, Lcom/itextpdf/text/pdf/CompareTool;->unexpectedNumberOfPages:Ljava/lang/String;

    .line 63
    const-string v0, "File <filename> differs on page <pagenumber>."

    sput-object v0, Lcom/itextpdf/text/pdf/CompareTool;->differentPages:Ljava/lang/String;

    .line 64
    const-string v0, "Path to GhostScript is not specified. Please use -DgsExec=<path_to_ghostscript> (e.g. -DgsExec=\"C:/Program Files/gs/gs8.64/bin/gswin32c.exe\")"

    sput-object v0, Lcom/itextpdf/text/pdf/CompareTool;->undefinedGsPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "outPdf"
    .parameter "cmpPdf"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, " -dNOPAUSE -dBATCH -sDEVICE=png16m -r150 -sOutputFile=<outputfile> <inputfile>"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CompareTool;->gsParams:Ljava/lang/String;

    .line 58
    const-string v0, " <image1> <image2> <difference>"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CompareTool;->compareParams:Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/CompareTool;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "gsExec"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CompareTool;->gsExec:Ljava/lang/String;

    .line 77
    const-string v0, "compareExec"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CompareTool;->compareExec:Ljava/lang/String;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/text/pdf/CompareTool;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CompareTool;->outPdfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/itextpdf/text/pdf/CompareTool;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CompareTool;->cmpPdfName:Ljava/lang/String;

    return-object v0
.end method

.method private compareStreams(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 7
    .parameter "is1"
    .parameter "is2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 211
    new-array v0, v5, [B

    .line 212
    .local v0, buffer1:[B
    new-array v1, v5, [B

    .line 213
    .local v1, buffer2:[B
    const/4 v2, 0x0

    .line 214
    .local v2, len1:I
    const/4 v3, 0x0

    .line 216
    .local v3, len2:I
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 217
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 218
    if-eq v2, v3, :cond_2

    .line 225
    :cond_1
    :goto_0
    return v4

    .line 220
    :cond_2
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    if-eq v2, v6, :cond_3

    if-ne v3, v6, :cond_0

    .line 225
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "outPdf"
    .parameter "cmpPdf"

    .prologue
    const/16 v3, 0x2e

    const/4 v2, 0x0

    .line 200
    iput-object p1, p0, Lcom/itextpdf/text/pdf/CompareTool;->outPdf:Ljava/lang/String;

    .line 201
    iput-object p2, p0, Lcom/itextpdf/text/pdf/CompareTool;->cmpPdf:Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CompareTool;->outPdfName:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CompareTool;->outPdfName:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CompareTool;->outPdfName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CompareTool;->cmpPdfName:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CompareTool;->cmpPdfName:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CompareTool;->cmpPdfName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CompareTool;->outPdfName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-%03d.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CompareTool;->outImage:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CompareTool;->outPdfName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-%03d.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CompareTool;->cmpImage:Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 30
    .parameter "outPath"
    .parameter "differenceImage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->gsExec:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->gsExec:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_2

    .line 82
    :cond_0
    sget-object v13, Lcom/itextpdf/text/pdf/CompareTool;->undefinedGsPath:Ljava/lang/String;

    .line 191
    :cond_1
    :goto_0
    return-object v13

    .line 84
    :cond_2
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v25, targetDir:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_5

    .line 89
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdir()Z

    .line 101
    :cond_3
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v12, diffFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 103
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 106
    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_13

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->gsParams:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "<outputfile>"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->cmpImage:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "<inputfile>"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->cmpPdf:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 108
    .local v16, gsParams:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->gsExec:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v24

    .line 109
    .local v24, p:Ljava/lang/Process;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 110
    .local v6, bri:Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 112
    .local v5, bre:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    .local v23, line:Ljava/lang/String;
    if-eqz v23, :cond_7

    .line 113
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    .end local v5           #bre:Ljava/io/BufferedReader;
    .end local v6           #bri:Ljava/io/BufferedReader;
    .end local v12           #diffFile:Ljava/io/File;
    .end local v16           #gsParams:Ljava/lang/String;
    .end local v23           #line:Ljava/lang/String;
    .end local v24           #p:Ljava/lang/Process;
    :cond_5
    new-instance v26, Lcom/itextpdf/text/pdf/CompareTool$PngFileFilter;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/CompareTool$PngFileFilter;-><init>(Lcom/itextpdf/text/pdf/CompareTool;)V

    invoke-virtual/range {v25 .. v26}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v19

    .line 92
    .local v19, imageFiles:[Ljava/io/File;
    move-object/from16 v3, v19

    .local v3, arr$:[Ljava/io/File;
    array-length v0, v3

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    aget-object v15, v3, v18

    .line 93
    .local v15, file:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 92
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 95
    .end local v15           #file:Ljava/io/File;
    :cond_6
    new-instance v26, Lcom/itextpdf/text/pdf/CompareTool$CmpPngFileFilter;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/CompareTool$CmpPngFileFilter;-><init>(Lcom/itextpdf/text/pdf/CompareTool;)V

    invoke-virtual/range {v25 .. v26}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v8

    .line 96
    .local v8, cmpImageFiles:[Ljava/io/File;
    move-object v3, v8

    array-length v0, v3

    move/from16 v22, v0

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    aget-object v15, v3, v18

    .line 97
    .restart local v15       #file:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 96
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 115
    .end local v3           #arr$:[Ljava/io/File;
    .end local v8           #cmpImageFiles:[Ljava/io/File;
    .end local v15           #file:Ljava/io/File;
    .end local v18           #i$:I
    .end local v19           #imageFiles:[Ljava/io/File;
    .end local v22           #len$:I
    .restart local v5       #bre:Ljava/io/BufferedReader;
    .restart local v6       #bri:Ljava/io/BufferedReader;
    .restart local v12       #diffFile:Ljava/io/File;
    .restart local v16       #gsParams:Ljava/lang/String;
    .restart local v23       #line:Ljava/lang/String;
    .restart local v24       #p:Ljava/lang/Process;
    :cond_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 116
    :goto_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_8

    .line 117
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 119
    :cond_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 120
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Process;->waitFor()I

    move-result v26

    if-nez v26, :cond_12

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->gsParams:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "<outputfile>"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->outImage:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "<inputfile>"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->outPdf:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 122
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->gsExec:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v24

    .line 123
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6           #bri:Ljava/io/BufferedReader;
    new-instance v26, Ljava/io/InputStreamReader;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 124
    .restart local v6       #bri:Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/BufferedReader;

    .end local v5           #bre:Ljava/io/BufferedReader;
    new-instance v26, Ljava/io/InputStreamReader;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 125
    .restart local v5       #bre:Ljava/io/BufferedReader;
    :goto_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_9

    .line 126
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 128
    :cond_9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 129
    :goto_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_a

    .line 130
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 132
    :cond_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 133
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Process;->waitFor()I

    move-result v14

    .line 135
    .local v14, exitValue:I
    if-nez v14, :cond_11

    .line 136
    new-instance v26, Lcom/itextpdf/text/pdf/CompareTool$PngFileFilter;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/CompareTool$PngFileFilter;-><init>(Lcom/itextpdf/text/pdf/CompareTool;)V

    invoke-virtual/range {v25 .. v26}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v19

    .line 137
    .restart local v19       #imageFiles:[Ljava/io/File;
    new-instance v26, Lcom/itextpdf/text/pdf/CompareTool$CmpPngFileFilter;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/CompareTool$CmpPngFileFilter;-><init>(Lcom/itextpdf/text/pdf/CompareTool;)V

    invoke-virtual/range {v25 .. v26}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v8

    .line 138
    .restart local v8       #cmpImageFiles:[Ljava/io/File;
    const/4 v4, 0x0

    .line 139
    .local v4, bUnexpectedNumberOfPages:Z
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    array-length v0, v8

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    .line 140
    const/4 v4, 0x1

    .line 142
    :cond_b
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    array-length v0, v8

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 143
    .local v10, cnt:I
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ge v10, v0, :cond_c

    .line 144
    const-string v13, "No files for comparing!!!\nThe result or sample pdf file is not processed by GhostScript."

    goto/16 :goto_0

    .line 146
    :cond_c
    new-instance v26, Lcom/itextpdf/text/pdf/CompareTool$ImageNameComparator;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/CompareTool$ImageNameComparator;-><init>(Lcom/itextpdf/text/pdf/CompareTool;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 147
    new-instance v26, Lcom/itextpdf/text/pdf/CompareTool$ImageNameComparator;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/CompareTool$ImageNameComparator;-><init>(Lcom/itextpdf/text/pdf/CompareTool;)V

    move-object/from16 v0, v26

    invoke-static {v8, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 148
    const/16 v17, 0x0

    .local v17, i:I
    :goto_7
    move/from16 v0, v17

    if-ge v0, v10, :cond_14

    .line 149
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Comparing page "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    add-int/lit8 v28, v17, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-object v28, v19, v17

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")..."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 150
    new-instance v20, Ljava/io/FileInputStream;

    aget-object v26, v19, v17

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 151
    .local v20, is1:Ljava/io/FileInputStream;
    new-instance v21, Ljava/io/FileInputStream;

    aget-object v26, v8, v17

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 152
    .local v21, is2:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/CompareTool;->compareStreams(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v9

    .line 153
    .local v9, cmpResult:Z
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V

    .line 154
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V

    .line 155
    if-nez v9, :cond_10

    .line 156
    sget-object v26, Lcom/itextpdf/text/pdf/CompareTool;->differentPages:Ljava/lang/String;

    const-string v27, "<filename>"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->outPdf:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "<pagenumber>"

    add-int/lit8 v28, v17, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 157
    .local v13, differentPagesFail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->compareExec:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->compareExec:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_f

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->compareParams:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "<image1>"

    aget-object v28, v19, v17

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "<image2>"

    aget-object v28, v8, v17

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "<difference>"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 159
    .local v11, compareParams:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->compareExec:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v24

    .line 160
    new-instance v5, Ljava/io/BufferedReader;

    .end local v5           #bre:Ljava/io/BufferedReader;
    new-instance v26, Ljava/io/InputStreamReader;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 161
    .restart local v5       #bre:Ljava/io/BufferedReader;
    :goto_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_d

    .line 162
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 164
    :cond_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 165
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Process;->waitFor()I

    move-result v7

    .line 166
    .local v7, cmpExitValue:I
    if-nez v7, :cond_e

    .line 167
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\nPlease, examine "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " for more details."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 174
    .end local v7           #cmpExitValue:I
    .end local v11           #compareParams:Ljava/lang/String;
    :cond_e
    :goto_9
    if-eqz v4, :cond_1

    .line 175
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v27, Lcom/itextpdf/text/pdf/CompareTool;->unexpectedNumberOfPages:Ljava/lang/String;

    const-string v28, "<filename>"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->outPdf:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 172
    :cond_f
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\nYou can optionally specify path to ImageMagick compare tool (e.g. -DcompareExec=\"C:/Program Files/ImageMagick-6.5.4-2/compare.exe\") to visualize differences."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    .line 178
    .end local v13           #differentPagesFail:Ljava/lang/String;
    :cond_10
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "done."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_7

    .line 182
    .end local v4           #bUnexpectedNumberOfPages:Z
    .end local v8           #cmpImageFiles:[Ljava/io/File;
    .end local v9           #cmpResult:Z
    .end local v10           #cnt:I
    .end local v17           #i:I
    .end local v19           #imageFiles:[Ljava/io/File;
    .end local v20           #is1:Ljava/io/FileInputStream;
    .end local v21           #is2:Ljava/io/FileInputStream;
    :cond_11
    sget-object v26, Lcom/itextpdf/text/pdf/CompareTool;->gsFailed:Ljava/lang/String;

    const-string v27, "<filename>"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->outPdf:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 185
    .end local v14           #exitValue:I
    :cond_12
    sget-object v26, Lcom/itextpdf/text/pdf/CompareTool;->gsFailed:Ljava/lang/String;

    const-string v27, "<filename>"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->cmpPdf:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 188
    .end local v5           #bre:Ljava/io/BufferedReader;
    .end local v6           #bri:Ljava/io/BufferedReader;
    .end local v16           #gsParams:Ljava/lang/String;
    .end local v23           #line:Ljava/lang/String;
    .end local v24           #p:Ljava/lang/Process;
    :cond_13
    sget-object v26, Lcom/itextpdf/text/pdf/CompareTool;->cannotOpenTargetDirectory:Ljava/lang/String;

    const-string v27, "<filename>"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CompareTool;->outPdf:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 191
    .restart local v4       #bUnexpectedNumberOfPages:Z
    .restart local v5       #bre:Ljava/io/BufferedReader;
    .restart local v6       #bri:Ljava/io/BufferedReader;
    .restart local v8       #cmpImageFiles:[Ljava/io/File;
    .restart local v10       #cnt:I
    .restart local v14       #exitValue:I
    .restart local v16       #gsParams:Ljava/lang/String;
    .restart local v17       #i:I
    .restart local v19       #imageFiles:[Ljava/io/File;
    .restart local v23       #line:Ljava/lang/String;
    .restart local v24       #p:Ljava/lang/Process;
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "outPdf"
    .parameter "cmpPdf"
    .parameter "outPath"
    .parameter "differenceImage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/CompareTool;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p3, p4}, Lcom/itextpdf/text/pdf/CompareTool;->compare(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
