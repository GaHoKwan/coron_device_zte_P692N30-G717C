.class public Lcom/itextpdf/text/pdf/PdfReader;
.super Ljava/lang/Object;
.source "PdfReader.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/interfaces/PdfViewerPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfReader$1;,
        Lcom/itextpdf/text/pdf/PdfReader$PageRefs;
    }
.end annotation


# static fields
.field static final endobj:[B

.field static final endstream:[B

.field static final pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

.field public static unethicalreading:Z


# instance fields
.field protected acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

.field protected acroFormParsed:Z

.field private appendable:Z

.field protected catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected certificate:Ljava/security/cert/Certificate;

.field protected certificateKey:Ljava/security/Key;

.field protected certificateKeyProvider:Ljava/lang/String;

.field protected consolidateNamedDestinations:Z

.field private cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

.field protected decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

.field protected encrypted:Z

.field private encryptionError:Z

.field protected eofPos:J

.field private fileLength:J

.field protected freeXref:I

.field private hybridXref:Z

.field protected lastXref:J

.field private lastXrefPartial:I

.field protected newXrefType:Z

.field private objGen:I

.field private objNum:I

.field protected objStmMark:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/IntHashtable;",
            ">;"
        }
    .end annotation
.end field

.field protected objStmToOffset:Lcom/itextpdf/text/pdf/LongHashtable;

.field private ownerPasswordUsed:Z

.field protected pValue:I

.field protected pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

.field private partial:Z

.field protected password:[B

.field protected pdfVersion:C

.field protected rValue:I

.field private readDepth:I

.field protected rebuilt:Z

.field protected remoteToLocalNamedDestinations:Z

.field rootPages:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected sharedStreams:Z

.field protected strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfString;",
            ">;"
        }
    .end annotation
.end field

.field protected tampered:Z

.field protected tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

.field protected trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private final viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

.field protected xref:[J

.field private xrefObj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    sput-boolean v2, Lcom/itextpdf/text/pdf/PdfReader;->unethicalreading:Z

    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ROTATE:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CROPBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    .line 98
    const-string v0, "endstream"

    invoke-static {v0, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfReader;->endstream:[B

    .line 99
    const-string v0, "endobj"

    invoke-static {v0, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfReader;->endobj:[B

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 117
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 119
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 127
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 132
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 143
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1615
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 3
    .parameter "reader"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 115
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 116
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 117
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 119
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 124
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 125
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 126
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 127
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 131
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 132
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 139
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 143
    new-instance v1, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1615
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 269
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->appendable:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->appendable:Z

    .line 270
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 271
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 272
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 273
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 274
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 275
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 276
    iget-char v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->pdfVersion:C

    iput-char v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->pdfVersion:C

    .line 277
    iget-wide v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->eofPos:J

    iput-wide v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->eofPos:J

    .line 278
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    .line 279
    iget-wide v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:J

    iput-wide v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:J

    .line 280
    new-instance v1, Lcom/itextpdf/text/pdf/PRTokeniser;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 281
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    if-eqz v1, :cond_0

    .line 282
    new-instance v1, Lcom/itextpdf/text/pdf/PdfEncryption;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfEncryption;-><init>(Lcom/itextpdf/text/pdf/PdfEncryption;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 283
    :cond_0
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->pValue:I

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->pValue:I

    .line 284
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    .line 286
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 287
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v1, p0}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_1
    new-instance v1, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-direct {v1, v2, p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;-><init>(Lcom/itextpdf/text/pdf/PdfReader$PageRefs;Lcom/itextpdf/text/pdf/PdfReader;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    .line 290
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v1, p0}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 291
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 292
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rootPages:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 293
    iget-wide v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->fileLength:J

    iput-wide v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->fileLength:J

    .line 294
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    .line 295
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->hybridXref:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->hybridXref:Z

    .line 296
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/LongHashtable;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/LongHashtable;

    .line 297
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    .line 298
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-static {v1, p0}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 299
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->ownerPasswordUsed:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->ownerPasswordUsed:Z

    .line 300
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;[B)V
    .locals 3
    .parameter "raf"
    .parameter "ownerPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 117
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 119
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 127
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 130
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 132
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 143
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1615
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 259
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 260
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    .line 261
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 262
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPdfPartial()V

    .line 263
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Ljava/io/InputStream;[B)V

    .line 247
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 2
    .parameter "is"
    .parameter "ownerPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 117
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 119
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 127
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 132
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 143
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1615
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 234
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 235
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser;

    new-instance v1, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 236
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPdf()V

    .line 237
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Ljava/lang/String;[B)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/Certificate;Ljava/security/Key;Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "certificate"
    .parameter "certificateKey"
    .parameter "certificateKeyProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 117
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 119
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 127
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 132
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 143
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1615
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 200
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 201
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 202
    iput-object p4, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 203
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 204
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPdf()V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .parameter "filename"
    .parameter "ownerPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 117
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 119
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 127
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 132
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 143
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1615
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 168
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 169
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 170
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPdf()V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Ljava/net/URL;[B)V

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;[B)V
    .locals 2
    .parameter "url"
    .parameter "ownerPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 117
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 119
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 127
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 132
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 143
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1615
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 221
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 222
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser;

    new-instance v1, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/net/URL;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 223
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPdf()V

    .line 224
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "pdfIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfReader;-><init>([B[B)V

    .line 179
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 2
    .parameter "pdfIn"
    .parameter "ownerPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 117
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 119
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 127
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 132
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 143
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1615
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 187
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 188
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 189
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPdf()V

    .line 190
    return-void
.end method

.method public static ASCII85Decode([B)[B
    .locals 14
    .parameter "in"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1894
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1895
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 1896
    .local v6, state:I
    new-array v1, v12, [I

    .line 1897
    .local v1, chn:[I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    array-length v7, p0

    if-ge v3, v7, :cond_0

    .line 1898
    aget-byte v7, p0, v3

    and-int/lit16 v0, v7, 0xff

    .line 1899
    .local v0, ch:I
    const/16 v7, 0x7e

    if-ne v0, v7, :cond_2

    .line 1925
    .end local v0           #ch:I
    :cond_0
    const/4 v5, 0x0

    .line 1929
    .local v5, r:I
    if-ne v6, v11, :cond_9

    .line 1930
    aget v7, v1, v9

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    aget v8, v1, v10

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    add-int/2addr v7, v8

    const v8, 0x95eed

    add-int/2addr v7, v8

    add-int/lit16 v7, v7, 0x1c39

    add-int/lit8 v5, v7, 0x55

    .line 1931
    shr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1944
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 1901
    .end local v5           #r:I
    .restart local v0       #ch:I
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1897
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1903
    :cond_4
    const/16 v7, 0x7a

    if-ne v0, v7, :cond_5

    if-nez v6, :cond_5

    .line 1904
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1905
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1906
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1907
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 1910
    :cond_5
    const/16 v7, 0x21

    if-lt v0, v7, :cond_6

    const/16 v7, 0x75

    if-le v0, v7, :cond_7

    .line 1911
    :cond_6
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "illegal.character.in.ascii85decode"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1912
    :cond_7
    add-int/lit8 v7, v0, -0x21

    aput v7, v1, v6

    .line 1913
    add-int/lit8 v6, v6, 0x1

    .line 1914
    if-ne v6, v12, :cond_3

    .line 1915
    const/4 v6, 0x0

    .line 1916
    const/4 v5, 0x0

    .line 1917
    .restart local v5       #r:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-ge v2, v12, :cond_8

    .line 1918
    mul-int/lit8 v7, v5, 0x55

    aget v8, v1, v2

    add-int v5, v7, v8

    .line 1917
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1919
    :cond_8
    shr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1920
    shr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1921
    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1922
    int-to-byte v7, v5

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 1933
    .end local v0           #ch:I
    .end local v2           #j:I
    :cond_9
    if-ne v6, v13, :cond_a

    .line 1934
    aget v7, v1, v9

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    aget v8, v1, v10

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    add-int/2addr v7, v8

    aget v8, v1, v11

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    add-int/2addr v7, v8

    add-int/lit16 v7, v7, 0x1c39

    add-int/lit8 v5, v7, 0x55

    .line 1935
    shr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1936
    shr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 1938
    :cond_a
    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 1939
    aget v7, v1, v9

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    aget v8, v1, v10

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    add-int/2addr v7, v8

    aget v8, v1, v11

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    add-int/2addr v7, v8

    aget v8, v1, v13

    mul-int/lit8 v8, v8, 0x55

    add-int/2addr v7, v8

    add-int/lit8 v5, v7, 0x55

    .line 1940
    shr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1941
    shr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1942
    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1
.end method

.method public static ASCIIHexDecode([B)[B
    .locals 9
    .parameter "in"

    .prologue
    const/4 v6, 0x0

    .line 1866
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1867
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x1

    .line 1868
    .local v1, first:Z
    const/4 v4, 0x0

    .line 1869
    .local v4, n1:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v7, p0

    if-ge v2, v7, :cond_0

    .line 1870
    aget-byte v7, p0, v2

    and-int/lit16 v0, v7, 0xff

    .line 1871
    .local v0, ch:I
    const/16 v7, 0x3e

    if-ne v0, v7, :cond_2

    .line 1884
    .end local v0           #ch:I
    :cond_0
    if-nez v1, :cond_1

    .line 1885
    shl-int/lit8 v6, v4, 0x4

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1886
    :cond_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .line 1873
    .restart local v0       #ch:I
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1869
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1875
    :cond_3
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->getHex(I)I

    move-result v3

    .line 1876
    .local v3, n:I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_4

    .line 1877
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "illegal.character.in.asciihexdecode"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1878
    :cond_4
    if-eqz v1, :cond_5

    .line 1879
    move v4, v3

    .line 1882
    :goto_2
    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_3
    goto :goto_1

    .line 1881
    :cond_5
    shl-int/lit8 v7, v4, 0x4

    add-int/2addr v7, v3

    int-to-byte v7, v7

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_6
    move v1, v6

    .line 1882
    goto :goto_3
.end method

.method public static FlateDecode([B)[B
    .locals 2
    .parameter "in"

    .prologue
    .line 1714
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->FlateDecode([BZ)[B

    move-result-object v0

    .line 1715
    .local v0, b:[B
    if-nez v0, :cond_0

    .line 1716
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->FlateDecode([BZ)[B

    move-result-object v0

    .line 1717
    .end local v0           #b:[B
    :cond_0
    return-object v0
.end method

.method public static FlateDecode([BZ)[B
    .locals 7
    .parameter "in"
    .parameter "strict"

    .prologue
    .line 1841
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1842
    .local v4, stream:Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1843
    .local v5, zip:Ljava/util/zip/InflaterInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1844
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_0

    const/16 v6, 0xffc

    :goto_0
    new-array v0, v6, [B

    .line 1847
    .local v0, b:[B
    :goto_1
    :try_start_0
    invoke-virtual {v5, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v2

    .local v2, n:I
    if-ltz v2, :cond_1

    .line 1848
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 1854
    .end local v2           #n:I
    :catch_0
    move-exception v1

    .line 1855
    .local v1, e:Ljava/lang/Exception;
    if-eqz p1, :cond_2

    .line 1856
    const/4 v6, 0x0

    .line 1857
    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    return-object v6

    .line 1844
    .end local v0           #b:[B
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 1850
    .restart local v0       #b:[B
    .restart local v2       #n:I
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 1851
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1852
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_2

    .line 1857
    .end local v2           #n:I
    .restart local v1       #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_2
.end method

.method public static LZWDecode([B)[B
    .locals 3
    .parameter "in"

    .prologue
    .line 1952
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1953
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/itextpdf/text/pdf/LZWDecoder;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/LZWDecoder;-><init>()V

    .line 1954
    .local v0, lzw:Lcom/itextpdf/text/pdf/LZWDecoder;
    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/text/pdf/LZWDecoder;->decode([BLjava/io/OutputStream;)V

    .line 1955
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method static synthetic access$200(Lcom/itextpdf/text/pdf/PdfReader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    return v0
.end method

.method static synthetic access$300(Lcom/itextpdf/text/pdf/PdfReader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    return v0
.end method

.method static synthetic access$302(Lcom/itextpdf/text/pdf/PdfReader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    return p1
.end method

.method static synthetic access$400(Lcom/itextpdf/text/pdf/PdfReader;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkPRStreamLength(Lcom/itextpdf/text/pdf/PRStream;)V
    .locals 20
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PRTokeniser;->length()J

    move-result-wide v3

    .line 1170
    .local v3, fileLength:J
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PRStream;->getOffset()J

    move-result-wide v11

    .line 1171
    .local v11, start:J
    const/4 v2, 0x0

    .line 1172
    .local v2, calc:Z
    const-wide/16 v13, 0x0

    .line 1173
    .local v13, streamLength:J
    sget-object v16, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 1174
    .local v7, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 1175
    check-cast v7, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v16

    move/from16 v0, v16

    int-to-long v13, v0

    .line 1176
    add-long v16, v13, v11

    const-wide/16 v18, 0x14

    sub-long v18, v3, v18

    cmp-long v16, v16, v18

    if-lez v16, :cond_3

    .line 1177
    const/4 v2, 0x1

    .line 1190
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 1191
    const/16 v16, 0x10

    move/from16 v0, v16

    new-array v15, v0, [B

    .line 1192
    .local v15, tline:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1194
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()J

    move-result-wide v8

    .line 1195
    .local v8, pos:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/PRTokeniser;->readLineSegment([B)Z

    move-result v16

    if-nez v16, :cond_5

    .line 1212
    .end local v8           #pos:J
    .end local v15           #tline:[B
    :cond_2
    :goto_1
    long-to-int v0, v13

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->setLength(I)V

    .line 1213
    return-void

    .line 1179
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v16, v0

    add-long v17, v11, v13

    invoke-virtual/range {v16 .. v18}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v16, v0

    const/16 v17, 0x14

    invoke-virtual/range {v16 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->readString(I)Ljava/lang/String;

    move-result-object v6

    .line 1181
    .local v6, line:Ljava/lang/String;
    const-string v16, "\nendstream"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "\r\nendstream"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "\rendstream"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "endstream"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 1185
    const/4 v2, 0x1

    goto :goto_0

    .line 1189
    .end local v6           #line:Ljava/lang/String;
    .restart local v7       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 1197
    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v8       #pos:J
    .restart local v15       #tline:[B
    :cond_5
    sget-object v16, Lcom/itextpdf/text/pdf/PdfReader;->endstream:[B

    invoke-static/range {v15 .. v16}, Lcom/itextpdf/text/pdf/PdfReader;->equalsn([B[B)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1198
    sub-long v13, v8, v11

    .line 1199
    goto :goto_1

    .line 1201
    :cond_6
    sget-object v16, Lcom/itextpdf/text/pdf/PdfReader;->endobj:[B

    invoke-static/range {v15 .. v16}, Lcom/itextpdf/text/pdf/PdfReader;->equalsn([B[B)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x10

    sub-long v17, v8, v17

    invoke-virtual/range {v16 .. v18}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v16, v0

    const/16 v17, 0x10

    invoke-virtual/range {v16 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->readString(I)Ljava/lang/String;

    move-result-object v10

    .line 1204
    .local v10, s:Ljava/lang/String;
    const-string v16, "endstream"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1205
    .local v5, index:I
    if-ltz v5, :cond_7

    .line 1206
    const-wide/16 v16, 0x10

    sub-long v16, v8, v16

    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v8, v16, v18

    .line 1207
    :cond_7
    sub-long v13, v8, v11

    .line 1208
    goto/16 :goto_1
.end method

.method private convertNamedDestination(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)Z
    .locals 10
    .parameter "obj"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2871
    .local p2, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p1

    .line 2872
    iget v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 2873
    .local v6, objIdx:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 2874
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, p1

    .line 2875
    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 2876
    .local v3, ob2:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v3, :cond_2

    .line 2877
    iget v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 2878
    .local v5, obj2Idx:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    move-object v1, v3

    .line 2879
    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2880
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfName;

    .line 2881
    .local v7, type:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->GOTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v7}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2882
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 2883
    .local v4, ob3:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v2, 0x0

    .line 2884
    .local v2, name:Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 2885
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2886
    move-object v2, v4

    .line 2889
    .end local v2           #name:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2890
    .local v0, dest:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_2

    .line 2891
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2892
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->NEWWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2893
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->GOTO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2894
    invoke-direct {p0, v5, v3}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2895
    invoke-direct {p0, v6, p1}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2896
    const/4 v8, 0x1

    .line 2902
    .end local v0           #dest:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v4           #ob3:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v5           #obj2Idx:I
    .end local v7           #type:Lcom/itextpdf/text/pdf/PdfName;
    :goto_1
    return v8

    .line 2887
    .restart local v1       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v2       #name:Ljava/lang/Object;
    .restart local v3       #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v4       #ob3:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v5       #obj2Idx:I
    .restart local v7       #type:Lcom/itextpdf/text/pdf/PdfName;
    :cond_1
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2888
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, name:Ljava/lang/String;
    goto :goto_0

    .line 2902
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v4           #ob3:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v5           #obj2Idx:I
    .end local v7           #type:Lcom/itextpdf/text/pdf/PdfName;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static decodeBytes([BLcom/itextpdf/text/pdf/PdfDictionary;)[B
    .locals 1
    .parameter "b"
    .parameter "streamDictionary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2201
    invoke-static {}, Lcom/itextpdf/text/pdf/FilterHandlers;->getDefaultFilterHandlers()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfReader;->decodeBytes([BLcom/itextpdf/text/pdf/PdfDictionary;Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBytes([BLcom/itextpdf/text/pdf/PdfDictionary;Ljava/util/Map;)[B
    .locals 15
    .parameter "b"
    .parameter "streamDictionary"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "Ljava/util/Map",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2214
    .local p2, filterHandlers:Ljava/util/Map;,"Ljava/util/Map<Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;>;"
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 2216
    .local v5, filter:Lcom/itextpdf/text/pdf/PdfObject;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2217
    .local v8, filters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    if-eqz v5, :cond_0

    .line 2218
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2219
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2223
    .end local v5           #filter:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2224
    .local v2, dp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DECODEPARMS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 2225
    .local v4, dpo:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v10

    if-nez v10, :cond_2

    .line 2226
    :cond_1
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 2227
    :cond_2
    if-eqz v4, :cond_3

    .line 2228
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2229
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2233
    .end local v4           #dpo:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    :goto_1
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 2234
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfName;

    .line 2235
    .local v7, filterName:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;

    .line 2236
    .local v6, filterHandler:Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;
    if-nez v6, :cond_6

    .line 2237
    new-instance v10, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string v11, "the.filter.1.is.not.supported"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-static {v11, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2220
    .end local v2           #dp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v6           #filterHandler:Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;
    .end local v7           #filterName:Lcom/itextpdf/text/pdf/PdfName;
    .end local v9           #j:I
    .restart local v5       #filter:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2221
    check-cast v5, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v5           #filter:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->getArrayList()Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_0

    .line 2230
    .restart local v2       #dp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .restart local v4       #dpo:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2231
    check-cast v4, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v4           #dpo:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->getArrayList()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    .line 2240
    .restart local v6       #filterHandler:Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;
    .restart local v7       #filterName:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v9       #j:I
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 2241
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 2242
    .local v3, dpEntry:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v10, v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v10, :cond_7

    move-object v1, v3

    .line 2243
    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2253
    .end local v3           #dpEntry:Lcom/itextpdf/text/pdf/PdfObject;
    .local v1, decodeParams:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v6, p0, v7, v1, v0}, Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;->decode([BLcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfDictionary;)[B

    move-result-object p0

    .line 2233
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2244
    .end local v1           #decodeParams:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v3       #dpEntry:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_7
    if-eqz v3, :cond_8

    instance-of v10, v3, Lcom/itextpdf/text/pdf/PdfNull;

    if-eqz v10, :cond_9

    .line 2245
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #decodeParams:Lcom/itextpdf/text/pdf/PdfDictionary;
    goto :goto_3

    .line 2247
    .end local v1           #decodeParams:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_9
    new-instance v10, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string v11, "the.decode.parameter.type.1.is.not.supported"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2251
    .end local v3           #dpEntry:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #decodeParams:Lcom/itextpdf/text/pdf/PdfDictionary;
    goto :goto_3

    .line 2255
    .end local v1           #decodeParams:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v6           #filterHandler:Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;
    .end local v7           #filterName:Lcom/itextpdf/text/pdf/PdfName;
    :cond_b
    return-object p0
.end method

.method public static decodePredictor([BLcom/itextpdf/text/pdf/PdfObject;)[B
    .locals 29
    .parameter "in"
    .parameter "dicPar"

    .prologue
    .line 1726
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v26

    if-nez v26, :cond_1

    .line 1765
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    move-object/from16 v11, p1

    .line 1728
    check-cast v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1729
    .local v11, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v26, Lcom/itextpdf/text/pdf/PdfName;->PREDICTOR:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 1730
    .local v16, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1732
    check-cast v16, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v16           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v21

    .line 1733
    .local v21, predictor:I
    const/16 v26, 0xa

    move/from16 v0, v21

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    .line 1735
    const/16 v25, 0x1

    .line 1736
    .local v25, width:I
    sget-object v26, Lcom/itextpdf/text/pdf/PdfName;->COLUMNS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 1737
    .restart local v16       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1738
    check-cast v16, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v16           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v25

    .line 1739
    :cond_2
    const/4 v8, 0x1

    .line 1740
    .local v8, colors:I
    sget-object v26, Lcom/itextpdf/text/pdf/PdfName;->COLORS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 1741
    .restart local v16       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 1742
    check-cast v16, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v16           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v8

    .line 1743
    :cond_3
    const/16 v4, 0x8

    .line 1744
    .local v4, bpc:I
    sget-object v26, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 1745
    .restart local v16       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 1746
    check-cast v16, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v16           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 1747
    :cond_4
    new-instance v10, Ljava/io/DataInputStream;

    new-instance v26, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1748
    .local v10, dataStream:Ljava/io/DataInputStream;
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1749
    .local v14, fout:Ljava/io/ByteArrayOutputStream;
    mul-int v26, v8, v4

    div-int/lit8 v5, v26, 0x8

    .line 1750
    .local v5, bytesPerPixel:I
    mul-int v26, v8, v25

    mul-int v26, v26, v4

    add-int/lit8 v26, v26, 0x7

    div-int/lit8 v6, v26, 0x8

    .line 1751
    .local v6, bytesPerRow:I
    new-array v9, v6, [B

    .line 1752
    .local v9, curr:[B
    new-array v0, v6, [B

    move-object/from16 v22, v0

    .line 1757
    .local v22, prior:[B
    :goto_1
    const/4 v13, 0x0

    .line 1759
    .local v13, filter:I
    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v13

    .line 1760
    if-gez v13, :cond_5

    .line 1761
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto/16 :goto_0

    .line 1763
    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v10, v9, v0, v6}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1768
    packed-switch v13, :pswitch_data_0

    .line 1818
    new-instance v26, Ljava/lang/RuntimeException;

    const-string v27, "png.filter.unknown"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 1764
    :catch_0
    move-exception v12

    .line 1765
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto/16 :goto_0

    .line 1772
    .end local v12           #e:Ljava/lang/Exception;
    :pswitch_0
    move v15, v5

    .local v15, i:I
    :goto_2
    if-ge v15, v6, :cond_a

    .line 1773
    aget-byte v26, v9, v15

    sub-int v27, v15, v5

    aget-byte v27, v9, v27

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v9, v15

    .line 1772
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1777
    .end local v15           #i:I
    :pswitch_1
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_3
    if-ge v15, v6, :cond_a

    .line 1778
    aget-byte v26, v9, v15

    aget-byte v27, v22, v15

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v9, v15

    .line 1777
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1782
    .end local v15           #i:I
    :pswitch_2
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_4
    if-ge v15, v5, :cond_6

    .line 1783
    aget-byte v26, v9, v15

    aget-byte v27, v22, v15

    div-int/lit8 v27, v27, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v9, v15

    .line 1782
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1785
    :cond_6
    move v15, v5

    :goto_5
    if-ge v15, v6, :cond_a

    .line 1786
    aget-byte v26, v9, v15

    sub-int v27, v15, v5

    aget-byte v27, v9, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    aget-byte v28, v22, v15

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    add-int v27, v27, v28

    div-int/lit8 v27, v27, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v9, v15

    .line 1785
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1790
    .end local v15           #i:I
    :pswitch_3
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_6
    if-ge v15, v5, :cond_7

    .line 1791
    aget-byte v26, v9, v15

    aget-byte v27, v22, v15

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v9, v15

    .line 1790
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1794
    :cond_7
    move v15, v5

    :goto_7
    if-ge v15, v6, :cond_a

    .line 1795
    sub-int v26, v15, v5

    aget-byte v26, v9, v26

    move/from16 v0, v26

    and-int/lit16 v2, v0, 0xff

    .line 1796
    .local v2, a:I
    aget-byte v26, v22, v15

    move/from16 v0, v26

    and-int/lit16 v3, v0, 0xff

    .line 1797
    .local v3, b:I
    sub-int v26, v15, v5

    aget-byte v26, v22, v26

    move/from16 v0, v26

    and-int/lit16 v7, v0, 0xff

    .line 1799
    .local v7, c:I
    add-int v26, v2, v3

    sub-int v17, v26, v7

    .line 1800
    .local v17, p:I
    sub-int v26, v17, v2

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v18

    .line 1801
    .local v18, pa:I
    sub-int v26, v17, v3

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 1802
    .local v19, pb:I
    sub-int v26, v17, v7

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 1806
    .local v20, pc:I
    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    .line 1807
    move/from16 v23, v2

    .line 1813
    .local v23, ret:I
    :goto_8
    aget-byte v26, v9, v15

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v9, v15

    .line 1794
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 1808
    .end local v23           #ret:I
    :cond_8
    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_9

    .line 1809
    move/from16 v23, v3

    .restart local v23       #ret:I
    goto :goto_8

    .line 1811
    .end local v23           #ret:I
    :cond_9
    move/from16 v23, v7

    .restart local v23       #ret:I
    goto :goto_8

    .line 1821
    .end local v2           #a:I
    .end local v3           #b:I
    .end local v7           #c:I
    .end local v15           #i:I
    .end local v17           #p:I
    .end local v18           #pa:I
    .end local v19           #pb:I
    .end local v20           #pc:I
    .end local v23           #ret:I
    :cond_a
    :pswitch_4
    :try_start_1
    invoke-virtual {v14, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1828
    :goto_9
    move-object/from16 v24, v22

    .line 1829
    .local v24, tmp:[B
    move-object/from16 v22, v9

    .line 1830
    move-object/from16 v9, v24

    .line 1831
    goto/16 :goto_1

    .line 1823
    .end local v24           #tmp:[B
    :catch_1
    move-exception v26

    goto :goto_9

    .line 1768
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected static duplicatePdfDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 4
    .parameter "original"
    .parameter "copy"
    .parameter "newReader"

    .prologue
    .line 2986
    if-nez p1, :cond_0

    .line 2987
    new-instance p1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local p1
    invoke-direct {p1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 2988
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .local v0, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v2, v0

    .line 2989
    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .line 2990
    .local v2, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 2992
    .end local v0           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v2           #key:Lcom/itextpdf/text/pdf/PdfName;
    :cond_1
    return-object p1
.end method

.method protected static duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 6
    .parameter "original"
    .parameter "newReader"

    .prologue
    const/4 v0, 0x0

    .line 2996
    if-nez p0, :cond_0

    move-object v3, v0

    .line 3020
    .end local p0
    :goto_0
    return-object v3

    .line 2998
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move-object v3, p0

    .line 3020
    goto :goto_0

    .line 3000
    :pswitch_1
    check-cast p0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local p0
    invoke-static {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    goto :goto_0

    .restart local p0
    :pswitch_2
    move-object v2, p0

    .line 3003
    check-cast v2, Lcom/itextpdf/text/pdf/PRStream;

    .line 3004
    .local v2, org:Lcom/itextpdf/text/pdf/PRStream;
    new-instance v3, Lcom/itextpdf/text/pdf/PRStream;

    invoke-direct {v3, v2, v0, p1}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 3005
    .local v3, stream:Lcom/itextpdf/text/pdf/PRStream;
    invoke-static {v2, v3, p1}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfDictionary;

    goto :goto_0

    .line 3009
    .end local v2           #org:Lcom/itextpdf/text/pdf/PRStream;
    .end local v3           #stream:Lcom/itextpdf/text/pdf/PRStream;
    :pswitch_3
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 3010
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast p0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local p0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3011
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v4, p1}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_1

    :cond_1
    move-object v3, v0

    .line 3013
    goto :goto_0

    .end local v0           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .restart local p0
    :pswitch_4
    move-object v2, p0

    .line 3016
    check-cast v2, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 3017
    .local v2, org:Lcom/itextpdf/text/pdf/PRIndirectReference;
    new-instance v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v4

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getGeneration()I

    move-result v5

    invoke-direct {v3, p1, v4, v5}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;II)V

    goto :goto_0

    .line 2998
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private ensureXrefSize(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 1288
    if-nez p1, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    if-nez v1, :cond_2

    .line 1291
    new-array v1, p1, [J

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    goto :goto_0

    .line 1293
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    array-length v1, v1

    if-ge v1, p1, :cond_0

    .line 1294
    new-array v0, p1, [J

    .line 1295
    .local v0, xref2:[J
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1296
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    goto :goto_0
.end method

.method private equalsArray([B[BI)Z
    .locals 3
    .parameter "ar1"
    .parameter "ar2"
    .parameter "size"

    .prologue
    .line 570
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 571
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_0

    .line 572
    const/4 v1, 0x0

    .line 574
    :goto_1
    return v1

    .line 570
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static equalsn([B[B)Z
    .locals 4
    .parameter "a1"
    .parameter "a2"

    .prologue
    .line 2506
    array-length v1, p1

    .line 2507
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2508
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_0

    .line 2509
    const/4 v2, 0x0

    .line 2511
    :goto_1
    return v2

    .line 2507
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2511
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method static existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z
    .locals 3
    .parameter "dic"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2515
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 2516
    .local v1, type:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2517
    :cond_0
    const/4 v2, 0x0

    .line 2519
    :goto_0
    return v2

    :cond_1
    move-object v0, v1

    .line 2518
    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .line 2519
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method static getFontName(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;
    .locals 3
    .parameter "dic"

    .prologue
    const/4 v1, 0x0

    .line 2523
    if-nez p0, :cond_1

    .line 2528
    :cond_0
    :goto_0
    return-object v1

    .line 2525
    :cond_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 2526
    .local v0, type:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2528
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getNameArray(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 2643
    if-nez p0, :cond_0

    move-object p0, v1

    .line 2655
    .end local p0
    :goto_0
    return-object p0

    .line 2645
    .restart local p0
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p0

    .line 2646
    if-nez p0, :cond_1

    move-object p0, v1

    .line 2647
    goto :goto_0

    .line 2648
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2649
    check-cast p0, Lcom/itextpdf/text/pdf/PdfArray;

    goto :goto_0

    .line 2650
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2651
    check-cast p0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local p0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 2652
    .local v0, arr2:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2653
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #arr2:Lcom/itextpdf/text/pdf/PdfObject;
    move-object p0, v0

    goto :goto_0

    .restart local v0       #arr2:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    move-object p0, v1

    .line 2655
    goto :goto_0
.end method

.method public static getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;
    .locals 9
    .parameter "box"

    .prologue
    .line 484
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v0

    .line 485
    .local v0, llx:F
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v1

    .line 486
    .local v1, lly:F
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    .line 487
    .local v2, urx:F
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    .line 488
    .local v3, ury:F
    new-instance v4, Lcom/itextpdf/text/Rectangle;

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    return-object v4
.end method

.method public static getPageContent(Lcom/itextpdf/text/pdf/PdfDictionary;)[B
    .locals 10
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2053
    if-nez p0, :cond_1

    .line 2054
    const/4 v8, 0x0

    .line 2092
    :cond_0
    :goto_0
    return-object v8

    .line 2055
    :cond_1
    const/4 v7, 0x0

    .line 2057
    .local v7, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_0
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 2058
    .local v4, contents:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v4, :cond_2

    .line 2059
    const/4 v8, 0x0

    new-array v8, v8, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2090
    if-eqz v7, :cond_0

    .line 2091
    :try_start_1
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2092
    :catch_0
    move-exception v9

    goto :goto_0

    .line 2060
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2061
    if-nez v7, :cond_3

    .line 2062
    move-object v0, v4

    check-cast v0, Lcom/itextpdf/text/pdf/PRStream;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRStream;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v7

    .line 2063
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2065
    :cond_3
    check-cast v4, Lcom/itextpdf/text/pdf/PRStream;

    .end local v4           #contents:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v4, v7}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 2090
    if-eqz v7, :cond_0

    .line 2091
    :try_start_3
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 2092
    :catch_1
    move-exception v9

    goto :goto_0

    .line 2067
    .restart local v4       #contents:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2068
    move-object v0, v4

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    move-object v1, v0

    .line 2069
    .local v1, array:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2070
    .local v3, bout:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .local v6, k:I
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_9

    .line 2071
    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 2072
    .local v5, item:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v8

    if-nez v8, :cond_6

    .line 2070
    .end local v5           #item:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2074
    .restart local v5       #item:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_6
    if-nez v7, :cond_7

    .line 2075
    move-object v0, v5

    check-cast v0, Lcom/itextpdf/text/pdf/PRStream;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRStream;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v7

    .line 2076
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2078
    :cond_7
    check-cast v5, Lcom/itextpdf/text/pdf/PRStream;

    .end local v5           #item:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v5, v7}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v2

    .line 2079
    .local v2, b:[B
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2080
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v6, v8, :cond_5

    .line 2081
    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 2089
    .end local v1           #array:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #b:[B
    .end local v3           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v4           #contents:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v6           #k:I
    :catchall_0
    move-exception v8

    .line 2090
    if-eqz v7, :cond_8

    .line 2091
    :try_start_5
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2092
    :cond_8
    :goto_3
    throw v8

    .line 2083
    .restart local v1       #array:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v3       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #contents:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v6       #k:I
    :cond_9
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v8

    .line 2090
    if-eqz v7, :cond_0

    .line 2091
    :try_start_7
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 2092
    :catch_2
    move-exception v9

    goto/16 :goto_0

    .line 2086
    .end local v1           #array:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v6           #k:I
    :cond_a
    const/4 v8, 0x0

    :try_start_8
    new-array v8, v8, [B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2090
    if-eqz v7, :cond_0

    .line 2091
    :try_start_9
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 2092
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .end local v4           #contents:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_4
    move-exception v9

    goto :goto_3
.end method

.method public static getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v6, 0x0

    .line 835
    if-nez p0, :cond_1

    move-object p0, v6

    .line 862
    .local v1, appendable:Z
    .local v3, idx:I
    .local v5, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_0
    :goto_0
    return-object p0

    .line 837
    .end local v1           #appendable:Z
    .end local v3           #idx:I
    .end local v5           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 840
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-object v5, v0

    .line 841
    .restart local v5       #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v3

    .line 842
    .restart local v3       #idx:I
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v7

    iget-boolean v1, v7, Lcom/itextpdf/text/pdf/PdfReader;->appendable:Z

    .line 843
    .restart local v1       #appendable:Z
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p0

    .line 844
    if-nez p0, :cond_2

    move-object p0, v6

    .line 845
    goto :goto_0

    .line 848
    :cond_2
    if-eqz v1, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 860
    :goto_1
    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfObject;->setIndRef(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 865
    .end local v1           #appendable:Z
    .end local v3           #idx:I
    .end local v5           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :catch_0
    move-exception v2

    .line 866
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v6, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 851
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #appendable:Z
    .restart local v3       #idx:I
    .restart local v5       #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :sswitch_0
    :try_start_1
    new-instance v4, Lcom/itextpdf/text/pdf/PdfNull;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfNull;-><init>()V

    .end local p0
    .local v4, obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object p0, v4

    .line 852
    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local p0
    goto :goto_1

    .line 854
    :sswitch_1
    new-instance v4, Lcom/itextpdf/text/pdf/PdfBoolean;

    move-object v0, p0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfBoolean;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfBoolean;->booleanValue()Z

    move-result v6

    invoke-direct {v4, v6}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    .end local p0
    .restart local v4       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object p0, v4

    .line 855
    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local p0
    goto :goto_1

    .line 857
    :sswitch_2
    new-instance v4, Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->getBytes()[B

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local p0
    .restart local v4       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object p0, v4

    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local p0
    goto :goto_1

    .line 849
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 3
    .parameter "obj"
    .parameter "parent"

    .prologue
    .line 890
    if-nez p0, :cond_1

    .line 891
    const/4 p0, 0x0

    .line 910
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 892
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v2

    if-nez v2, :cond_2

    .line 893
    const/4 v1, 0x0

    .line 894
    .local v1, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->getIndRef()Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->isAppendable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 906
    :goto_1
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfObject;->setIndRef(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    goto :goto_0

    .line 897
    :sswitch_0
    new-instance p0, Lcom/itextpdf/text/pdf/PdfNull;

    .end local p0
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfNull;-><init>()V

    .line 898
    .restart local p0
    goto :goto_1

    .line 900
    :sswitch_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfBoolean;

    check-cast p0, Lcom/itextpdf/text/pdf/PdfBoolean;

    .end local p0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfBoolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    .local v0, obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object p0, v0

    .line 901
    .end local v0           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local p0
    goto :goto_1

    .line 903
    :sswitch_2
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>([B)V

    .end local p0
    .restart local v0       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object p0, v0

    .end local v0           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local p0
    goto :goto_1

    .line 910
    .end local v1           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_2
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p0

    goto :goto_0

    .line 895
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "obj"

    .prologue
    .line 822
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 823
    .local v0, obj2:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 824
    return-object v0
.end method

.method public static getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "obj"
    .parameter "parent"

    .prologue
    .line 879
    invoke-static {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 880
    .local v0, obj2:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 881
    return-object v0
.end method

.method public static getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2275
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    .line 2277
    .local v0, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2278
    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2281
    :try_start_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    .locals 2
    .parameter "stream"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2265
    invoke-static {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v0

    .line 2266
    .local v0, b:[B
    invoke-static {v0, p0}, Lcom/itextpdf/text/pdf/PdfReader;->decodeBytes([BLcom/itextpdf/text/pdf/PdfDictionary;)[B

    move-result-object v1

    return-object v1
.end method

.method public static getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;)[B
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2333
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    .line 2335
    .local v0, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2336
    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2339
    :try_start_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    .locals 12
    .parameter "stream"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2292
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v6

    .line 2294
    .local v6, reader:Lcom/itextpdf/text/pdf/PdfReader;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getOffset()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 2295
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getBytes()[B

    move-result-object v0

    .line 2324
    .local v0, b:[B
    :cond_0
    :goto_0
    return-object v0

    .line 2297
    .end local v0           #b:[B
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getLength()I

    move-result v8

    new-array v0, v8, [B

    .line 2298
    .restart local v0       #b:[B
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getOffset()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 2299
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 2300
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getDecrypt()Lcom/itextpdf/text/pdf/PdfEncryption;

    move-result-object v1

    .line 2301
    .local v1, decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;
    if-eqz v1, :cond_0

    .line 2302
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 2303
    .local v2, filter:Lcom/itextpdf/text/pdf/PdfObject;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2304
    .local v3, filters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    if-eqz v2, :cond_2

    .line 2305
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2306
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2310
    .end local v2           #filter:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    :goto_1
    const/4 v7, 0x0

    .line 2311
    .local v7, skip:Z
    const/4 v4, 0x0

    .local v4, k:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 2312
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 2313
    .local v5, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/Crypt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2314
    const/4 v7, 0x1

    .line 2318
    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    if-nez v7, :cond_0

    .line 2319
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getObjNum()I

    move-result v8

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getObjGen()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/itextpdf/text/pdf/PdfEncryption;->setHashKey(II)V

    .line 2320
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->decryptByteArray([B)[B

    move-result-object v0

    goto :goto_0

    .line 2307
    .end local v4           #k:I
    .end local v7           #skip:Z
    .restart local v2       #filter:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2308
    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v2           #filter:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->getArrayList()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    .line 2311
    .restart local v4       #k:I
    .restart local v5       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v7       #skip:Z
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method static getSubsetPrefix(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;
    .locals 7
    .parameter "dic"

    .prologue
    const/4 v6, 0x6

    const/4 v3, 0x0

    .line 2532
    if-nez p0, :cond_1

    move-object v2, v3

    .line 2544
    :cond_0
    :goto_0
    return-object v2

    .line 2534
    :cond_1
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getFontName(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v2

    .line 2535
    .local v2, s:Ljava/lang/String;
    if-nez v2, :cond_2

    move-object v2, v3

    .line 2536
    goto :goto_0

    .line 2537
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_4

    :cond_3
    move-object v2, v3

    .line 2538
    goto :goto_0

    .line 2539
    :cond_4
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 2540
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2541
    .local v0, c:C
    const/16 v4, 0x41

    if-lt v0, v4, :cond_5

    const/16 v4, 0x5a

    if-le v0, v4, :cond_6

    :cond_5
    move-object v2, v3

    .line 2542
    goto :goto_0

    .line 2539
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private iterateBookmarks(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)V
    .locals 3
    .parameter "outlineRef"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2818
    .local p2, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 2819
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfReader;->replaceNamedDestination(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)Z

    .line 2820
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2821
    .local v1, outline:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 2822
    .local v0, first:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_0

    .line 2823
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfReader;->iterateBookmarks(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)V

    .line 2825
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->NEXT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p1

    .line 2826
    goto :goto_0

    .line 2827
    .end local v0           #first:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v1           #outline:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    return-void
.end method

.method public static killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 1273
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isNull()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v3, v4

    .line 1284
    :cond_1
    :goto_0
    return-object v3

    .line 1275
    :cond_2
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 1276
    .local v3, ret:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, p0

    .line 1277
    check-cast v2, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 1278
    .local v2, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v1

    .line 1279
    .local v1, reader:Lcom/itextpdf/text/pdf/PdfReader;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v0

    .line 1280
    .local v0, n:I
    iget-object v5, v1, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1281
    iget-boolean v4, v1, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-eqz v4, :cond_1

    .line 1282
    iget-object v4, v1, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    mul-int/lit8 v5, v0, 0x2

    const-wide/16 v6, -0x1

    aput-wide v6, v4, v5

    goto :goto_0
.end method

.method private readDecryptedDocObj()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    if-eqz v2, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 585
    .local v16, encDic:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 587
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->encryptionError:Z

    .line 588
    const/16 v18, 0x0

    .line 589
    .local v18, encryptionKey:[B
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 590
    invoke-static/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 595
    .local v15, enc:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ID:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v12

    .line 596
    .local v12, documentIDs:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v3, 0x0

    .line 597
    .local v3, documentID:[B
    if-eqz v12, :cond_2

    .line 598
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v27

    .line 599
    .local v27, o:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 600
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v32

    .line 601
    .local v32, s:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 602
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 606
    .end local v27           #o:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v32           #s:Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 607
    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 608
    :cond_3
    const/4 v5, 0x0

    .line 609
    .local v5, uValue:[B
    const/4 v6, 0x0

    .line 610
    .local v6, oValue:[B
    const/4 v8, 0x0

    .line 611
    .local v8, cryptoMode:I
    const/16 v25, 0x0

    .line 613
    .local v25, lengthValue:I
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v21

    .line 615
    .local v21, filter:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->STANDARD:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 616
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->U:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v32

    .line 617
    .restart local v32       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->U:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 618
    invoke-static/range {v32 .. v32}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 619
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->O:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v32

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->O:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 621
    invoke-static/range {v32 .. v32}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 622
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->OE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->OE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 624
    :cond_4
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->UE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->UE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 626
    :cond_5
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PERMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PERMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 629
    :cond_6
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v27

    .line 630
    .restart local v27       #o:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-nez v2, :cond_7

    .line 631
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v4, "illegal.p.value"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 632
    :cond_7
    check-cast v27, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v27           #o:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->pValue:I

    .line 634
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v27

    .line 635
    .restart local v27       #o:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-nez v2, :cond_8

    .line 636
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v4, "illegal.r.value"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    move-object/from16 v2, v27

    .line 637
    check-cast v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    .line 639
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    packed-switch v2, :pswitch_data_0

    .line 676
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string v4, "unknown.encryption.type.r.eq.1"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 641
    :pswitch_0
    const/4 v8, 0x0

    .line 778
    .end local v27           #o:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v32           #s:Ljava/lang/String;
    :cond_9
    :goto_1
    new-instance v2, Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfEncryption;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    move/from16 v0, v25

    invoke-virtual {v2, v8, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->setCryptoMode(II)V

    .line 781
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->STANDARD:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 782
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_23

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    invoke-virtual {v2, v15, v4}, Lcom/itextpdf/text/pdf/PdfEncryption;->readKey(Lcom/itextpdf/text/pdf/PdfDictionary;[B)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->ownerPasswordUsed:Z

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfEncryption;->getPermissions()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->pValue:I

    .line 805
    :cond_a
    :goto_2
    const/16 v24, 0x0

    .local v24, k:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_2a

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/itextpdf/text/pdf/PdfString;

    .line 807
    .local v33, str:Lcom/itextpdf/text/pdf/PdfString;
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfString;->decrypt(Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 805
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 644
    .end local v24           #k:I
    .end local v33           #str:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v27       #o:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v32       #s:Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v27

    .line 645
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-nez v2, :cond_b

    .line 646
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v4, "illegal.length.value"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    move-object/from16 v2, v27

    .line 647
    check-cast v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v25

    .line 648
    const/16 v2, 0x80

    move/from16 v0, v25

    if-gt v0, v2, :cond_c

    const/16 v2, 0x28

    move/from16 v0, v25

    if-lt v0, v2, :cond_c

    rem-int/lit8 v2, v25, 0x8

    if-eqz v2, :cond_d

    .line 649
    :cond_c
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v4, "illegal.length.value"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    :cond_d
    const/4 v8, 0x1

    .line 651
    goto/16 :goto_1

    .line 653
    :pswitch_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 654
    .local v11, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v11, :cond_e

    .line 655
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v4, "cf.not.found.encryption"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 656
    :cond_e
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    .end local v11           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 657
    .restart local v11       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v11, :cond_f

    .line 658
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v4, "stdcf.not.found.encryption"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 659
    :cond_f
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->V2:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 660
    const/4 v8, 0x1

    .line 665
    :goto_4
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPTMETADATA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    .line 666
    .local v13, em:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 667
    or-int/lit8 v8, v8, 0x8

    goto/16 :goto_1

    .line 661
    .end local v13           #em:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_10
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AESV2:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 662
    const/4 v8, 0x2

    goto :goto_4

    .line 664
    :cond_11
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string v4, "no.compatible.encryption.found"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 670
    .end local v11           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :pswitch_3
    const/4 v8, 0x3

    .line 671
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPTMETADATA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    .line 672
    .local v14, em5:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 673
    or-int/lit8 v8, v8, 0x8

    goto/16 :goto_1

    .line 679
    .end local v14           #em5:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v27           #o:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v32           #s:Ljava/lang/String;
    :cond_12
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PUBSEC:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 680
    const/16 v22, 0x0

    .line 681
    .local v22, foundRecipient:Z
    const/16 v19, 0x0

    .line 682
    .local v19, envelopedData:[B
    const/16 v31, 0x0

    .line 684
    .local v31, recipients:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v27

    .line 685
    .restart local v27       #o:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-nez v2, :cond_13

    .line 686
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v4, "illegal.v.value"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    move-object/from16 v2, v27

    .line 687
    check-cast v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v34

    .line 688
    .local v34, vValue:I
    packed-switch v34, :pswitch_data_1

    .line 728
    :pswitch_4
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string v4, "unknown.encryption.type.v.eq.1"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 690
    :pswitch_5
    const/4 v8, 0x0

    .line 691
    const/16 v25, 0x28

    .line 692
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RECIPIENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v31

    .end local v31           #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v31, Lcom/itextpdf/text/pdf/PdfArray;

    .line 730
    .restart local v31       #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    :goto_5
    const/16 v23, 0x0

    .local v23, i:I
    :goto_6
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_1e

    .line 731
    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v28

    .line 732
    .local v28, recipient:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 734
    const/4 v9, 0x0

    .line 736
    .local v9, data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    :try_start_0
    new-instance v10, Lorg/bouncycastle/cms/CMSEnvelopedData;

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PdfObject;->getBytes()[B

    move-result-object v2

    invoke-direct {v10, v2}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v9           #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .local v10, data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    :try_start_1
    invoke-virtual {v10}, Lorg/bouncycastle/cms/CMSEnvelopedData;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .line 740
    .local v29, recipientCertificatesIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/bouncycastle/cms/RecipientInformation;>;"
    :cond_14
    :goto_7
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 741
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/bouncycastle/cms/RecipientInformation;

    .line 743
    .local v30, recipientInfo:Lorg/bouncycastle/cms/RecipientInformation;
    invoke-virtual/range {v30 .. v30}, Lorg/bouncycastle/cms/RecipientInformation;->getRID()Lorg/bouncycastle/cms/RecipientId;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/cms/RecipientId;->match(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    if-nez v22, :cond_14

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    check-cast v2, Ljava/security/PrivateKey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v0, v2, v4}, Lcom/itextpdf/text/pdf/PdfEncryptor;->getContent(Lorg/bouncycastle/cms/RecipientInformation;Ljava/security/PrivateKey;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v19

    .line 745
    const/16 v22, 0x1

    goto :goto_7

    .line 695
    .end local v10           #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .end local v23           #i:I
    .end local v28           #recipient:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v29           #recipientCertificatesIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/bouncycastle/cms/RecipientInformation;>;"
    .end local v30           #recipientInfo:Lorg/bouncycastle/cms/RecipientInformation;
    :pswitch_6
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v27

    .line 696
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-nez v2, :cond_15

    .line 697
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v4, "illegal.length.value"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    move-object/from16 v2, v27

    .line 698
    check-cast v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v25

    .line 699
    const/16 v2, 0x80

    move/from16 v0, v25

    if-gt v0, v2, :cond_16

    const/16 v2, 0x28

    move/from16 v0, v25

    if-lt v0, v2, :cond_16

    rem-int/lit8 v2, v25, 0x8

    if-eqz v2, :cond_17

    .line 700
    :cond_16
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v4, "illegal.length.value"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 701
    :cond_17
    const/4 v8, 0x1

    .line 702
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RECIPIENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v31

    .end local v31           #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v31, Lcom/itextpdf/text/pdf/PdfArray;

    .line 703
    .restart local v31       #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    goto/16 :goto_5

    .line 705
    :pswitch_7
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v15, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 706
    .restart local v11       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v11, :cond_18

    .line 707
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v4, "cf.not.found.encryption"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 708
    :cond_18
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEFAULTCRYPTFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    .end local v11           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 709
    .restart local v11       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v11, :cond_19

    .line 710
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v4, "defaultcryptfilter.not.found.encryption"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 711
    :cond_19
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->V2:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 712
    const/4 v8, 0x1

    .line 713
    const/16 v25, 0x80

    .line 721
    :goto_8
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPTMETADATA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    .line 722
    .restart local v13       #em:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v13, :cond_1a

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 723
    or-int/lit8 v8, v8, 0x8

    .line 725
    :cond_1a
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RECIPIENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v31

    .end local v31           #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v31, Lcom/itextpdf/text/pdf/PdfArray;

    .line 726
    .restart local v31       #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    goto/16 :goto_5

    .line 715
    .end local v13           #em:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1b
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AESV2:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 716
    const/4 v8, 0x2

    .line 717
    const/16 v25, 0x80

    goto :goto_8

    .line 720
    :cond_1c
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string v4, "no.compatible.encryption.found"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 750
    .end local v11           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v9       #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .restart local v23       #i:I
    .restart local v28       #recipient:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v20

    .line 751
    .local v20, f:Ljava/lang/Exception;
    :goto_9
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 730
    .end local v9           #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .end local v20           #f:Ljava/lang/Exception;
    .restart local v10       #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .restart local v29       #recipientCertificatesIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/bouncycastle/cms/RecipientInformation;>;"
    :cond_1d
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_6

    .line 755
    .end local v10           #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .end local v28           #recipient:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v29           #recipientCertificatesIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/bouncycastle/cms/RecipientInformation;>;"
    :cond_1e
    if-eqz v22, :cond_1f

    if-nez v19, :cond_20

    .line 756
    :cond_1f
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string v4, "bad.certificate.and.key"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 759
    :cond_20
    const/16 v26, 0x0

    .line 762
    .local v26, md:Ljava/security/MessageDigest;
    :try_start_2
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v26

    .line 763
    const/4 v2, 0x0

    const/16 v4, 0x14

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 764
    const/16 v23, 0x0

    :goto_a
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_21

    .line 765
    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->getBytes()[B

    move-result-object v17

    .line 766
    .local v17, encodedRecipient:[B
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 764
    add-int/lit8 v23, v23, 0x1

    goto :goto_a

    .line 768
    .end local v17           #encodedRecipient:[B
    :cond_21
    and-int/lit8 v2, v8, 0x8

    if-eqz v2, :cond_22

    .line 769
    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 770
    :cond_22
    invoke-virtual/range {v26 .. v26}, Ljava/security/MessageDigest;->digest()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    goto/16 :goto_1

    .line 772
    :catch_1
    move-exception v20

    .line 773
    .restart local v20       #f:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 788
    .end local v19           #envelopedData:[B
    .end local v20           #f:Ljava/lang/Exception;
    .end local v22           #foundRecipient:Z
    .end local v23           #i:I
    .end local v26           #md:Ljava/security/MessageDigest;
    .end local v27           #o:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v31           #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v34           #vValue:I
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/PdfReader;->pValue:I

    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByOwnerPassword([B[B[B[BI)V

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    iget-object v4, v2, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    const/4 v7, 0x3

    if-eq v2, v7, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_26

    :cond_24
    const/16 v2, 0x10

    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v2}, Lcom/itextpdf/text/pdf/PdfReader;->equalsArray([B[BI)Z

    move-result v2

    if-nez v2, :cond_28

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/PdfReader;->pValue:I

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByUserPassword([B[B[BI)V

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    iget-object v4, v2, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    const/4 v7, 0x3

    if-eq v2, v7, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_27

    :cond_25
    const/16 v2, 0x10

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v2}, Lcom/itextpdf/text/pdf/PdfReader;->equalsArray([B[BI)Z

    move-result v2

    if-nez v2, :cond_a

    .line 793
    new-instance v2, Lcom/itextpdf/text/exceptions/BadPasswordException;

    const-string v4, "bad.user.password"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 789
    :cond_26
    const/16 v2, 0x20

    goto :goto_b

    .line 792
    :cond_27
    const/16 v2, 0x20

    goto :goto_c

    .line 797
    :cond_28
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->ownerPasswordUsed:Z

    goto/16 :goto_2

    .line 800
    :cond_29
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PUBSEC:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByEncryptionKey([BI)V

    .line 802
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->ownerPasswordUsed:Z

    goto/16 :goto_2

    .line 810
    .restart local v24       #k:I
    :cond_2a
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 811
    check-cast v16, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v16           #encDic:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 814
    :cond_2b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->encryptionError:Z

    goto/16 :goto_0

    .line 750
    .end local v24           #k:I
    .restart local v10       #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .restart local v16       #encDic:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v19       #envelopedData:[B
    .restart local v22       #foundRecipient:Z
    .restart local v23       #i:I
    .restart local v27       #o:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v28       #recipient:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v31       #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v34       #vValue:I
    :catch_2
    move-exception v20

    move-object v9, v10

    .end local v10           #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .restart local v9       #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    goto/16 :goto_9

    .line 639
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 688
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch

    .line 769
    :array_0
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method public static releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, -0x1

    .line 969
    if-nez p0, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 973
    instance-of v2, p0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 976
    check-cast v1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 977
    .local v1, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v0

    .line 978
    .local v0, reader:Lcom/itextpdf/text/pdf/PdfReader;
    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    if-eq v2, v5, :cond_2

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 979
    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 981
    :cond_2
    iput v5, v0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    goto :goto_0
.end method

.method private replaceNamedDestination(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)Z
    .locals 11
    .parameter "obj"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v9, 0x1

    .line 2941
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p1

    .line 2942
    iget v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 2943
    .local v6, objIdx:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 2944
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, p1

    .line 2945
    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 2946
    .local v3, ob2:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v2, 0x0

    .line 2947
    .local v2, name:Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 2948
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2949
    move-object v2, v3

    .line 2952
    .end local v2           #name:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2953
    .local v0, dest:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_5

    move-object v8, p1

    .line 2954
    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v10, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2955
    invoke-direct {p0, v6, p1}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    move v8, v9

    .line 2982
    .end local v0           #dest:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_1
    return v8

    .line 2950
    .restart local v2       #name:Ljava/lang/Object;
    .restart local v3       #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2951
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, name:Ljava/lang/String;
    goto :goto_0

    .local v2, name:Ljava/lang/Object;
    :cond_2
    move-object v8, p1

    .line 2959
    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2960
    iget v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 2961
    .local v5, obj2Idx:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    move-object v1, v3

    .line 2962
    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2963
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfName;

    .line 2964
    .local v7, type:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->GOTO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v7}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2965
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 2966
    .local v4, ob3:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v4, :cond_3

    .line 2967
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2968
    move-object v2, v4

    .line 2972
    .end local v2           #name:Ljava/lang/Object;
    :cond_3
    :goto_2
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2973
    .restart local v0       #dest:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_5

    .line 2974
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2975
    invoke-direct {p0, v5, v3}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2976
    invoke-direct {p0, v6, p1}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    move v8, v9

    .line 2977
    goto :goto_1

    .line 2969
    .end local v0           #dest:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v2       #name:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2970
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, name:Ljava/lang/String;
    goto :goto_2

    .line 2982
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v4           #ob3:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v5           #obj2Idx:I
    .end local v7           #type:Lcom/itextpdf/text/pdf/PdfName;
    :cond_5
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "idx"
    .parameter "obj"

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 2
    .parameter "obj"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    new-instance v0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;I)V

    return-object v0
.end method

.method public addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3257
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3258
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->setViewerPreferences(Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;)V

    .line 3259
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 3028
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-nez v1, :cond_0

    .line 3036
    :goto_0
    return-void

    .line 3031
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRTokeniser;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3033
    :catch_0
    move-exception v0

    .line 3034
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public computeUserPassword()[B
    .locals 2

    .prologue
    .line 3741
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->ownerPasswordUsed:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3742
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncryption;->computeUserPassword([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public consolidateNamedDestinations()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2907
    iget-boolean v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    if-eqz v10, :cond_1

    .line 2938
    :cond_0
    :goto_0
    return-void

    .line 2909
    :cond_1
    iput-boolean v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 2910
    invoke-virtual {p0, v11}, Lcom/itextpdf/text/pdf/PdfReader;->getNamedDestination(Z)Ljava/util/HashMap;

    move-result-object v6

    .line 2911
    .local v6, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2913
    const/4 v5, 0x1

    .local v5, k:I
    :goto_1
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v10

    if-gt v5, v10, :cond_8

    .line 2914
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v10, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    .line 2916
    .local v9, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .local v3, annotsRef:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2917
    .local v2, annots:Lcom/itextpdf/text/pdf/PdfArray;
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 2918
    .local v1, annotIdx:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 2919
    if-nez v2, :cond_3

    .line 2920
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v10, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 2913
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2923
    :cond_3
    const/4 v4, 0x0

    .line 2924
    .local v4, commitAnnots:Z
    const/4 v0, 0x0

    .local v0, an:I
    :goto_3
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v10

    if-ge v0, v10, :cond_5

    .line 2925
    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 2926
    .local v7, objRef:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-direct {p0, v7, v6}, Lcom/itextpdf/text/pdf/PdfReader;->replaceNamedDestination(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v10

    if-nez v10, :cond_4

    .line 2927
    const/4 v4, 0x1

    .line 2924
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2929
    .end local v7           #objRef:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    if-eqz v4, :cond_6

    .line 2930
    invoke-direct {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2931
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2932
    :cond_7
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v10, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    goto :goto_2

    .line 2934
    .end local v0           #an:I
    .end local v1           #annotIdx:I
    .end local v2           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #annotsRef:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v4           #commitAnnots:Z
    .end local v9           #page:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_8
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2935
    .local v8, outlines:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v8, :cond_0

    .line 2937
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/itextpdf/text/pdf/PdfReader;->iterateBookmarks(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public createFakeFontSubsets()I
    .locals 10

    .prologue
    .line 2607
    const/4 v7, 0x0

    .line 2608
    .local v7, total:I
    const/4 v2, 0x1

    .local v2, k:I
    :goto_0
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 2609
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 2610
    .local v5, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2608
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 2612
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2613
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2615
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->MMTYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->TRUETYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2618
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getSubsetPrefix(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v6

    .line 2619
    .local v6, s:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 2621
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getFontName(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v6

    .line 2622
    if-eqz v6, :cond_0

    .line 2624
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itextpdf/text/pdf/BaseFont;->createSubsetPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2625
    .local v4, ns:Ljava/lang/String;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2626
    .local v1, fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 2628
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTFILE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTFILE2:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTFILE3:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 2631
    :cond_3
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 2632
    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 2633
    .local v3, newName:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2634
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTNAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2635
    invoke-direct {p0, v2, v0}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2636
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 2639
    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v1           #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #newName:Lcom/itextpdf/text/pdf/PdfName;
    .end local v4           #ns:Ljava/lang/String;
    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v6           #s:Ljava/lang/String;
    :cond_4
    return v7
.end method

.method public dumpPerc()D
    .locals 6

    .prologue
    .line 1112
    const/4 v1, 0x0

    .line 1113
    .local v1, total:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1114
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1115
    add-int/lit8 v1, v1, 0x1

    .line 1113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1117
    :cond_1
    int-to-double v2, v1

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public eliminateSharedStreams()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2345
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    if-nez v9, :cond_1

    .line 2391
    :cond_0
    return-void

    .line 2347
    :cond_1
    iput-boolean v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 2348
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v9

    if-eq v9, v11, :cond_0

    .line 2350
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2351
    .local v4, newRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PRIndirectReference;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2352
    .local v5, newStreams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PRStream;>;"
    new-instance v8, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 2353
    .local v8, visited:Lcom/itextpdf/text/pdf/IntHashtable;
    const/4 v3, 0x1

    .local v3, k:I
    :goto_0
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v9

    if-gt v3, v9, :cond_7

    .line 2354
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9, v3}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 2355
    .local v6, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v6, :cond_3

    .line 2353
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2357
    :cond_3
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 2358
    .local v1, contents:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_2

    .line 2360
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2361
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 2362
    .local v7, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2364
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2365
    new-instance v9, Lcom/itextpdf/text/pdf/PRStream;

    check-cast v1, Lcom/itextpdf/text/pdf/PRStream;

    .end local v1           #contents:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-direct {v9, v1, v13}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2368
    .restart local v1       #contents:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v9

    invoke-virtual {v8, v9, v11}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_1

    .line 2370
    .end local v7           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_5
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v0, v1

    .line 2371
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2372
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 2373
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 2374
    .restart local v7       #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2376
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2377
    new-instance v10, Lcom/itextpdf/text/pdf/PRStream;

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PRStream;

    invoke-direct {v10, v9, v13}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2372
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2380
    :cond_6
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v9

    invoke-virtual {v8, v9, v11}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_3

    .line 2384
    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #contents:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v2           #j:I
    .end local v6           #page:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v7           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2386
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 2387
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2388
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 2389
    .restart local v7       #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9, v12}, Lcom/itextpdf/text/pdf/PRIndirectReference;->setNumber(II)V

    .line 2386
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;
    .locals 2

    .prologue
    .line 3163
    new-instance v0, Lcom/itextpdf/text/pdf/AcroFields;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/text/pdf/AcroFields;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfWriter;)V

    return-object v0
.end method

.method public getAcroForm()Lcom/itextpdf/text/pdf/PRAcroForm;
    .locals 4

    .prologue
    .line 333
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    if-nez v2, :cond_0

    .line 334
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 335
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 336
    .local v1, form:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    .line 338
    :try_start_0
    new-instance v2, Lcom/itextpdf/text/pdf/PRAcroForm;

    invoke-direct {v2, p0}, Lcom/itextpdf/text/pdf/PRAcroForm;-><init>(Lcom/itextpdf/text/pdf/PdfReader;)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 339
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v3, v2}, Lcom/itextpdf/text/pdf/PRAcroForm;->readAcroForm(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v1           #form:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    return-object v2

    .line 341
    .restart local v1       #form:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    goto :goto_0
.end method

.method public getBoxSize(ILjava/lang/String;)Lcom/itextpdf/text/Rectangle;
    .locals 3
    .parameter "index"
    .parameter "boxName"

    .prologue
    .line 432
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 433
    .local v1, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v0, 0x0

    .line 434
    .local v0, box:Lcom/itextpdf/text/pdf/PdfArray;
    const-string v2, "trim"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TRIMBOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .end local v0           #box:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 444
    .restart local v0       #box:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 445
    const/4 v2, 0x0

    .line 446
    :goto_1
    return-object v2

    .line 436
    :cond_1
    const-string v2, "art"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ARTBOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .end local v0           #box:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .restart local v0       #box:Lcom/itextpdf/text/pdf/PdfArray;
    goto :goto_0

    .line 438
    :cond_2
    const-string v2, "bleed"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 439
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BLEEDBOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .end local v0           #box:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .restart local v0       #box:Lcom/itextpdf/text/pdf/PdfArray;
    goto :goto_0

    .line 440
    :cond_3
    const-string v2, "crop"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 441
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CROPBOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .end local v0           #box:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .restart local v0       #box:Lcom/itextpdf/text/pdf/PdfArray;
    goto :goto_0

    .line 442
    :cond_4
    const-string v2, "media"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .end local v0           #box:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .restart local v0       #box:Lcom/itextpdf/text/pdf/PdfArray;
    goto :goto_0

    .line 446
    :cond_5
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v2

    goto :goto_1
.end method

.method public getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getCertificationLevel()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3685
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->PERMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 3686
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v1, :cond_1

    .line 3703
    :cond_0
    :goto_0
    return v3

    .line 3688
    :cond_1
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DOCMDP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 3689
    if-eqz v1, :cond_0

    .line 3691
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->REFERENCE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 3692
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 3694
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 3695
    if-eqz v1, :cond_0

    .line 3697
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TRANSFORMPARAMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 3698
    if-eqz v1, :cond_0

    .line 3700
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    .line 3701
    .local v2, p:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v2, :cond_0

    .line 3703
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method public getCropBox(I)Lcom/itextpdf/text/Rectangle;
    .locals 3
    .parameter "index"

    .prologue
    .line 419
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 420
    .local v1, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CROPBOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 421
    .local v0, cropBox:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 422
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSize(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v2

    .line 423
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v2

    goto :goto_0
.end method

.method public getCryptoMode()I
    .locals 1

    .prologue
    .line 3721
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    if-nez v0, :cond_0

    .line 3722
    const/4 v0, -0x1

    .line 3724
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->getCryptoMode()I

    move-result v0

    goto :goto_0
.end method

.method getCryptoRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 4

    .prologue
    .line 3654
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    if-nez v0, :cond_0

    .line 3655
    const/4 v0, 0x0

    .line 3656
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getGeneration()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfIndirectReference;-><init>(III)V

    goto :goto_0
.end method

.method getDecrypt()Lcom/itextpdf/text/pdf/PdfEncryption;
    .locals 1

    .prologue
    .line 2502
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    return-object v0
.end method

.method public getEofPos()J
    .locals 2

    .prologue
    .line 2456
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->eofPos:J

    return-wide v0
.end method

.method public getFileLength()J
    .locals 2

    .prologue
    .line 3305
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->fileLength:J

    return-wide v0
.end method

.method public getInfo()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 455
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->INFO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 456
    .local v2, info:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v2, :cond_1

    .line 476
    :cond_0
    return-object v4

    .line 458
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .local v0, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v3, v0

    .line 459
    check-cast v3, Lcom/itextpdf/text/pdf/PdfName;

    .line 460
    .local v3, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 461
    .local v5, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_2

    .line 463
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 464
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 474
    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 466
    .restart local v5       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :pswitch_0
    check-cast v5, Lcom/itextpdf/text/pdf/PdfString;

    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v6

    .line 467
    goto :goto_1

    .line 470
    .restart local v5       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :pswitch_1
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 464
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getJavaScript()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3211
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    .line 3213
    .local v0, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 3214
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getJavaScript(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3217
    :try_start_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getJavaScript(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)Ljava/lang/String;
    .locals 13
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v12, 0xa

    .line 3173
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3174
    .local v6, names:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v6, :cond_1

    .line 3202
    :cond_0
    :goto_0
    return-object v9

    .line 3176
    :cond_1
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->JAVASCRIPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3177
    .local v3, js:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v3, :cond_0

    .line 3179
    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfNameTree;->readTree(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/util/HashMap;

    move-result-object v4

    .line 3180
    .local v4, jscript:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v9

    new-array v8, v9, [Ljava/lang/String;

    .line 3181
    .local v8, sortedNames:[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8           #sortedNames:[Ljava/lang/String;
    check-cast v8, [Ljava/lang/String;

    .line 3182
    .restart local v8       #sortedNames:[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 3183
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3184
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    array-length v9, v8

    if-ge v5, v9, :cond_6

    .line 3185
    aget-object v9, v8, v5

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3186
    .local v2, j:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v2, :cond_3

    .line 3184
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3188
    :cond_3
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->JS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 3189
    .local v7, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v7, :cond_2

    .line 3190
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3191
    check-cast v7, Lcom/itextpdf/text/pdf/PdfString;

    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 3192
    .restart local v7       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3193
    check-cast v7, Lcom/itextpdf/text/pdf/PRStream;

    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v7, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v1

    .line 3194
    .local v1, bytes:[B
    array-length v9, v1

    const/4 v10, 0x2

    if-lt v9, v10, :cond_5

    const/4 v9, 0x0

    aget-byte v9, v1, v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    aget-byte v9, v1, v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 3195
    const-string v9, "UnicodeBig"

    invoke-static {v1, v9}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3198
    :goto_3
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 3197
    :cond_5
    const-string v9, "PDF"

    invoke-static {v1, v9}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 3202
    .end local v1           #bytes:[B
    .end local v2           #j:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public getLastXref()J
    .locals 2

    .prologue
    .line 2440
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:J

    return-wide v0
.end method

.method public getLinks(I)Ljava/util/ArrayList;
    .locals 7
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2799
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 2800
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2801
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;>;"
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 2802
    .local v3, pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2803
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    .line 2804
    .local v1, annots:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 2805
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2807
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->LINK:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2808
    new-instance v5, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;

    invoke-direct {v5, v0}, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;-><init>(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2804
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2812
    .end local v0           #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v1           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #j:I
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 2813
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 2814
    return-object v4
.end method

.method public getMetadata()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2415
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 2416
    .local v1, obj:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v3, v1, Lcom/itextpdf/text/pdf/PRStream;

    if-nez v3, :cond_0

    .line 2417
    const/4 v0, 0x0

    .line 2432
    .end local v1           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_0
    return-object v0

    .line 2418
    .restart local v1       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v2

    .line 2419
    .local v2, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    const/4 v0, 0x0

    .line 2421
    .local v0, b:[B
    :try_start_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2422
    check-cast v1, Lcom/itextpdf/text/pdf/PRStream;

    .end local v1           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v1, v2}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2426
    :try_start_1
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2428
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2425
    :catchall_0
    move-exception v3

    .line 2426
    :try_start_2
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2430
    :goto_1
    throw v3

    .line 2428
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public getNamedDestination()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2664
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getNamedDestination(Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getNamedDestination(Z)Ljava/util/HashMap;
    .locals 2
    .parameter "keepNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2675
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getNamedDestinationFromNames(Z)Ljava/util/HashMap;

    move-result-object v0

    .line 2676
    .local v0, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getNamedDestinationFromStrings()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2677
    return-object v0
.end method

.method public getNamedDestinationFromNames()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2688
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getNamedDestinationFromNames(Z)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getNamedDestinationFromNames(Z)Ljava/util/HashMap;
    .locals 9
    .parameter "keepNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2699
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2700
    .local v6, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->DESTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2701
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->DESTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2702
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v1, :cond_1

    .line 2718
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    return-object v6

    .line 2704
    .restart local v1       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v4

    .line 2705
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/itextpdf/text/pdf/PdfName;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfName;

    .line 2706
    .local v3, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getNameArray(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 2707
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_2

    .line 2709
    if-eqz p1, :cond_3

    .line 2710
    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2713
    :cond_3
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2714
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getNamedDestinationFromStrings()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2727
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2728
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2729
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_1

    .line 2730
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->DESTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2731
    .restart local v1       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_1

    .line 2732
    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfNameTree;->readTree(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/util/HashMap;

    move-result-object v4

    .line 2733
    .local v4, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2734
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2735
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getNameArray(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 2736
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_0

    .line 2737
    invoke-interface {v2, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2739
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2745
    .end local v0           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;>;"
    .end local v4           #names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_2
    return-object v4
.end method

.method public getNumberOfPages()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v0

    return v0
.end method

.method public getPageContent(I)[B
    .locals 3
    .parameter "pageNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2122
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    .line 2124
    .local v0, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2125
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageContent(ILcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2128
    :try_start_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getPageContent(ILcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    .locals 9
    .parameter "pageNum"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2018
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 2019
    .local v6, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v6, :cond_0

    .line 2020
    const/4 v7, 0x0

    .line 2043
    :goto_0
    return-object v7

    .line 2021
    :cond_0
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 2022
    .local v3, contents:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v3, :cond_1

    .line 2023
    new-array v7, v8, [B

    goto :goto_0

    .line 2024
    :cond_1
    const/4 v2, 0x0

    .line 2025
    .local v2, bout:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2026
    check-cast v3, Lcom/itextpdf/text/pdf/PRStream;

    .end local v3           #contents:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v3, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v7

    goto :goto_0

    .line 2028
    .restart local v3       #contents:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v0, v3

    .line 2029
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2030
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2           #bout:Ljava/io/ByteArrayOutputStream;
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2031
    .restart local v2       #bout:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 2032
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 2033
    .local v4, item:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2031
    .end local v4           #item:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2035
    .restart local v4       #item:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    check-cast v4, Lcom/itextpdf/text/pdf/PRStream;

    .end local v4           #item:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v4, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v1

    .line 2036
    .local v1, b:[B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2037
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v5, v7, :cond_3

    .line 2038
    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 2040
    .end local v1           #b:[B
    :cond_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    goto :goto_0

    .line 2043
    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #k:I
    :cond_6
    new-array v7, v8, [B

    goto :goto_0
.end method

.method public getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 1971
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1972
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_1

    .line 1973
    const/4 v0, 0x0

    .line 1976
    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    :goto_0
    return-object v0

    .line 1974
    .restart local v0       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->appendable:Z

    if-eqz v1, :cond_0

    .line 1975
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->setIndRef(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    goto :goto_0
.end method

.method public getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 1984
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1985
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 1986
    return-object v0
.end method

.method public getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v0

    return-object v0
.end method

.method public getPageResources(I)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 2103
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageResources(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getPageResources(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1
    .parameter "pageDict"

    .prologue
    .line 2113
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getPageRotation(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)I

    move-result v0

    return v0
.end method

.method getPageRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)I
    .locals 3
    .parameter "page"

    .prologue
    .line 358
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ROTATE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v1

    .line 359
    .local v1, rotate:Lcom/itextpdf/text/pdf/PdfNumber;
    if-nez v1, :cond_1

    .line 360
    const/4 v0, 0x0

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 362
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v0

    .line 363
    .local v0, n:I
    rem-int/lit16 v0, v0, 0x168

    .line 364
    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method public getPageSize(I)Lcom/itextpdf/text/Rectangle;
    .locals 1
    .parameter "index"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSize(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getPageSize(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;
    .locals 2
    .parameter "page"

    .prologue
    .line 406
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 407
    .local v0, mediaBox:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v1

    return-object v1
.end method

.method public getPageSizeWithRotation(I)Lcom/itextpdf/text/Rectangle;
    .locals 1
    .parameter "index"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSizeWithRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getPageSizeWithRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;
    .locals 2
    .parameter "page"

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSize(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    .line 383
    .local v0, rect:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)I

    move-result v1

    .line 384
    .local v1, rotation:I
    :goto_0
    if-lez v1, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->rotate()Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    .line 386
    add-int/lit8 v1, v1, -0x5a

    goto :goto_0

    .line 388
    :cond_0
    return-object v0
.end method

.method public getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 5
    .parameter "idx"

    .prologue
    const/4 v2, 0x0

    .line 929
    const/4 v3, -0x1

    :try_start_0
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 930
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 941
    :cond_1
    :goto_0
    return-object v1

    .line 932
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 933
    .local v1, obj:Lcom/itextpdf/text/pdf/PdfObject;
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 935
    mul-int/lit8 v3, p1, 0x2

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    array-length v4, v4

    if-lt v3, v4, :cond_3

    move-object v1, v2

    .line 936
    goto :goto_0

    .line 937
    :cond_3
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->readSingleObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 938
    const/4 v2, -0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 939
    if-eqz v1, :cond_1

    .line 940
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 943
    .end local v1           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v0

    .line 944
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getPdfObjectRelease(I)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "idx"

    .prologue
    .line 918
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 919
    .local v0, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 920
    return-object v0
.end method

.method protected getPdfReaderInstance(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfReaderInstance;
    .locals 1
    .parameter "writer"

    .prologue
    .line 311
    new-instance v0, Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfReaderInstance;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfWriter;)V

    return-object v0
.end method

.method public getPdfVersion()C
    .locals 1

    .prologue
    .line 2465
    iget-char v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pdfVersion:C

    return v0
.end method

.method public getPermissions()I
    .locals 1

    .prologue
    .line 2482
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pValue:I

    return v0
.end method

.method public getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleViewerPreferences()I
    .locals 1

    .prologue
    .line 3271
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->getViewerPreferences(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->getPageLayoutAndMode()I

    move-result v0

    return v0
.end method

.method public getTrailer()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 2498
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getXrefSize()I
    .locals 1

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public is128Key()Z
    .locals 2

    .prologue
    .line 2490
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppendable()Z
    .locals 1

    .prologue
    .line 3279
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->appendable:Z

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 2473
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    return v0
.end method

.method public isHybridXref()Z
    .locals 1

    .prologue
    .line 3313
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->hybridXref:Z

    return v0
.end method

.method public isMetadataEncrypted()Z
    .locals 1

    .prologue
    .line 3731
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    if-nez v0, :cond_0

    .line 3732
    const/4 v0, 0x0

    .line 3734
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->isMetadataEncrypted()Z

    move-result v0

    goto :goto_0
.end method

.method public isNewXrefType()Z
    .locals 1

    .prologue
    .line 3297
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->newXrefType:Z

    return v0
.end method

.method public final isOpenedWithFullPermissions()Z
    .locals 1

    .prologue
    .line 3714
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->ownerPasswordUsed:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/itextpdf/text/pdf/PdfReader;->unethicalreading:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRebuilt()Z
    .locals 1

    .prologue
    .line 1963
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    return v0
.end method

.method public isTampered()Z
    .locals 1

    .prologue
    .line 2398
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    return v0
.end method

.method protected killXref(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 8
    .parameter "obj"

    .prologue
    .line 2133
    if-nez p1, :cond_1

    .line 2161
    :cond_0
    :goto_0
    return-void

    .line 2135
    :cond_1
    instance-of v6, p1, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2137
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move-object v4, p1

    .line 2147
    check-cast v4, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2148
    .local v4, t:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 2149
    invoke-virtual {v4, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2148
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2139
    .end local v2           #i:I
    .end local v4           #t:Lcom/itextpdf/text/pdf/PdfArray;
    :pswitch_2
    check-cast p1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local p1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v5

    .line 2140
    .local v5, xr:I
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 2141
    .restart local p1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2142
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    .line 2143
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .end local v5           #xr:I
    :pswitch_3
    move-object v0, p1

    .line 2154
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2155
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 2156
    .local v1, element:Lcom/itextpdf/text/pdf/PdfName;
    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .end local v1           #element:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_2

    .line 2137
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public makeRemoteNamedDestinationsLocal()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2834
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    if-eqz v9, :cond_1

    .line 2861
    :cond_0
    return-void

    .line 2836
    :cond_1
    iput-boolean v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 2837
    invoke-virtual {p0, v10}, Lcom/itextpdf/text/pdf/PdfReader;->getNamedDestination(Z)Ljava/util/HashMap;

    move-result-object v6

    .line 2838
    .local v6, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2840
    const/4 v5, 0x1

    .local v5, k:I
    :goto_0
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v9

    if-gt v5, v9, :cond_0

    .line 2841
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v8

    .line 2843
    .local v8, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .local v3, annotsRef:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2844
    .local v2, annots:Lcom/itextpdf/text/pdf/PdfArray;
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 2845
    .local v1, annotIdx:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 2846
    if-nez v2, :cond_3

    .line 2847
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 2840
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2850
    :cond_3
    const/4 v4, 0x0

    .line 2851
    .local v4, commitAnnots:Z
    const/4 v0, 0x0

    .local v0, an:I
    :goto_2
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 2852
    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 2853
    .local v7, objRef:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-direct {p0, v7, v6}, Lcom/itextpdf/text/pdf/PdfReader;->convertNamedDestination(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2854
    const/4 v4, 0x1

    .line 2851
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2856
    .end local v7           #objRef:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    if-eqz v4, :cond_6

    .line 2857
    invoke-direct {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2858
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2859
    :cond_7
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    goto :goto_1
.end method

.method protected readArray()Lcom/itextpdf/text/pdf/PdfArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1599
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1601
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 1602
    .local v1, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v2

    .line 1603
    .local v2, type:I
    neg-int v3, v2

    sget-object v4, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1609
    return-object v0

    .line 1605
    :cond_0
    neg-int v3, v2

    sget-object v4, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1606
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string v4, "unexpected.gt.gt"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1607
    :cond_1
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0
.end method

.method protected readDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1579
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1581
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1582
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v4, v5, :cond_0

    .line 1595
    return-object v0

    .line 1584
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NAME:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v4, v5, :cond_1

    .line 1585
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string v5, "dictionary.key.is.not.a.name"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1586
    :cond_1
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v7}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;Z)V

    .line 1587
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 1588
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v3

    .line 1589
    .local v3, type:I
    neg-int v4, v3

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1590
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string v5, "unexpected.gt.gt"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1591
    :cond_2
    neg-int v4, v3

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 1592
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string v5, "unexpected.close.bracket"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1593
    :cond_3
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method protected readDocObj()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1121
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .local v10, streams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PRStream;>;"
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    array-length v12, v12

    div-int/lit8 v12, v12, 0x2

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    .line 1123
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    array-length v12, v12

    div-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1124
    const/4 v5, 0x2

    .local v5, k:I
    :goto_0
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    array-length v11, v11

    if-ge v5, v11, :cond_6

    .line 1125
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    aget-wide v8, v11, v5

    .line 1126
    .local v8, pos:J
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-lez v11, :cond_0

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    add-int/lit8 v12, v5, 0x1

    aget-wide v11, v11, v12

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_1

    .line 1124
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 1128
    :cond_1
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v11, v8, v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1129
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1130
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v11

    sget-object v12, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v11, v12, :cond_2

    .line 1131
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string v12, "invalid.object.number"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1132
    :cond_2
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v11

    iput v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->objNum:I

    .line 1133
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1134
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v11

    sget-object v12, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v11, v12, :cond_3

    .line 1135
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string v12, "invalid.generation.number"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1136
    :cond_3
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v11

    iput v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->objGen:I

    .line 1137
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1138
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v11

    const-string v12, "obj"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1139
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string v12, "token.obj.expected"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1142
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 1143
    .local v7, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1144
    move-object v0, v7

    check-cast v0, Lcom/itextpdf/text/pdf/PRStream;

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    div-int/lit8 v12, v5, 0x2

    invoke-virtual {v11, v12, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1147
    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v1

    .line 1148
    .local v1, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    .restart local v7       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    goto :goto_2

    .line 1152
    .end local v1           #e:Ljava/lang/Exception;
    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v8           #pos:J
    :cond_6
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_7

    .line 1153
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PRStream;

    invoke-direct {p0, v11}, Lcom/itextpdf/text/pdf/PdfReader;->checkPRStreamLength(Lcom/itextpdf/text/pdf/PRStream;)V

    .line 1152
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1155
    :cond_7
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readDecryptedDocObj()V

    .line 1156
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    if-eqz v11, :cond_9

    .line 1157
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1158
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/text/pdf/IntHashtable;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1159
    .local v6, n:I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 1160
    .local v3, h:Lcom/itextpdf/text/pdf/IntHashtable;
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PRStream;

    invoke-virtual {p0, v11, v3}, Lcom/itextpdf/text/pdf/PdfReader;->readObjStm(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/IntHashtable;)V

    .line 1161
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1163
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/text/pdf/IntHashtable;>;"
    .end local v3           #h:Lcom/itextpdf/text/pdf/IntHashtable;
    .end local v6           #n:I
    :cond_8
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    .line 1165
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_9
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    .line 1166
    return-void
.end method

.method protected readDocObjPartial()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x2

    .line 1006
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    .line 1007
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1008
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readDecryptedDocObj()V

    .line 1009
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/LongHashtable;

    if-eqz v4, :cond_0

    .line 1010
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/LongHashtable;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/LongHashtable;->getKeys()[J

    move-result-object v1

    .line 1011
    .local v1, keys:[J
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 1012
    aget-wide v2, v1, v0

    .line 1013
    .local v2, n:J
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/LongHashtable;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    mul-long v6, v2, v8

    long-to-int v6, v6

    aget-wide v5, v5, v6

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/itextpdf/text/pdf/LongHashtable;->put(JJ)J

    .line 1014
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    mul-long v5, v2, v8

    long-to-int v5, v5

    const-wide/16 v6, -0x1

    aput-wide v6, v4, v5

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1017
    .end local v0           #k:I
    .end local v1           #keys:[J
    .end local v2           #n:J
    :cond_0
    return-void
.end method

.method protected readObjStm(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/IntHashtable;)V
    .locals 12
    .parameter "stream"
    .parameter "map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1216
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v9}, Lcom/itextpdf/text/pdf/PRStream;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 1217
    .local v2, first:I
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v9}, Lcom/itextpdf/text/pdf/PRStream;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 1218
    .local v4, n:I
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v1

    .line 1219
    .local v1, b:[B
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 1220
    .local v8, saveTokens:Lcom/itextpdf/text/pdf/PRTokeniser;
    new-instance v9, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v9, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 1222
    :try_start_0
    new-array v0, v4, [I

    .line 1223
    .local v0, address:[I
    new-array v6, v4, [I

    .line 1224
    .local v6, objNumber:[I
    const/4 v7, 0x1

    .line 1225
    .local v7, ok:Z
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1226
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v7

    .line 1227
    if-nez v7, :cond_1

    .line 1243
    :cond_0
    :goto_1
    if-nez v7, :cond_4

    .line 1244
    new-instance v9, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v10, "error.reading.objstm"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    .end local v0           #address:[I
    .end local v3           #k:I
    .end local v6           #objNumber:[I
    .end local v7           #ok:Z
    :catchall_0
    move-exception v9

    iput-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    throw v9

    .line 1229
    .restart local v0       #address:[I
    .restart local v3       #k:I
    .restart local v6       #objNumber:[I
    .restart local v7       #ok:Z
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v9, v10, :cond_2

    .line 1230
    const/4 v7, 0x0

    .line 1231
    goto :goto_1

    .line 1233
    :cond_2
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v9

    aput v9, v6, v3

    .line 1234
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v7

    .line 1235
    if-eqz v7, :cond_0

    .line 1237
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v9, v10, :cond_3

    .line 1238
    const/4 v7, 0x0

    .line 1239
    goto :goto_1

    .line 1241
    :cond_3
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v9

    add-int/2addr v9, v2

    aput v9, v0, v3

    .line 1225
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1245
    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_7

    .line 1246
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1247
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    aget v10, v0, v3

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1248
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    .line 1250
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v9, v10, :cond_6

    .line 1251
    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(Ljava/lang/String;)V

    .line 1257
    .local v5, obj:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_3
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    aget v10, v6, v3

    invoke-virtual {v9, v10, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1245
    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1254
    :cond_6
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    aget v10, v0, v3

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1255
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .restart local v5       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    goto :goto_3

    .line 1262
    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_7
    iput-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 1264
    return-void
.end method

.method protected readOneObjStm(Lcom/itextpdf/text/pdf/PRStream;I)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 10
    .parameter "stream"
    .parameter "idx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1063
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v7}, Lcom/itextpdf/text/pdf/PRStream;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 1064
    .local v2, first:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v1

    .line 1065
    .local v1, b:[B
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 1066
    .local v6, saveTokens:Lcom/itextpdf/text/pdf/PRTokeniser;
    new-instance v7, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v7, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 1068
    const/4 v0, 0x0

    .line 1069
    .local v0, address:I
    const/4 v5, 0x1

    .line 1070
    .local v5, ok:Z
    add-int/lit8 p2, p2, 0x1

    .line 1071
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 1072
    :try_start_0
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v5

    .line 1073
    if-nez v5, :cond_1

    .line 1088
    :cond_0
    :goto_1
    if-nez v5, :cond_4

    .line 1089
    new-instance v7, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v8, "error.reading.objstm"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    :catchall_0
    move-exception v7

    iput-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    throw v7

    .line 1075
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v7, v8, :cond_2

    .line 1076
    const/4 v5, 0x0

    .line 1077
    goto :goto_1

    .line 1079
    :cond_2
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v5

    .line 1080
    if-eqz v5, :cond_0

    .line 1082
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v7, v8, :cond_3

    .line 1083
    const/4 v5, 0x0

    .line 1084
    goto :goto_1

    .line 1086
    :cond_3
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v7

    add-int v0, v7, v2

    .line 1071
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1090
    :cond_4
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1091
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    .line 1093
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v7, v8, :cond_5

    .line 1094
    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1104
    .local v4, obj:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_2
    iput-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    return-object v4

    .line 1097
    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1098
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .restart local v4       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    goto :goto_2
.end method

.method protected readPRObject()Lcom/itextpdf/text/pdf/PdfObject;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1618
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1619
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v13

    .line 1620
    .local v13, type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;
    sget-object v14, Lcom/itextpdf/text/pdf/PdfReader$1;->$SwitchMap$com$itextpdf$text$pdf$PRTokeniser$TokenType:[I

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 1686
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v12

    .line 1687
    .local v12, sv:Ljava/lang/String;
    const-string v14, "null"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1688
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    if-nez v14, :cond_8

    .line 1689
    new-instance v11, Lcom/itextpdf/text/pdf/PdfNull;

    invoke-direct {v11}, Lcom/itextpdf/text/pdf/PdfNull;-><init>()V

    .line 1705
    .end local v12           #sv:Ljava/lang/String;
    :goto_0
    return-object v11

    .line 1622
    :pswitch_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 1623
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfReader;->readDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    .line 1624
    .local v4, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 1625
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()J

    move-result-wide v7

    .line 1629
    .local v7, pos:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v5

    .line 1630
    .local v5, hasNext:Z
    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v14

    sget-object v15, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->COMMENT:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v14, v15, :cond_0

    .line 1632
    :cond_1
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v14

    const-string v15, "stream"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1636
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v3

    .line 1637
    .local v3, ch:I
    const/16 v14, 0x20

    if-eq v3, v14, :cond_2

    const/16 v14, 0x9

    if-eq v3, v14, :cond_2

    if-eqz v3, :cond_2

    const/16 v14, 0xc

    if-eq v3, v14, :cond_2

    .line 1638
    const/16 v14, 0xa

    if-eq v3, v14, :cond_3

    .line 1639
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v3

    .line 1640
    :cond_3
    const/16 v14, 0xa

    if-eq v3, v14, :cond_4

    .line 1641
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14, v3}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    .line 1642
    :cond_4
    new-instance v11, Lcom/itextpdf/text/pdf/PRStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v14, v15}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PdfReader;J)V

    .line 1643
    .local v11, stream:Lcom/itextpdf/text/pdf/PRStream;
    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/PRStream;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1645
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->objNum:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/PdfReader;->objGen:I

    invoke-virtual {v11, v14, v15}, Lcom/itextpdf/text/pdf/PRStream;->setObjNum(II)V

    goto/16 :goto_0

    .line 1650
    .end local v3           #ch:I
    .end local v11           #stream:Lcom/itextpdf/text/pdf/PRStream;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14, v7, v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    move-object v11, v4

    .line 1651
    goto/16 :goto_0

    .line 1655
    .end local v4           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v5           #hasNext:Z
    .end local v7           #pos:J
    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 1656
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfReader;->readArray()Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    .line 1657
    .local v1, arr:Lcom/itextpdf/text/pdf/PdfArray;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    move-object v11, v1

    .line 1658
    goto/16 :goto_0

    .line 1661
    .end local v1           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    :pswitch_2
    new-instance v11, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1663
    :pswitch_3
    new-instance v14, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PRTokeniser;->isHexString()Z

    move-result v15

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v10

    .line 1665
    .local v10, str:Lcom/itextpdf/text/pdf/PdfString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->objNum:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/PdfReader;->objGen:I

    invoke-virtual {v10, v14, v15}, Lcom/itextpdf/text/pdf/PdfString;->setObjNum(II)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    if-eqz v14, :cond_6

    .line 1667
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object v11, v10

    .line 1669
    goto/16 :goto_0

    .line 1671
    .end local v10           #str:Lcom/itextpdf/text/pdf/PdfString;
    :pswitch_4
    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->staticNames:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .line 1672
    .local v2, cachedName:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    if-lez v14, :cond_7

    if-eqz v2, :cond_7

    move-object v11, v2

    .line 1673
    goto/16 :goto_0

    .line 1676
    :cond_7
    new-instance v11, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v11, v14, v15}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1680
    .end local v2           #cachedName:Lcom/itextpdf/text/pdf/PdfName;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->getReference()I

    move-result v6

    .line 1681
    .local v6, num:I
    new-instance v9, Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PRTokeniser;->getGeneration()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v6, v14}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;II)V

    .local v9, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    move-object v11, v9

    .line 1682
    goto/16 :goto_0

    .line 1684
    .end local v6           #num:I
    .end local v9           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :pswitch_6
    new-instance v14, Ljava/io/IOException;

    const-string v15, "unexpected.end.of.file"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1691
    .restart local v12       #sv:Ljava/lang/String;
    :cond_8
    sget-object v11, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    goto/16 :goto_0

    .line 1693
    :cond_9
    const-string v14, "true"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1694
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    if-nez v14, :cond_a

    .line 1695
    new-instance v11, Lcom/itextpdf/text/pdf/PdfBoolean;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    goto/16 :goto_0

    .line 1697
    :cond_a
    sget-object v11, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    goto/16 :goto_0

    .line 1699
    :cond_b
    const-string v14, "false"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1700
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    if-nez v14, :cond_c

    .line 1701
    new-instance v11, Lcom/itextpdf/text/pdf/PdfBoolean;

    const/4 v14, 0x0

    invoke-direct {v11, v14}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    goto/16 :goto_0

    .line 1703
    :cond_c
    sget-object v11, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    goto/16 :goto_0

    .line 1705
    :cond_d
    new-instance v11, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v14, v15}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1620
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected readPages()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1001
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->rootPages:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1002
    new-instance v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfReader$1;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    .line 1003
    return-void
.end method

.method protected readPdf()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->fileLength:J

    .line 495
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->checkPdfHeader()C

    move-result v2

    iput-char v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pdfVersion:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :try_start_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readXref()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readDocObj()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 528
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 529
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPages()V

    .line 530
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->eliminateSharedStreams()V

    .line 531
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->removeUnusedObjects()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 535
    :try_start_4
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 541
    :goto_2
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 502
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->rebuildXref()V

    .line 503
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 505
    :catch_1
    move-exception v1

    .line 506
    .local v1, ne:Ljava/lang/Exception;
    :try_start_6
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v3, "rebuild.failed.1.original.message.2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 534
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ne:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 535
    :try_start_7
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRTokeniser;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 539
    :goto_3
    throw v2

    .line 512
    :catch_2
    move-exception v0

    .line 513
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_8
    instance-of v2, v0, Lcom/itextpdf/text/exceptions/BadPasswordException;

    if-eqz v2, :cond_0

    .line 514
    new-instance v2, Lcom/itextpdf/text/exceptions/BadPasswordException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 515
    :cond_0
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->encryptionError:Z

    if-eqz v2, :cond_2

    .line 516
    :cond_1
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 517
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 518
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 520
    :try_start_9
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->rebuildXref()V

    .line 521
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:J

    .line 522
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readDocObj()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 523
    :catch_3
    move-exception v1

    .line 524
    .restart local v1       #ne:Ljava/lang/Exception;
    :try_start_a
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v3, "rebuild.failed.1.original.message.2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 537
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ne:Ljava/lang/Exception;
    :catch_4
    move-exception v3

    goto :goto_3

    :catch_5
    move-exception v2

    goto/16 :goto_2
.end method

.method protected readPdfPartial()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->fileLength:J

    .line 546
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->checkPdfHeader()C

    move-result v2

    iput-char v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pdfVersion:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 548
    :try_start_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readXref()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 560
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readDocObjPartial()V

    .line 561
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPages()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 567
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 553
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->rebuildXref()V

    .line 554
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 556
    :catch_1
    move-exception v1

    .line 557
    .local v1, ne:Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v3, "rebuild.failed.1.original.message.2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 563
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ne:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 564
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 565
    :goto_1
    throw v0

    .line 564
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method protected readSingleObject(I)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 14
    .parameter "k"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x0

    const-wide/16 v11, 0x0

    .line 1020
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1021
    mul-int/lit8 v3, p1, 0x2

    .line 1022
    .local v3, k2:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    aget-wide v5, v8, v3

    .line 1023
    .local v5, pos:J
    cmp-long v8, v5, v11

    if-gez v8, :cond_1

    .line 1059
    :cond_0
    :goto_0
    return-object v4

    .line 1025
    :cond_1
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    add-int/lit8 v9, v3, 0x1

    aget-wide v8, v8, v9

    cmp-long v8, v8, v11

    if-lez v8, :cond_2

    .line 1026
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/LongHashtable;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    add-int/lit8 v10, v3, 0x1

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/LongHashtable;->get(J)J

    move-result-wide v5

    .line 1027
    :cond_2
    cmp-long v8, v5, v11

    if-eqz v8, :cond_0

    .line 1029
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v8, v5, v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1030
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1031
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v8

    sget-object v9, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v8, v9, :cond_3

    .line 1032
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string v9, "invalid.object.number"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1033
    :cond_3
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v8

    iput v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->objNum:I

    .line 1034
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1035
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v8

    sget-object v9, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v8, v9, :cond_4

    .line 1036
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string v9, "invalid.generation.number"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1037
    :cond_4
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v8

    iput v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->objGen:I

    .line 1038
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1039
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "obj"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1040
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string v9, "token.obj.expected"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1043
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 1044
    .local v4, obj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 1045
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfString;

    .line 1046
    .local v7, str:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual {v7, p0}, Lcom/itextpdf/text/pdf/PdfString;->decrypt(Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 1044
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1048
    .end local v7           #str:Lcom/itextpdf/text/pdf/PdfString;
    :cond_6
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1049
    move-object v0, v4

    check-cast v0, Lcom/itextpdf/text/pdf/PRStream;

    move-object v8, v0

    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/PdfReader;->checkPRStreamLength(Lcom/itextpdf/text/pdf/PRStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    .end local v2           #j:I
    :cond_7
    :goto_2
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    add-int/lit8 v9, v3, 0x1

    aget-wide v8, v8, v9

    cmp-long v8, v8, v11

    if-lez v8, :cond_8

    .line 1056
    check-cast v4, Lcom/itextpdf/text/pdf/PRStream;

    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    aget-wide v8, v8, v3

    long-to-int v8, v8

    invoke-virtual {p0, v4, v8}, Lcom/itextpdf/text/pdf/PdfReader;->readOneObjStm(Lcom/itextpdf/text/pdf/PRStream;I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 1058
    .restart local v4       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_8
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v8, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1052
    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v1

    .line 1053
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .restart local v4       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    goto :goto_2
.end method

.method protected readXRefStream(J)Z
    .locals 32
    .parameter "ptr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1409
    const/16 v24, 0x0

    .line 1410
    .local v24, thisStream:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v28

    if-nez v28, :cond_0

    .line 1411
    const/16 v28, 0x0

    .line 1516
    :goto_0
    return v28

    .line 1412
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v28

    sget-object v29, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 1413
    const/16 v28, 0x0

    goto :goto_0

    .line 1414
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v24

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v28

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v28

    sget-object v29, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_3

    .line 1416
    :cond_2
    const/16 v28, 0x0

    goto :goto_0

    .line 1417
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v28

    const-string v29, "obj"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 1418
    :cond_4
    const/16 v28, 0x0

    goto :goto_0

    .line 1419
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 1420
    .local v16, object:Lcom/itextpdf/text/pdf/PdfObject;
    const/16 v23, 0x0

    .line 1421
    .local v23, stm:Lcom/itextpdf/text/pdf/PRStream;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v28

    if-eqz v28, :cond_6

    move-object/from16 v23, v16

    .line 1422
    check-cast v23, Lcom/itextpdf/text/pdf/PRStream;

    .line 1423
    sget-object v28, Lcom/itextpdf/text/pdf/PdfName;->XREF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_7

    .line 1424
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1427
    :cond_6
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1428
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v28, v0

    if-nez v28, :cond_8

    .line 1429
    new-instance v28, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1432
    :cond_8
    sget-object v28, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v28

    check-cast v28, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->setLength(I)V

    .line 1433
    sget-object v28, Lcom/itextpdf/text/pdf/PdfName;->SIZE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v28

    check-cast v28, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v21

    .line 1435
    .local v21, size:I
    sget-object v28, Lcom/itextpdf/text/pdf/PdfName;->INDEX:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    .line 1436
    .local v15, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v15, :cond_c

    .line 1437
    new-instance v11, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v11}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1438
    .local v11, index:Lcom/itextpdf/text/pdf/PdfArray;
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    const/16 v29, 0x1

    aput v21, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add([I)Z

    .line 1442
    :goto_1
    sget-object v28, Lcom/itextpdf/text/pdf/PdfName;->W:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    check-cast v26, Lcom/itextpdf/text/pdf/PdfArray;

    .line 1443
    .local v26, w:Lcom/itextpdf/text/pdf/PdfArray;
    const-wide/16 v18, -0x1

    .line 1444
    .local v18, prev:J
    sget-object v28, Lcom/itextpdf/text/pdf/PdfName;->PREV:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    .line 1445
    if-eqz v15, :cond_9

    .line 1446
    check-cast v15, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v15           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfNumber;->longValue()J

    move-result-wide v18

    .line 1451
    :cond_9
    mul-int/lit8 v28, v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->ensureXrefSize(I)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    move-object/from16 v28, v0

    if-nez v28, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    move/from16 v28, v0

    if-nez v28, :cond_a

    .line 1453
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    .line 1454
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/LongHashtable;

    move-object/from16 v28, v0

    if-nez v28, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 1455
    new-instance v28, Lcom/itextpdf/text/pdf/LongHashtable;

    invoke-direct/range {v28 .. v28}, Lcom/itextpdf/text/pdf/LongHashtable;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/LongHashtable;

    .line 1456
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v3

    .line 1457
    .local v3, b:[B
    const/4 v5, 0x0

    .line 1458
    .local v5, bptr:I
    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 1459
    .local v27, wc:[I
    const/4 v12, 0x0

    .local v12, k:I
    :goto_2
    const/16 v28, 0x3

    move/from16 v0, v28

    if-ge v12, v0, :cond_d

    .line 1460
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v28

    aput v28, v27, v12

    .line 1459
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .end local v3           #b:[B
    .end local v5           #bptr:I
    .end local v11           #index:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v12           #k:I
    .end local v18           #prev:J
    .end local v26           #w:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v27           #wc:[I
    .restart local v15       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_c
    move-object v11, v15

    .line 1441
    check-cast v11, Lcom/itextpdf/text/pdf/PdfArray;

    .restart local v11       #index:Lcom/itextpdf/text/pdf/PdfArray;
    goto/16 :goto_1

    .line 1461
    .end local v15           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v3       #b:[B
    .restart local v5       #bptr:I
    .restart local v12       #k:I
    .restart local v18       #prev:J
    .restart local v26       #w:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v27       #wc:[I
    :cond_d
    const/4 v10, 0x0

    .local v10, idx:I
    :goto_3
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_15

    .line 1462
    invoke-virtual {v11, v10}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v22

    .line 1463
    .local v22, start:I
    add-int/lit8 v28, v10, 0x1

    move/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v13

    .line 1464
    .local v13, length:I
    add-int v28, v22, v13

    mul-int/lit8 v28, v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->ensureXrefSize(I)V

    move v14, v13

    .line 1465
    .end local v13           #length:I
    .local v14, length:I
    :goto_4
    add-int/lit8 v13, v14, -0x1

    .end local v14           #length:I
    .restart local v13       #length:I
    if-lez v14, :cond_14

    .line 1466
    const/16 v25, 0x1

    .line 1467
    .local v25, type:I
    const/16 v28, 0x0

    aget v28, v27, v28

    if-lez v28, :cond_e

    .line 1468
    const/16 v25, 0x0

    .line 1469
    const/4 v12, 0x0

    :goto_5
    const/16 v28, 0x0

    aget v28, v27, v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_e

    .line 1470
    shl-int/lit8 v28, v25, 0x8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #bptr:I
    .local v6, bptr:I
    aget-byte v29, v3, v5

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    add-int v25, v28, v29

    .line 1469
    add-int/lit8 v12, v12, 0x1

    move v5, v6

    .end local v6           #bptr:I
    .restart local v5       #bptr:I
    goto :goto_5

    .line 1472
    :cond_e
    const-wide/16 v7, 0x0

    .line 1473
    .local v7, field2:J
    const/4 v12, 0x0

    :goto_6
    const/16 v28, 0x1

    aget v28, v27, v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_f

    .line 1474
    const/16 v28, 0x8

    shl-long v28, v7, v28

    add-int/lit8 v6, v5, 0x1

    .end local v5           #bptr:I
    .restart local v6       #bptr:I
    aget-byte v30, v3, v5

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v7, v28, v30

    .line 1473
    add-int/lit8 v12, v12, 0x1

    move v5, v6

    .end local v6           #bptr:I
    .restart local v5       #bptr:I
    goto :goto_6

    .line 1475
    :cond_f
    const/4 v9, 0x0

    .line 1476
    .local v9, field3:I
    const/4 v12, 0x0

    :goto_7
    const/16 v28, 0x2

    aget v28, v27, v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_10

    .line 1477
    shl-int/lit8 v28, v9, 0x8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #bptr:I
    .restart local v6       #bptr:I
    aget-byte v29, v3, v5

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    add-int v9, v28, v29

    .line 1476
    add-int/lit8 v12, v12, 0x1

    move v5, v6

    .end local v6           #bptr:I
    .restart local v5       #bptr:I
    goto :goto_7

    .line 1478
    :cond_10
    mul-int/lit8 v4, v22, 0x2

    .line 1479
    .local v4, base:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v28, v0

    aget-wide v28, v28, v4

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v28, v0

    add-int/lit8 v29, v4, 0x1

    aget-wide v28, v28, v29

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_11

    .line 1480
    packed-switch v25, :pswitch_data_0

    .line 1507
    :cond_11
    :goto_8
    add-int/lit8 v22, v22, 0x1

    move v14, v13

    .line 1508
    .end local v13           #length:I
    .restart local v14       #length:I
    goto/16 :goto_4

    .line 1482
    .end local v14           #length:I
    .restart local v13       #length:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v28, v0

    const-wide/16 v29, -0x1

    aput-wide v29, v28, v4

    goto :goto_8

    .line 1485
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v28, v0

    aput-wide v7, v28, v4

    goto :goto_8

    .line 1488
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v28, v0

    int-to-long v0, v9

    move-wide/from16 v29, v0

    aput-wide v29, v28, v4

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v28, v0

    add-int/lit8 v29, v4, 0x1

    aput-wide v7, v28, v29

    .line 1490
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    move/from16 v28, v0

    if-eqz v28, :cond_12

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/LongHashtable;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x0

    move-object/from16 v0, v28

    move-wide/from16 v1, v29

    invoke-virtual {v0, v7, v8, v1, v2}, Lcom/itextpdf/text/pdf/LongHashtable;->put(JJ)J

    goto :goto_8

    .line 1494
    :cond_12
    long-to-int v0, v7

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 1495
    .local v17, on:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 1496
    .local v20, seq:Lcom/itextpdf/text/pdf/IntHashtable;
    if-nez v20, :cond_13

    .line 1497
    new-instance v20, Lcom/itextpdf/text/pdf/IntHashtable;

    .end local v20           #seq:Lcom/itextpdf/text/pdf/IntHashtable;
    invoke-direct/range {v20 .. v20}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 1498
    .restart local v20       #seq:Lcom/itextpdf/text/pdf/IntHashtable;
    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1502
    :cond_13
    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto/16 :goto_8

    .line 1461
    .end local v4           #base:I
    .end local v7           #field2:J
    .end local v9           #field3:I
    .end local v17           #on:Ljava/lang/Integer;
    .end local v20           #seq:Lcom/itextpdf/text/pdf/IntHashtable;
    .end local v25           #type:I
    :cond_14
    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_3

    .line 1510
    .end local v13           #length:I
    .end local v22           #start:I
    :cond_15
    mul-int/lit8 v24, v24, 0x2

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_16

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v28, v0

    const-wide/16 v29, -0x1

    aput-wide v29, v28, v24

    .line 1514
    :cond_16
    const-wide/16 v28, -0x1

    cmp-long v28, v18, v28

    if-nez v28, :cond_17

    .line 1515
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 1516
    :cond_17
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfReader;->readXRefStream(J)Z

    move-result v28

    goto/16 :goto_0

    .line 1480
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected readXref()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1302
    iput-boolean v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->hybridXref:Z

    .line 1303
    iput-boolean v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->newXrefType:Z

    .line 1304
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStartxref()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1305
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    .line 1306
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "startxref"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1307
    new-instance v4, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v5, "startxref.not.found"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1308
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    .line 1309
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v4, v5, :cond_1

    .line 1310
    new-instance v4, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v5, "startxref.is.not.followed.by.a.number"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1311
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->longValue()J

    move-result-wide v1

    .line 1312
    .local v1, startxref:J
    iput-wide v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:J

    .line 1313
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->eofPos:J

    .line 1315
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfReader;->readXRefStream(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1316
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->newXrefType:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    :cond_2
    return-void

    .line 1320
    :catch_0
    move-exception v4

    .line 1321
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    .line 1322
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4, v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1323
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readXrefSection()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1324
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1326
    .local v3, trailer2:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_0
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PREV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 1327
    .local v0, prev:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v0, :cond_2

    .line 1329
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfNumber;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1330
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readXrefSection()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 1331
    goto :goto_0
.end method

.method protected readXrefSection()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "xref"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    const-string v18, "xref.subsection.not.found"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1338
    :cond_0
    const/4 v13, 0x0

    .line 1339
    .local v13, start:I
    const/4 v6, 0x0

    .line 1340
    .local v6, end:I
    const-wide/16 v11, 0x0

    .line 1341
    .local v11, pos:J
    const/4 v7, 0x0

    .line 1343
    .local v7, gen:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "trailer"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1388
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1389
    .local v14, trailer:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->SIZE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 1390
    .local v15, xrefSize:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v17

    mul-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->ensureXrefSize(I)V

    .line 1391
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->XREFSTM:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 1392
    .local v16, xrs:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1393
    check-cast v16, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v16           #xrs:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v9

    .line 1395
    .local v9, loc:I
    int-to-long v0, v9

    move-wide/from16 v17, v0

    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfReader;->readXRefStream(J)Z

    .line 1396
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->newXrefType:Z

    .line 1397
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->hybridXref:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    .end local v9           #loc:I
    :cond_2
    return-object v14

    .line 1346
    .end local v14           #trailer:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v15           #xrefSize:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v17

    sget-object v18, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    const-string v18, "object.number.of.the.first.object.in.this.xref.subsection.not.found"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1348
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v13

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v17

    sget-object v18, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    const-string v18, "number.of.entries.in.this.xref.subsection.not.found"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1352
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v17

    add-int v6, v17, v13

    .line 1353
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_7

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()J

    move-result-wide v3

    .line 1355
    .local v3, back:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->longValue()J

    move-result-wide v11

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v7

    .line 1359
    const-wide/16 v17, 0x0

    cmp-long v17, v11, v17

    if-nez v17, :cond_6

    const v17, 0xffff

    move/from16 v0, v17

    if-ne v7, v0, :cond_6

    .line 1360
    add-int/lit8 v13, v13, -0x1

    .line 1361
    add-int/lit8 v6, v6, -0x1

    .line 1363
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1365
    .end local v3           #back:J
    :cond_7
    mul-int/lit8 v17, v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->ensureXrefSize(I)V

    .line 1366
    move v8, v13

    .local v8, k:I
    :goto_0
    if-ge v8, v6, :cond_1

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->longValue()J

    move-result-wide v11

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v7

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1372
    mul-int/lit8 v10, v8, 0x2

    .line 1373
    .local v10, p:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v17, v0

    aget-wide v17, v17, v10

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x1

    aget-wide v17, v17, v18

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_8

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v17, v0

    aput-wide v11, v17, v10

    .line 1366
    :cond_8
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1380
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "f"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v17, v0

    aget-wide v17, v17, v10

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x1

    aget-wide v17, v17, v18

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_8

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v17, v0

    const-wide/16 v18, -0x1

    aput-wide v18, v17, v10

    goto :goto_1

    .line 1385
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v17, v0

    const-string v18, "invalid.cross.reference.entry.in.this.xref.subsection"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    goto :goto_1

    .line 1399
    .end local v8           #k:I
    .end local v10           #p:I
    .restart local v9       #loc:I
    .restart local v14       #trailer:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v15       #xrefSize:Lcom/itextpdf/text/pdf/PdfNumber;
    :catch_0
    move-exception v5

    .line 1400
    .local v5, e:Ljava/io/IOException;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    .line 1401
    throw v5
.end method

.method protected rebuildXref()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1520
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->hybridXref:Z

    .line 1521
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->newXrefType:Z

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1523
    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v0, v0, [[J

    move-object/from16 v20, v0

    .line 1524
    .local v20, xr:[[J
    const-wide/16 v18, 0x0

    .line 1525
    .local v18, top:J
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1526
    const/16 v22, 0x40

    move/from16 v0, v22

    new-array v10, v0, [B

    .line 1528
    .local v10, line:[B
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()J

    move-result-wide v16

    .line 1529
    .local v16, pos:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->readLineSegment([B)Z

    move-result v22

    if-nez v22, :cond_1

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v22, v0

    if-nez v22, :cond_7

    .line 1569
    new-instance v22, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v23, "trailer.not.found"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1531
    :cond_1
    const/16 v22, 0x0

    aget-byte v22, v10, v22

    const/16 v23, 0x74

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 1532
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "trailer"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()J

    move-result-wide v16

    .line 1538
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1539
    .local v5, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v22

    if-eqz v22, :cond_2

    .line 1540
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1544
    .end local v5           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :catch_0
    move-exception v6

    .line 1545
    .local v6, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    goto/16 :goto_0

    .line 1542
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v5       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1548
    .end local v5           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_3
    const/16 v22, 0x0

    aget-byte v22, v10, v22

    const/16 v23, 0x30

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    const/16 v22, 0x0

    aget-byte v22, v10, v22

    const/16 v23, 0x39

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_0

    .line 1549
    invoke-static {v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->checkObjectStart([B)[J

    move-result-object v15

    .line 1550
    .local v15, obj:[J
    if-eqz v15, :cond_0

    .line 1552
    const/16 v22, 0x0

    aget-wide v13, v15, v22

    .line 1553
    .local v13, num:J
    const/16 v22, 0x1

    aget-wide v7, v15, v22

    .line 1554
    .local v7, gen:J
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v22, v13, v22

    if-ltz v22, :cond_4

    .line 1555
    const-wide/16 v22, 0x2

    mul-long v11, v13, v22

    .line 1556
    .local v11, newLength:J
    long-to-int v0, v11

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [[J

    move-object/from16 v21, v0

    .line 1557
    .local v21, xr2:[[J
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1558
    move-object/from16 v20, v21

    .line 1560
    .end local v11           #newLength:J
    .end local v21           #xr2:[[J
    :cond_4
    cmp-long v22, v13, v18

    if-ltz v22, :cond_5

    .line 1561
    const-wide/16 v22, 0x1

    add-long v18, v13, v22

    .line 1562
    :cond_5
    long-to-int v0, v13

    move/from16 v22, v0

    aget-object v22, v20, v22

    if-eqz v22, :cond_6

    long-to-int v0, v13

    move/from16 v22, v0

    aget-object v22, v20, v22

    const/16 v23, 0x1

    aget-wide v22, v22, v23

    cmp-long v22, v7, v22

    if-ltz v22, :cond_0

    .line 1563
    :cond_6
    const/16 v22, 0x0

    aput-wide v16, v15, v22

    .line 1564
    long-to-int v0, v13

    move/from16 v22, v0

    aput-object v15, v20, v22

    goto/16 :goto_0

    .line 1570
    .end local v7           #gen:J
    .end local v13           #num:J
    .end local v15           #obj:[J
    :cond_7
    const-wide/16 v22, 0x2

    mul-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    .line 1571
    const/4 v9, 0x0

    .local v9, k:I
    :goto_1
    int-to-long v0, v9

    move-wide/from16 v22, v0

    cmp-long v22, v22, v18

    if-gez v22, :cond_9

    .line 1572
    aget-object v15, v20, v9

    .line 1573
    .restart local v15       #obj:[J
    if-eqz v15, :cond_8

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v22, v0

    mul-int/lit8 v23, v9, 0x2

    const/16 v24, 0x0

    aget-wide v24, v15, v24

    aput-wide v24, v22, v23

    .line 1571
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1576
    .end local v15           #obj:[J
    :cond_9
    return-void
.end method

.method public releaseLastXrefPartial()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 959
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    if-eq v0, v3, :cond_0

    .line 960
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 961
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 963
    :cond_0
    return-void
.end method

.method public releasePage(I)V
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 1994
    return-void
.end method

.method public removeAnnotations()V
    .locals 4

    .prologue
    .line 2781
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 2782
    const/4 v0, 0x1

    .local v0, k:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 2783
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 2784
    .local v1, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2785
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 2782
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2787
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_1

    .line 2789
    .end local v1           #page:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2790
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 2791
    return-void
.end method

.method public removeFields()V
    .locals 9

    .prologue
    .line 2752
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 2753
    const/4 v4, 0x1

    .local v4, k:I
    :goto_0
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v7

    if-gt v4, v7, :cond_5

    .line 2754
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v7, v4}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 2755
    .local v6, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    .line 2756
    .local v1, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v1, :cond_0

    .line 2757
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v7, v4}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 2753
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2760
    :cond_0
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 2761
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 2762
    .local v5, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2760
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v5

    .line 2764
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2765
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->WIDGET:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2766
    add-int/lit8 v3, v2, -0x1

    .end local v2           #j:I
    .local v3, j:I
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_3

    .line 2768
    .end local v0           #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2769
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_1

    .line 2771
    :cond_4
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v7, v4}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    goto :goto_1

    .line 2773
    .end local v1           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #j:I
    .end local v6           #page:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_5
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2774
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 2775
    return-void
.end method

.method protected removeUnusedNode(Lcom/itextpdf/text/pdf/PdfObject;[Z)V
    .locals 16
    .parameter "obj"
    .parameter "hits"

    .prologue
    .line 3040
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    .line 3041
    .local v11, state:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3042
    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 3043
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 3044
    .local v2, current:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 3046
    const/4 v1, 0x0

    .line 3047
    .local v1, ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v3, 0x0

    .line 3048
    .local v3, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v7, 0x0

    .line 3049
    .local v7, keys:[Lcom/itextpdf/text/pdf/PdfName;
    const/4 v9, 0x0

    .line 3050
    .local v9, objs:[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 3051
    .local v4, idx:I
    instance-of v13, v2, Lcom/itextpdf/text/pdf/PdfObject;

    if-eqz v13, :cond_2

    move-object/from16 p1, v2

    .line 3052
    check-cast p1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 3053
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move-object/from16 v13, p1

    .line 3061
    check-cast v13, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfArray;->getArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3087
    .end local v2           #current:Ljava/lang/Object;
    :goto_1
    if-eqz v1, :cond_6

    .line 3088
    move v5, v4

    .local v5, k:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_0

    .line 3089
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/PdfObject;

    .line 3090
    .local v12, v:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v13, v12

    .line 3091
    check-cast v13, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v8

    .line 3092
    .local v8, num:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_4

    .line 3093
    :cond_1
    sget-object v13, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    invoke-virtual {v1, v5, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3088
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5           #k:I
    .end local v8           #num:I
    .end local v12           #v:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v2       #current:Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v3, p1

    .line 3056
    check-cast v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3057
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v13

    new-array v7, v13, [Lcom/itextpdf/text/pdf/PdfName;

    .line 3058
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    :pswitch_3
    move-object/from16 v10, p1

    .line 3064
    check-cast v10, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 3065
    .local v10, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v8

    .line 3066
    .restart local v8       #num:I
    aget-boolean v13, p2, v8

    if-nez v13, :cond_0

    .line 3067
    const/4 v13, 0x1

    aput-boolean v13, p2, v8

    .line 3068
    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3076
    .end local v8           #num:I
    .end local v10           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_2
    check-cast v2, [Ljava/lang/Object;

    .end local v2           #current:Ljava/lang/Object;
    move-object v9, v2

    check-cast v9, [Ljava/lang/Object;

    .line 3077
    const/4 v13, 0x0

    aget-object v13, v9, v13

    instance-of v13, v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_3

    .line 3078
    const/4 v13, 0x0

    aget-object v1, v9, v13

    .end local v1           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 3079
    .restart local v1       #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v13, 0x1

    aget-object v13, v9, v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_1

    .line 3082
    :cond_3
    const/4 v13, 0x0

    aget-object v13, v9, v13

    check-cast v13, [Lcom/itextpdf/text/pdf/PdfName;

    move-object v7, v13

    check-cast v7, [Lcom/itextpdf/text/pdf/PdfName;

    .line 3083
    const/4 v13, 0x1

    aget-object v3, v9, v13

    .end local v3           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3084
    .restart local v3       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v13, 0x2

    aget-object v13, v9, v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_1

    .line 3097
    .restart local v5       #k:I
    .restart local v12       #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    if-nez v9, :cond_5

    .line 3098
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    const/4 v14, 0x1

    add-int/lit8 v15, v5, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3103
    :goto_3
    invoke-virtual {v11, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3100
    :cond_5
    const/4 v13, 0x1

    add-int/lit8 v14, v5, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v13

    .line 3101
    invoke-virtual {v11, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3108
    .end local v5           #k:I
    .end local v12           #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_6
    move v5, v4

    .restart local v5       #k:I
    :goto_4
    array-length v13, v7

    if-ge v5, v13, :cond_0

    .line 3109
    aget-object v6, v7, v5

    .line 3110
    .local v6, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    .line 3111
    .restart local v12       #v:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v13

    if-eqz v13, :cond_8

    move-object v13, v12

    .line 3112
    check-cast v13, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v8

    .line 3113
    .restart local v8       #num:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_8

    .line 3114
    :cond_7
    sget-object v13, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    invoke-virtual {v3, v6, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3108
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3118
    .end local v8           #num:I
    :cond_8
    if-nez v9, :cond_9

    .line 3119
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    add-int/lit8 v15, v5, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3124
    :goto_5
    invoke-virtual {v11, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3121
    :cond_9
    const/4 v13, 0x2

    add-int/lit8 v14, v5, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v13

    .line 3122
    invoke-virtual {v11, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 3129
    .end local v1           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v3           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v4           #idx:I
    .end local v5           #k:I
    .end local v6           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v7           #keys:[Lcom/itextpdf/text/pdf/PdfName;
    .end local v9           #objs:[Ljava/lang/Object;
    .end local v12           #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_a
    return-void

    .line 3053
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public removeUnusedObjects()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3135
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Z

    .line 3136
    .local v0, hits:[Z
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p0, v3, v0}, Lcom/itextpdf/text/pdf/PdfReader;->removeUnusedNode(Lcom/itextpdf/text/pdf/PdfObject;[Z)V

    .line 3137
    const/4 v2, 0x0

    .line 3138
    .local v2, total:I
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-eqz v3, :cond_1

    .line 3139
    const/4 v1, 0x1

    .local v1, k:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 3140
    aget-boolean v3, v0, v1

    if-nez v3, :cond_0

    .line 3141
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    mul-int/lit8 v4, v1, 0x2

    const-wide/16 v5, -0x1

    aput-wide v5, v3, v4

    .line 3142
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    .line 3143
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3144
    add-int/lit8 v2, v2, 0x1

    .line 3139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3149
    .end local v1           #k:I
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #k:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 3150
    aget-boolean v3, v0, v1

    if-nez v3, :cond_2

    .line 3151
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3152
    add-int/lit8 v2, v2, 0x1

    .line 3149
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3156
    :cond_3
    return v2
.end method

.method public removeUsageRights()V
    .locals 3

    .prologue
    .line 3665
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PERMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 3666
    .local v0, perms:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_1

    .line 3672
    :cond_0
    :goto_0
    return-void

    .line 3668
    :cond_1
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->UR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 3669
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->UR3:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 3670
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3671
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PERMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_0
.end method

.method public resetLastXrefPartial()V
    .locals 1

    .prologue
    .line 952
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 953
    return-void
.end method

.method public resetReleasePage()V
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 2001
    return-void
.end method

.method public selectPages(Ljava/lang/String;)V
    .locals 1
    .parameter "ranges"

    .prologue
    .line 3228
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v0

    invoke-static {p1, v0}, Lcom/itextpdf/text/pdf/SequenceList;->expand(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->selectPages(Ljava/util/List;)V

    .line 3229
    return-void
.end method

.method public selectPages(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3238
    .local p1, pagesToKeep:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    #calls: Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->selectPages(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->access$100(Lcom/itextpdf/text/pdf/PdfReader$PageRefs;Ljava/util/List;)V

    .line 3239
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->removeUnusedObjects()I

    .line 3240
    return-void
.end method

.method public setAppendable(Z)V
    .locals 2
    .parameter "appendable"

    .prologue
    .line 3287
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfReader;->appendable:Z

    .line 3288
    if-eqz p1, :cond_0

    .line 3289
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 3290
    :cond_0
    return-void
.end method

.method public setPageContent(I[B)V
    .locals 1
    .parameter "pageNum"
    .parameter "content"

    .prologue
    .line 2168
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfReader;->setPageContent(I[BI)V

    .line 2169
    return-void
.end method

.method public setPageContent(I[BI)V
    .locals 5
    .parameter "pageNum"
    .parameter "content"
    .parameter "compressionLevel"

    .prologue
    const/4 v3, -0x1

    .line 2177
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 2178
    .local v1, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v1, :cond_0

    .line 2189
    :goto_0
    return-void

    .line 2180
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 2181
    .local v0, contents:Lcom/itextpdf/text/pdf/PdfObject;
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    .line 2182
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2183
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    if-ne v2, v3, :cond_1

    .line 2184
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    .line 2187
    :cond_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    invoke-direct {v3, p0, v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2188
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    new-instance v4, Lcom/itextpdf/text/pdf/PRStream;

    invoke-direct {v4, p0, p2, p3}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PdfReader;[BI)V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTampered(Z)V
    .locals 1
    .parameter "tampered"

    .prologue
    .line 2406
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 2407
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->keepPages()V

    .line 2408
    return-void
.end method

.method public setViewerPreferences(I)V
    .locals 1
    .parameter "preferences"

    .prologue
    .line 3247
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->setViewerPreferences(I)V

    .line 3248
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->setViewerPreferences(Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;)V

    .line 3249
    return-void
.end method

.method setViewerPreferences(Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;)V
    .locals 1
    .parameter "vp"

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->addToCatalog(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 3263
    return-void
.end method

.method public shuffleSubsetNames()I
    .locals 15

    .prologue
    .line 2552
    const/4 v10, 0x0

    .line 2553
    .local v10, total:I
    const/4 v4, 0x1

    .local v4, k:I
    :goto_0
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 2554
    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 2555
    .local v7, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v11

    if-nez v11, :cond_1

    .line 2553
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v7

    .line 2557
    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2558
    .local v2, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v2, v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2560
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v2, v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->MMTYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v2, v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->TRUETYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v2, v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2563
    :cond_2
    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getSubsetPrefix(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v8

    .line 2564
    .local v8, s:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 2566
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itextpdf/text/pdf/BaseFont;->createSubsetPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2567
    .local v6, ns:Ljava/lang/String;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 2568
    .local v5, newName:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2569
    invoke-direct {p0, v4, v2}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2570
    add-int/lit8 v10, v10, 0x1

    .line 2571
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 2572
    .local v3, fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v3, :cond_0

    .line 2574
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->FONTNAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v11, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 2576
    .end local v3           #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v5           #newName:Lcom/itextpdf/text/pdf/PdfName;
    .end local v6           #ns:Ljava/lang/String;
    .end local v8           #s:Ljava/lang/String;
    :cond_3
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->TYPE0:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v2, v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2577
    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getSubsetPrefix(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v8

    .line 2578
    .restart local v8       #s:Ljava/lang/String;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->DESCENDANTFONTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 2579
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_0

    .line 2581
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2583
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfArray;->getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 2584
    .local v1, desc:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getSubsetPrefix(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v9

    .line 2585
    .local v9, sde:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 2587
    invoke-static {}, Lcom/itextpdf/text/pdf/BaseFont;->createSubsetPrefix()Ljava/lang/String;

    move-result-object v6

    .line 2588
    .restart local v6       #ns:Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 2589
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x7

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2590
    :cond_4
    invoke-direct {p0, v4, v2}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2591
    new-instance v5, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 2592
    .restart local v5       #newName:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v11, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2593
    add-int/lit8 v10, v10, 0x1

    .line 2594
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 2595
    .restart local v3       #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v3, :cond_0

    .line 2597
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->FONTNAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v11, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 2600
    .end local v0           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #desc:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v5           #newName:Lcom/itextpdf/text/pdf/PdfName;
    .end local v6           #ns:Ljava/lang/String;
    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #sde:Ljava/lang/String;
    :cond_5
    return v10
.end method
