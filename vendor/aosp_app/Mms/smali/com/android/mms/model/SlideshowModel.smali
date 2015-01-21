.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/model/SlideshowModel$2;,
        Lcom/android/mms/model/SlideshowModel$MediaType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DUR_SEC:F = 5.0f

.field private static final MMS_CONTENT_TYPE_HEAER_LENGTH:I = 0x80

.field private static final MMS_HEADER_SIZE:I = 0x80

.field public static final MMS_SLIDESHOW_INIT_SIZE:I = 0x5e6

.field public static final SLIDESHOW_SLOP:I = 0x400

.field private static final SMILE_HEADER_SIZE:I = 0x80

.field private static final TAG:Ljava/lang/String; = "Mms/slideshow"

.field public static final VCALENDAR:Ljava/lang/String; = "BEGIN:VCALENDAR"

.field public static final VCALENDAR_DESCRIPTION:Ljava/lang/String; = ".vcs"

.field public static final VCARD:Ljava/lang/String; = "BEGIN:VCARD"

.field public static final VCARD_DESCRIPTION:Ljava/lang/String; = ".vcf"

.field private static mHasDrmContent:Z = false

.field private static mHasDrmRight:Z = false

.field public static final mReserveSize:I = 0x580


# instance fields
.field private final mAttachFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/FileAttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentMessageSize:I

.field private mCurrentSlideshowSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field private mRemovedModel:Z

.field private final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalMessageSize:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/model/SlideshowModel;->mRemovedModel:Z

    .line 120
    const/16 v0, 0x580

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentSlideshowSize:I

    .line 155
    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    .line 160
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 161
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V
    .locals 7
    .parameter "layouts"
    .parameter
    .parameter
    .parameter "documentCache"
    .parameter "pbCache"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/FileAttachmentModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    .local p2, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .local p3, attachFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 111
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/mms/model/SlideshowModel;->mRemovedModel:Z

    .line 120
    const/16 v5, 0x580

    iput v5, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentSlideshowSize:I

    .line 170
    const-string v5, "Mms/slideshow"

    const-string v6, "SlideshowModel.init"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 172
    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 174
    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    .line 176
    iput-object p6, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 177
    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 178
    iput-object p5, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 179
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 181
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->increaseSlideshowSize(I)V

    .line 182
    invoke-virtual {v4, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 186
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    const/4 v0, 0x0

    .line 188
    .local v0, attachSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 189
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v5}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :cond_1
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 192
    .local v3, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v3, :cond_2

    .line 193
    invoke-interface {v3}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseSlideshowSize(I)V

    .line 198
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/model/SlideshowModel;->initLayoutType()V

    .line 200
    return-void
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    .locals 76
    .parameter "context"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v61

    .line 214
    .local v61, partNum:I
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/mms/model/SlideshowModel;->mHasDrmContent:Z

    .line 215
    const/16 v49, 0x0

    .local v49, i:I
    :goto_0
    move/from16 v0, v49

    move/from16 v1, v61

    if-ge v0, v1, :cond_2

    .line 216
    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v60

    .line 217
    .local v60, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v35

    .line 218
    .local v35, cl:[B
    const/16 v62, 0x0

    .line 219
    .local v62, path:Ljava/lang/String;
    if-eqz v35, :cond_0

    .line 220
    new-instance v62, Ljava/lang/String;

    .end local v62           #path:Ljava/lang/String;
    move-object/from16 v0, v62

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 222
    .restart local v62       #path:Ljava/lang/String;
    :cond_0
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SlideshowModel path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v62

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    if-eqz v62, :cond_1

    .line 225
    const/16 v5, 0x2e

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v44

    .line 226
    .local v44, extName:Ljava/lang/String;
    const-string v5, "dcf"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    const-string v5, "Mms/slideshow"

    const-string v6, "SlideshowModel Has DrmContent"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/mms/model/SlideshowModel;->mHasDrmContent:Z

    .line 215
    .end local v44           #extName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v49, v49, 0x1

    goto :goto_0

    .line 235
    .end local v35           #cl:[B
    .end local v60           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v62           #path:Ljava/lang/String;
    :cond_2
    invoke-static/range {p0 .. p1}, Lcom/android/mms/model/SmilHelper;->getDocument(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v28

    .line 238
    .local v28, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v65

    .line 239
    .local v65, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface/range {v65 .. v65}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v72

    .line 243
    .local v72, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    const-string v5, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Landroid/view/WindowManager;

    .line 244
    .local v75, windowM:Landroid/view/WindowManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v36

    .line 245
    .local v36, config:Landroid/content/res/Configuration;
    invoke-interface/range {v75 .. v75}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v39

    .line 246
    .local v39, defDisplay:Landroid/view/Display;
    const/4 v8, 0x0

    .line 247
    .local v8, w:I
    const/4 v9, 0x0

    .line 248
    .local v9, h:I
    move-object/from16 v0, v36

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 249
    invoke-virtual/range {v39 .. v39}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 250
    invoke-virtual/range {v39 .. v39}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 256
    :goto_1
    if-eqz v8, :cond_3

    if-nez v9, :cond_4

    .line 257
    :cond_3
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v8

    .line 258
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v9

    .line 259
    move-object/from16 v0, v72

    invoke-interface {v0, v8}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 260
    move-object/from16 v0, v72

    invoke-interface {v0, v9}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 262
    :cond_4
    new-instance v4, Lcom/android/mms/model/RegionModel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 266
    .local v4, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v63, Ljava/util/ArrayList;

    invoke-direct/range {v63 .. v63}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v63, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface/range {v65 .. v65}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v58

    .line 268
    .local v58, nlRegions:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v64

    .line 271
    .local v64, regionsNum:I
    move/from16 v0, v64

    new-array v0, v0, [Lorg/w3c/dom/smil/SMILRegionElement;

    move-object/from16 v70, v0

    .line 272
    .local v70, smils:[Lorg/w3c/dom/smil/SMILRegionElement;
    const/16 v49, 0x0

    :goto_2
    move/from16 v0, v49

    move/from16 v1, v64

    if-ge v0, v1, :cond_6

    .line 274
    move-object/from16 v0, v58

    move/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/smil/SMILRegionElement;

    aput-object v5, v70, v49

    .line 272
    add-int/lit8 v49, v49, 0x1

    goto :goto_2

    .line 252
    .end local v4           #rootLayout:Lcom/android/mms/model/RegionModel;
    .end local v58           #nlRegions:Lorg/w3c/dom/NodeList;
    .end local v63           #regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    .end local v64           #regionsNum:I
    .end local v70           #smils:[Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_5
    invoke-virtual/range {v39 .. v39}, Landroid/view/Display;->getHeight()I

    move-result v8

    .line 253
    invoke-virtual/range {v39 .. v39}, Landroid/view/Display;->getWidth()I

    move-result v9

    goto :goto_1

    .line 276
    .restart local v4       #rootLayout:Lcom/android/mms/model/RegionModel;
    .restart local v58       #nlRegions:Lorg/w3c/dom/NodeList;
    .restart local v63       #regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    .restart local v64       #regionsNum:I
    .restart local v70       #smils:[Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_6
    new-instance v5, Lcom/android/mms/model/SlideshowModel$1;

    invoke-direct {v5}, Lcom/android/mms/model/SlideshowModel$1;-><init>()V

    move-object/from16 v0, v70

    invoke-static {v0, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 287
    const/16 v16, 0x0

    .line 288
    .local v16, itemHeight:I
    if-eqz v64, :cond_7

    .line 289
    div-int v16, v9, v64

    .line 291
    :cond_7
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SlideshowModel.createFromPduBody(): RootLayout.Width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v72 .. v72}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", RootLayout.Height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v72 .. v72}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Windows.w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Windows.h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/16 v49, 0x0

    :goto_3
    move/from16 v0, v49

    move/from16 v1, v64

    if-ge v0, v1, :cond_b

    .line 298
    aget-object v71, v70, v49

    .line 300
    .local v71, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    const/4 v5, 0x1

    move/from16 v0, v64

    if-ne v0, v5, :cond_8

    .line 301
    new-instance v10, Lcom/android/mms/model/RegionModel;

    invoke-interface/range {v71 .. v71}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {v71 .. v71}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface/range {v71 .. v71}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v14

    invoke-interface/range {v71 .. v71}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v17

    move v15, v8

    invoke-direct/range {v10 .. v17}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 328
    .local v10, r:Lcom/android/mms/model/RegionModel;
    :goto_4
    move-object/from16 v0, v63

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v49, v49, 0x1

    goto :goto_3

    .line 304
    .end local v10           #r:Lcom/android/mms/model/RegionModel;
    :cond_8
    const/16 v20, 0x0

    .line 305
    .local v20, left:I
    const/16 v22, 0x0

    .line 306
    .local v22, width:I
    const/16 v21, 0x0

    .line 307
    .local v21, top:I
    const/16 v23, 0x0

    .line 308
    .local v23, height:I
    invoke-interface/range {v72 .. v72}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v5

    if-eqz v5, :cond_9

    .line 309
    invoke-virtual/range {v39 .. v39}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-interface/range {v71 .. v71}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-interface/range {v72 .. v72}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v6

    div-int v20, v5, v6

    .line 310
    invoke-virtual/range {v39 .. v39}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-interface/range {v71 .. v71}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-interface/range {v72 .. v72}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v6

    div-int v22, v5, v6

    .line 315
    :goto_5
    invoke-interface/range {v72 .. v72}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v5

    if-eqz v5, :cond_a

    .line 316
    invoke-virtual/range {v39 .. v39}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-interface/range {v71 .. v71}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-interface/range {v72 .. v72}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v6

    div-int v21, v5, v6

    .line 317
    invoke-virtual/range {v39 .. v39}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-interface/range {v71 .. v71}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-interface/range {v72 .. v72}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v6

    div-int v23, v5, v6

    .line 322
    :goto_6
    new-instance v10, Lcom/android/mms/model/RegionModel;

    invoke-interface/range {v71 .. v71}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v71 .. v71}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v71 .. v71}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v17, v10

    invoke-direct/range {v17 .. v24}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 323
    .restart local v10       #r:Lcom/android/mms/model/RegionModel;
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SlideshowModel.createFromPduBody(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lcom/android/mms/model/RegionModel;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 312
    .end local v10           #r:Lcom/android/mms/model/RegionModel;
    :cond_9
    const/16 v20, 0x0

    .line 313
    move/from16 v22, v8

    goto :goto_5

    .line 319
    :cond_a
    invoke-interface/range {v71 .. v71}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v21

    .line 320
    move/from16 v23, v16

    goto :goto_6

    .line 330
    .end local v20           #left:I
    .end local v21           #top:I
    .end local v22           #width:I
    .end local v23           #height:I
    .end local v71           #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_b
    new-instance v25, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v25

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    .line 333
    .local v25, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v40

    .line 334
    .local v40, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface/range {v40 .. v40}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v67

    .line 335
    .local v67, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v67 .. v67}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v68

    .line 336
    .local v68, slidesNum:I
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    move/from16 v1, v68

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 338
    .local v26, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SlideshowModel slidesNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/16 v49, 0x0

    :goto_7
    move/from16 v0, v49

    move/from16 v1, v68

    if-ge v0, v1, :cond_14

    .line 343
    const/16 v59, 0x0

    .line 345
    .local v59, par:Lorg/w3c/dom/smil/SMILParElement;
    :try_start_0
    move-object/from16 v0, v67

    move/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    move-object/from16 v59, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v53

    .line 354
    .local v53, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v53 .. v53}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v54

    .line 355
    .local v54, mediaNum:I
    new-instance v55, Ljava/util/ArrayList;

    move-object/from16 v0, v55

    move/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .local v55, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/16 v50, 0x0

    .local v50, j:I
    :goto_8
    move/from16 v0, v50

    move/from16 v1, v54

    if-ge v0, v1, :cond_12

    .line 359
    const/16 v69, 0x0

    .line 361
    .local v69, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :try_start_1
    move-object/from16 v0, v53

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    move-object/from16 v69, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move-object/from16 v2, v25

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MediaModel;

    move-result-object v52

    .line 377
    .local v52, media:Lcom/android/mms/model/MediaModel;
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MmsConfig.getSlideDurationEnabled(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSlideDurationEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSlideDurationEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 379
    invoke-virtual/range {v52 .. v52}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v56

    .line 381
    .local v56, mediadur:I
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "media.getDuration(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v52 .. v52}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v41

    .line 383
    .local v41, dur:F
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dur = par.getDur():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const/4 v5, 0x0

    cmpl-float v5, v41, v5

    if-nez v5, :cond_c

    .line 385
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v5

    mul-int/lit16 v0, v5, 0x3e8

    move/from16 v56, v0

    .line 386
    move-object/from16 v0, v52

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 389
    :cond_c
    move/from16 v0, v56

    int-to-float v5, v0

    const/high16 v6, 0x447a

    div-float/2addr v5, v6

    cmpl-float v5, v5, v41

    if-eqz v5, :cond_e

    .line 391
    const-string v5, "Mms/slideshow"

    const-string v6, "mediadur / 1000 != dur"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-interface/range {v69 .. v69}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v73

    .line 394
    .local v73, tag:Ljava/lang/String;
    move-object/from16 v0, v52

    iget-object v5, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "video"

    move-object/from16 v0, v73

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object/from16 v0, v52

    iget-object v5, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "audio"

    move-object/from16 v0, v73

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 404
    :cond_d
    const/high16 v5, 0x447a

    mul-float v5, v5, v41

    float-to-int v5, v5

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 405
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "par Dur:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " media Dur "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/high16 v7, 0x447a

    mul-float v7, v7, v41

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .end local v41           #dur:F
    .end local v56           #mediadur:I
    .end local v73           #tag:Ljava/lang/String;
    :cond_e
    :goto_9
    move-object/from16 v0, v69

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    move-object v5, v0

    move-object/from16 v0, v52

    invoke-static {v5, v0}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 434
    move-object/from16 v0, v55

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_4

    .line 357
    .end local v52           #media:Lcom/android/mms/model/MediaModel;
    :goto_a
    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_8

    .line 346
    .end local v50           #j:I
    .end local v53           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v54           #mediaNum:I
    .end local v55           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v69           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_0
    move-exception v32

    .line 347
    .local v32, cce:Ljava/lang/ClassCastException;
    const-string v5, "Mms/slideshow"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v32           #cce:Ljava/lang/ClassCastException;
    :goto_b
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_7

    .line 362
    .restart local v50       #j:I
    .restart local v53       #mediaNodes:Lorg/w3c/dom/NodeList;
    .restart local v54       #mediaNum:I
    .restart local v55       #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .restart local v69       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_1
    move-exception v32

    .line 363
    .restart local v32       #cce:Ljava/lang/ClassCastException;
    const-string v5, "Mms/slideshow"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 414
    .end local v32           #cce:Ljava/lang/ClassCastException;
    .restart local v41       #dur:F
    .restart local v52       #media:Lcom/android/mms/model/MediaModel;
    .restart local v56       #mediadur:I
    .restart local v73       #tag:Ljava/lang/String;
    :cond_f
    move/from16 v0, v56

    int-to-float v5, v0

    const/high16 v6, 0x447a

    div-float/2addr v5, v6

    cmpg-float v5, v5, v41

    if-gez v5, :cond_10

    .line 415
    const/high16 v5, 0x447a

    mul-float v5, v5, v41

    float-to-int v5, v5

    :try_start_3
    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 417
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "media.setDuration:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/high16 v7, 0x447a

    mul-float v7, v7, v41

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_9

    .line 435
    .end local v41           #dur:F
    .end local v52           #media:Lcom/android/mms/model/MediaModel;
    .end local v56           #mediadur:I
    .end local v73           #tag:Ljava/lang/String;
    :catch_2
    move-exception v43

    .line 436
    .local v43, e:Ljava/io/IOException;
    const-string v5, "Mms/slideshow"

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 419
    .end local v43           #e:Ljava/io/IOException;
    .restart local v41       #dur:F
    .restart local v52       #media:Lcom/android/mms/model/MediaModel;
    .restart local v56       #mediadur:I
    .restart local v73       #tag:Ljava/lang/String;
    :cond_10
    const/4 v5, 0x0

    cmpl-float v5, v41, v5

    if-eqz v5, :cond_11

    .line 420
    const/high16 v5, 0x447a

    mul-float v5, v5, v41

    float-to-int v5, v5

    :try_start_4
    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 422
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "media.setDuration:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/high16 v7, 0x447a

    mul-float v7, v7, v41

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_9

    .line 437
    .end local v41           #dur:F
    .end local v52           #media:Lcom/android/mms/model/MediaModel;
    .end local v56           #mediadur:I
    .end local v73           #tag:Ljava/lang/String;
    :catch_3
    move-exception v43

    .line 438
    .local v43, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "Mms/slideshow"

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 424
    .end local v43           #e:Ljava/lang/IllegalArgumentException;
    .restart local v41       #dur:F
    .restart local v52       #media:Lcom/android/mms/model/MediaModel;
    .restart local v56       #mediadur:I
    .restart local v73       #tag:Ljava/lang/String;
    :cond_11
    move/from16 v0, v56

    int-to-float v5, v0

    const/high16 v6, 0x447a

    div-float/2addr v5, v6

    :try_start_5
    move-object/from16 v0, v59

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 426
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "media.setDuration:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v56

    int-to-float v7, v0

    const/high16 v11, 0x447a

    div-float/2addr v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_9

    .line 441
    .end local v41           #dur:F
    .end local v52           #media:Lcom/android/mms/model/MediaModel;
    .end local v56           #mediadur:I
    .end local v73           #tag:Ljava/lang/String;
    :catch_4
    move-exception v43

    .line 442
    .local v43, e:Lcom/android/mms/UnsupportContentTypeException;
    const-string v5, "Mms/slideshow"

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 448
    .end local v43           #e:Lcom/android/mms/UnsupportContentTypeException;
    .end local v69           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_12
    :try_start_6
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v42

    .line 449
    .local v42, durSec:F
    const/4 v5, 0x0

    cmpg-float v5, v42, v5

    if-gtz v5, :cond_13

    .line 450
    const/high16 v5, 0x40a0

    move-object/from16 v0, v59

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 454
    :cond_13
    new-instance v66, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, v66

    move-object/from16 v1, v55

    invoke-direct {v0, v5, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 455
    .local v66, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v5}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 456
    move-object/from16 v0, v59

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    move-object v5, v0

    move-object/from16 v0, v66

    invoke-static {v5, v0}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 457
    move-object/from16 v0, v26

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, v66

    invoke-virtual {v0, v5}, Lcom/android/mms/model/Model;->setCurrentPage(I)V
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_b

    .line 462
    .end local v42           #durSec:F
    .end local v66           #slide:Lcom/android/mms/model/SlideModel;
    :catch_5
    move-exception v32

    .line 463
    .restart local v32       #cce:Ljava/lang/ClassCastException;
    const-string v5, "Mms/slideshow"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 468
    .end local v32           #cce:Ljava/lang/ClassCastException;
    .end local v50           #j:I
    .end local v53           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v54           #mediaNum:I
    .end local v55           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v59           #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_14
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v27, attachFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    const/16 v49, 0x0

    :goto_c
    move/from16 v0, v49

    move/from16 v1, v61

    if-ge v0, v1, :cond_29

    .line 472
    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v60

    .line 473
    .restart local v60       #part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v35

    .line 474
    .restart local v35       #cl:[B
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v57

    .line 475
    .local v57, name:[B
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v33

    .line 476
    .local v33, ci:[B
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v48

    .line 477
    .local v48, fn:[B
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v37

    .line 478
    .local v37, data:[B
    const/16 v46, 0x0

    .line 479
    .local v46, filename:Ljava/lang/String;
    if-eqz v35, :cond_17

    .line 480
    new-instance v46, Ljava/lang/String;

    .end local v46           #filename:Ljava/lang/String;
    move-object/from16 v0, v46

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 493
    .restart local v46       #filename:Ljava/lang/String;
    :goto_d
    const/16 v31, 0x0

    .line 494
    .local v31, PartUri:Ljava/lang/String;
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 495
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "part Uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v31

    .line 500
    :cond_15
    new-instance v74, Ljava/lang/String;

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    move-object/from16 v0, v74

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 503
    .local v74, type:Ljava/lang/String;
    invoke-static/range {v60 .. v60}, Lcom/android/mms/model/FileAttachmentModel;->isVCard(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 504
    new-instance v45, Lcom/android/mms/model/VCardModel;

    const-string v5, "text/x-vCard"

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/mms/model/VCardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 506
    .local v45, fam:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v31           #PartUri:Ljava/lang/String;
    .end local v45           #fam:Lcom/android/mms/model/FileAttachmentModel;
    .end local v74           #type:Ljava/lang/String;
    :cond_16
    :goto_e
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_c

    .line 481
    :cond_17
    if-eqz v57, :cond_18

    .line 482
    new-instance v46, Ljava/lang/String;

    .end local v46           #filename:Ljava/lang/String;
    move-object/from16 v0, v46

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v46       #filename:Ljava/lang/String;
    goto :goto_d

    .line 483
    :cond_18
    if-eqz v33, :cond_19

    .line 484
    new-instance v46, Ljava/lang/String;

    .end local v46           #filename:Ljava/lang/String;
    move-object/from16 v0, v46

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v46       #filename:Ljava/lang/String;
    goto :goto_d

    .line 485
    :cond_19
    if-eqz v48, :cond_16

    .line 486
    new-instance v46, Ljava/lang/String;

    .end local v46           #filename:Ljava/lang/String;
    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v46       #filename:Ljava/lang/String;
    goto :goto_d

    .line 508
    .restart local v31       #PartUri:Ljava/lang/String;
    .restart local v74       #type:Ljava/lang/String;
    :cond_1a
    invoke-static/range {v60 .. v60}, Lcom/android/mms/model/FileAttachmentModel;->isVCalendar(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 509
    new-instance v45, Lcom/android/mms/model/VCalendarModel;

    const-string v5, "text/x-vCalendar"

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/mms/model/VCalendarModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 511
    .restart local v45       #fam:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 512
    .end local v45           #fam:Lcom/android/mms/model/FileAttachmentModel;
    :cond_1b
    if-eqz v37, :cond_22

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    const-string v6, "BEGIN:VCARD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    const-string v6, "BEGIN:VCALENDAR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_1c
    invoke-static/range {v60 .. v60}, Lcom/android/mms/model/FileAttachmentModel;->isTxtType(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 514
    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 515
    .local v38, dataContent:Ljava/lang/String;
    const-string v47, ""

    .line 516
    .local v47, filenameString:Ljava/lang/String;
    const-string v5, "BEGIN:VCARD"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 517
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".vcf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 524
    :goto_f
    new-instance v45, Lcom/android/mms/model/VCardModel;

    const-string v5, "text/x-vCard"

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/mms/model/VCardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 527
    .restart local v45       #fam:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 519
    .end local v45           #fam:Lcom/android/mms/model/FileAttachmentModel;
    :cond_1d
    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".vcf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".vcf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    goto :goto_f

    .line 522
    :cond_1e
    move-object/from16 v47, v46

    goto :goto_f

    .line 528
    :cond_1f
    const-string v5, "BEGIN:VCALENDAR"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 529
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".vcs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 536
    :goto_10
    new-instance v45, Lcom/android/mms/model/VCalendarModel;

    const-string v5, "text/x-vCalendar"

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/mms/model/VCalendarModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 539
    .restart local v45       #fam:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 531
    .end local v45           #fam:Lcom/android/mms/model/FileAttachmentModel;
    :cond_20
    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".vcs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".vcs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    goto :goto_10

    .line 534
    :cond_21
    move-object/from16 v47, v46

    goto :goto_10

    .line 545
    .end local v38           #dataContent:Ljava/lang/String;
    .end local v47           #filenameString:Ljava/lang/String;
    :cond_22
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 546
    .local v51, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In add slideshow attach mMmsAttachmentEnhancePlugin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    if-eqz v51, :cond_16

    .line 548
    invoke-interface/range {v51 .. v51}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16

    .line 549
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isOtherAttachment(part) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v60 .. v60}, Lcom/android/mms/model/FileAttachmentModel;->isOtherAttachment(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v5, "Mms/slideshow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "partUri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "fileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isImageType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->isInSmil(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 552
    new-instance v45, Lcom/android/mms/model/FileModel;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/mms/model/FileModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 553
    .restart local v45       #fam:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    const-string v5, "Mms/slideshow"

    const-string v6, "In add Other attachment: Add image"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 555
    .end local v45           #fam:Lcom/android/mms/model/FileAttachmentModel;
    :cond_23
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->isInSmil(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 556
    new-instance v45, Lcom/android/mms/model/FileModel;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/mms/model/FileModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 558
    .restart local v45       #fam:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    const-string v5, "Mms/slideshow"

    const-string v6, "In add Other attachment: add video"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 560
    .end local v45           #fam:Lcom/android/mms/model/FileAttachmentModel;
    :cond_24
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->isInSmil(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 561
    new-instance v45, Lcom/android/mms/model/FileModel;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/mms/model/FileModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 563
    .restart local v45       #fam:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    const-string v5, "Mms/slideshow"

    const-string v6, "In add Other attachment: add audio"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 565
    .end local v45           #fam:Lcom/android/mms/model/FileAttachmentModel;
    :cond_25
    invoke-static/range {v60 .. v60}, Lcom/android/mms/model/FileAttachmentModel;->isOtherAttachment(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v5

    if-eqz v5, :cond_26

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->isInSmil(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 566
    new-instance v45, Lcom/android/mms/model/FileModel;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/mms/model/FileModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 568
    .restart local v45       #fam:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    const-string v5, "Mms/slideshow"

    const-string v6, "In add Other attachment: Add flie"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 571
    .end local v45           #fam:Lcom/android/mms/model/FileAttachmentModel;
    :cond_26
    const/16 v34, 0x0

    .line 573
    .local v34, cid:Ljava/lang/String;
    if-eqz v33, :cond_27

    .line 574
    new-instance v34, Ljava/lang/String;

    .end local v34           #cid:Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 576
    .restart local v34       #cid:Ljava/lang/String;
    :cond_27
    invoke-static/range {v60 .. v60}, Lcom/android/mms/model/FileAttachmentModel;->isTxtType(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v5

    if-eqz v5, :cond_28

    move-object/from16 v0, v46

    move-object/from16 v1, v34

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->isInSmil(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 577
    new-instance v45, Lcom/android/mms/model/FileModel;

    const-string v5, "text/plain"

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/mms/model/FileModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 579
    .restart local v45       #fam:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 580
    .end local v45           #fam:Lcom/android/mms/model/FileAttachmentModel;
    :cond_28
    invoke-static/range {v60 .. v60}, Lcom/android/mms/model/FileAttachmentModel;->isHtmType(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, v46

    move-object/from16 v1, v34

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->isInSmil(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 581
    new-instance v45, Lcom/android/mms/model/FileModel;

    const-string v5, "text/html"

    invoke-virtual/range {v60 .. v60}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/mms/model/FileModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 583
    .restart local v45       #fam:Lcom/android/mms/model/FileAttachmentModel;
    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 593
    .end local v31           #PartUri:Ljava/lang/String;
    .end local v33           #ci:[B
    .end local v34           #cid:Ljava/lang/String;
    .end local v35           #cl:[B
    .end local v37           #data:[B
    .end local v45           #fam:Lcom/android/mms/model/FileAttachmentModel;
    .end local v46           #filename:Ljava/lang/String;
    .end local v48           #fn:[B
    .end local v51           #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .end local v57           #name:[B
    .end local v60           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v74           #type:Ljava/lang/String;
    :cond_29
    new-instance v24, Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v29, p1

    move-object/from16 v30, p0

    invoke-direct/range {v24 .. v30}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V

    .line 594
    .local v24, slideshow:Lcom/android/mms/model/SlideshowModel;
    move-object/from16 v0, v24

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 595
    return-object v24
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"

    .prologue
    .line 203
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 842
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 843
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 845
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 846
    .local v0, msgType:I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 848
    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 850
    .restart local v2       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method private initLayoutType()V
    .locals 4

    .prologue
    .line 1399
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    if-nez v2, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1402
    :cond_1
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 1403
    .local v0, textRegionModel:Lcom/android/mms/model/RegionModel;
    const/4 v1, 0x0

    .line 1404
    .local v1, textRegionModelTop:I
    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    .line 1406
    if-lez v1, :cond_2

    .line 1407
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/LayoutModel;->setLayoutType(I)V

    goto :goto_0

    .line 1409
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/model/LayoutModel;->setLayoutType(I)V

    goto :goto_0
.end method

.method private static isInSmil(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 9
    .parameter "filename"
    .parameter "cid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v5, 0x1

    .line 625
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 626
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 627
    const-string v6, "Mms/slideshow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "text html filename = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    if-eqz p0, :cond_1

    invoke-virtual {v4, v3}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 631
    invoke-virtual {v4, v3}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 632
    const-string v6, "Mms/slideshow"

    const-string v7, "This media is in smil (1)"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .end local v3           #j:I
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :goto_1
    return v5

    .line 638
    .restart local v3       #j:I
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    const/4 v0, 0x0

    .line 639
    .local v0, cidSrc_1:Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 640
    invoke-virtual {v4, v3}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->unescapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    :cond_2
    const/4 v1, 0x0

    .line 643
    .local v1, cidSrc_2:Ljava/lang/String;
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 644
    const-string v6, "cid:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 645
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cid:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 647
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 648
    const-string v6, "Mms/slideshow"

    const-string v7, "This media is in smil (2)"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 651
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 652
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 653
    const-string v6, "Mms/slideshow"

    const-string v7, "This media is in smil (3)"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 626
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 661
    .end local v0           #cidSrc_1:Ljava/lang/String;
    .end local v1           #cidSrc_2:Ljava/lang/String;
    .end local v3           #j:I
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_5
    const-string v5, "Mms/slideshow"

    const-string v6, "This media is NOT in smil !! "

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private static isInSmil(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 7
    .parameter "filename"
    .parameter
    .parameter "PartUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v3, 0x1

    .line 603
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 604
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 605
    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 606
    const-string v4, "Mms/slideshow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInSmil() slide model Uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 608
    const-string v4, "Mms/slideshow"

    const-string v5, "isInSmil() This media is in smil (uri)"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .end local v1           #j:I
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :goto_1
    return v3

    .line 613
    .restart local v1       #j:I
    .restart local v2       #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 614
    const-string v4, "Mms/slideshow"

    const-string v5, "isInSmil() This media is in smil (filename)"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 604
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v1           #j:I
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :cond_3
    const-string v3, "Mms/slideshow"

    const-string v4, "isInSmil This media is NOT in smil"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .locals 24
    .parameter "document"

    .prologue
    .line 683
    new-instance v15, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v15}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 685
    .local v15, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v6, 0x0

    .line 686
    .local v6, hasForwardLock:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/mms/model/SlideModel;

    .line 687
    .local v16, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/model/MediaModel;

    .line 688
    .local v12, media:Lcom/android/mms/model/MediaModel;
    new-instance v14, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v14}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 690
    .local v14, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v20, v12

    .line 691
    check-cast v20, Lcom/android/mms/model/TextModel;

    .line 693
    .local v20, text:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 697
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 701
    .end local v20           #text:Lcom/android/mms/model/TextModel;
    :cond_2
    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 703
    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v18

    .line 705
    .local v18, src:Ljava/lang/String;
    const-string v21, "cid:"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    .line 706
    .local v19, startWithContentId:Z
    if-eqz v19, :cond_4

    .line 707
    const-string v21, "cid:"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 713
    .local v10, location:Ljava/lang/String;
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 717
    const/16 v21, 0x5

    invoke-static/range {v21 .. v21}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 720
    .local v11, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v11, :cond_3

    .line 721
    invoke-interface {v11}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 723
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 724
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 730
    :cond_3
    if-eqz v19, :cond_5

    .line 732
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 741
    :goto_2
    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 745
    :try_start_0
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, charsetName:Ljava/lang/String;
    move-object v0, v12

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .end local v2           #charsetName:Ljava/lang/String;
    :goto_3
    invoke-virtual {v12}, Lcom/android/mms/model/Model;->needUpdate()Z

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setNeedUpdate(Z)V

    .line 759
    invoke-virtual {v15, v14}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_0

    .line 709
    .end local v10           #location:Ljava/lang/String;
    .end local v11           #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    :cond_4
    move-object/from16 v10, v18

    .restart local v10       #location:Ljava/lang/String;
    goto :goto_1

    .line 735
    .restart local v11       #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    :cond_5
    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 736
    .local v9, index:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_6

    move-object v3, v10

    .line 738
    .local v3, contentId:Ljava/lang/String;
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_2

    .line 736
    .end local v3           #contentId:Ljava/lang/String;
    :cond_6
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 747
    .end local v9           #index:I
    :catch_0
    move-exception v4

    .line 748
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    const-string v21, "Mms/slideshow"

    const-string v22, "Unsupported encoding: "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v21, v12

    .line 749
    check-cast v21, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_3

    .line 752
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :cond_7
    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v21

    if-nez v21, :cond_8

    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v21

    if-nez v21, :cond_8

    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 753
    :cond_8
    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto :goto_3

    .line 755
    :cond_9
    const-string v21, "Mms/slideshow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unsupport media: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 764
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #location:Ljava/lang/String;
    .end local v11           #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .end local v12           #media:Lcom/android/mms/model/MediaModel;
    .end local v14           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v16           #slide:Lcom/android/mms/model/SlideModel;
    .end local v18           #src:Ljava/lang/String;
    .end local v19           #startWithContentId:Z
    :cond_a
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 765
    .local v13, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 766
    new-instance v17, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 767
    .local v17, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v21, "smil"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 768
    const-string v21, "smil.xml"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 769
    const-string v21, "application/smil"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 770
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 771
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 773
    const/16 v21, 0x5

    invoke-static/range {v21 .. v21}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 775
    .restart local v11       #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/FileAttachmentModel;

    .line 776
    .local v5, fileAttachment:Lcom/android/mms/model/FileAttachmentModel;
    new-instance v14, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v14}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 779
    .restart local v14       #part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v5}, Lcom/android/mms/model/FileAttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 782
    invoke-virtual {v5}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v18

    .line 784
    .restart local v18       #src:Ljava/lang/String;
    const-string v21, "cid:"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    .line 785
    .restart local v19       #startWithContentId:Z
    if-eqz v19, :cond_c

    .line 786
    const-string v21, "cid:"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 791
    .restart local v10       #location:Ljava/lang/String;
    :goto_6
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 793
    if-eqz v19, :cond_d

    .line 794
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 801
    :goto_7
    invoke-virtual {v5}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 802
    invoke-virtual {v5}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 804
    invoke-virtual {v5}, Lcom/android/mms/model/FileAttachmentModel;->isSupportedFile()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 805
    invoke-virtual {v5}, Lcom/android/mms/model/FileAttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 823
    :cond_b
    :goto_8
    invoke-virtual {v5}, Lcom/android/mms/model/Model;->needUpdate()Z

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setNeedUpdate(Z)V

    .line 824
    invoke-virtual {v15, v14}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_5

    .line 788
    .end local v10           #location:Ljava/lang/String;
    :cond_c
    move-object/from16 v10, v18

    .restart local v10       #location:Ljava/lang/String;
    goto :goto_6

    .line 796
    :cond_d
    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 797
    .restart local v9       #index:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_e

    move-object v3, v10

    .line 799
    .restart local v3       #contentId:Ljava/lang/String;
    :goto_9
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_7

    .line 797
    .end local v3           #contentId:Ljava/lang/String;
    :cond_e
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 807
    .end local v9           #index:I
    :cond_f
    if-eqz v11, :cond_11

    .line 808
    invoke-interface {v11}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 810
    invoke-virtual {v5}, Lcom/android/mms/model/FileAttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v21

    const-string v22, "text/plain"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_10

    invoke-virtual {v5}, Lcom/android/mms/model/FileAttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v21

    const-string v22, "text/html"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 812
    :cond_10
    invoke-virtual {v5}, Lcom/android/mms/model/FileAttachmentModel;->getData()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_8

    .line 816
    :cond_11
    const-string v21, "Mms/slideshow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unsupport file attachment: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 827
    .end local v5           #fileAttachment:Lcom/android/mms/model/FileAttachmentModel;
    .end local v10           #location:Ljava/lang/String;
    .end local v14           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v18           #src:Ljava/lang/String;
    .end local v19           #startWithContentId:Z
    :cond_12
    return-object v15
.end method

.method private static unescapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 665
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&apos;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILcom/android/mms/model/SlideModel;)V
    .locals 5
    .parameter "location"
    .parameter "object"

    .prologue
    const/4 v4, 0x1

    .line 980
    if-eqz p2, :cond_1

    .line 981
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 982
    .local v1, increaseSize:I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 984
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 986
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseSlideshowSize(I)V

    .line 987
    invoke-virtual {p2, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 988
    iget-object v3, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 989
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 991
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 992
    invoke-virtual {p2, v4}, Lcom/android/mms/model/Model;->setNeedUpdate(Z)V

    .line 994
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #increaseSize:I
    :cond_1
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/SlideModel;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    .line 893
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 894
    .local v1, increaseSize:I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 896
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 898
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseSlideshowSize(I)V

    .line 899
    invoke-virtual {p1, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 900
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 901
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v2}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 903
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 904
    invoke-virtual {p1, v3}, Lcom/android/mms/model/Model;->setNeedUpdate(Z)V

    .line 907
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    check-cast p1, Lcom/android/mms/model/SlideModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 998
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 911
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFileAttachment(Lcom/android/mms/model/FileAttachmentModel;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v2, 0x1

    .line 1237
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1242
    invoke-virtual {p1, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1243
    iget-object v3, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 1244
    .local v1, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1246
    .end local v1           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 1247
    invoke-virtual {p1, v2}, Lcom/android/mms/model/Model;->setNeedUpdate(Z)V

    .line 1250
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public addNoCheckSize(ILcom/android/mms/model/SlideModel;)V
    .locals 3
    .parameter "location"
    .parameter "object"

    .prologue
    .line 1346
    if-eqz p2, :cond_1

    .line 1347
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1350
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->increaseSlideshowSize(I)V

    .line 1352
    invoke-virtual {p2, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1353
    iget-object v2, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 1354
    .local v1, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1356
    .end local v1           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 1358
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public checkAttachmentSize(IZ)V
    .locals 9
    .parameter "newSize"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1362
    const/4 v2, 0x0

    .line 1365
    .local v2, currentSize:I
    const/4 v6, 0x5

    invoke-static {v6}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 1367
    .local v5, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1374
    iget v2, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentSlideshowSize:I

    .line 1384
    :cond_0
    const-string v6, "Mms/slideshow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const-string v6, "Mms/slideshow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    if-eqz p2, :cond_2

    move v0, p1

    .line 1388
    .local v0, added:I
    :goto_0
    if-gez v0, :cond_3

    .line 1394
    :goto_1
    return-void

    .line 1377
    .end local v0           #added:I
    :cond_1
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 1378
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/FileAttachmentModel;

    .line 1379
    .local v3, file:Lcom/android/mms/model/FileAttachmentModel;
    iget v6, v3, Lcom/android/mms/model/FileAttachmentModel;->mSize:I

    add-int/2addr v2, v6

    goto :goto_2

    .line 1387
    .end local v3           #file:Lcom/android/mms/model/FileAttachmentModel;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    add-int/lit16 v6, p1, 0x580

    sub-int v0, v6, v2

    goto :goto_0

    .line 1392
    .restart local v0       #added:I
    :cond_3
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v1

    .line 1393
    .local v1, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-interface {v1, v2, v0, v6}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    goto :goto_1
.end method

.method public checkDrmContent()Z
    .locals 1

    .prologue
    .line 1319
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mHasDrmContent:Z

    return v0
.end method

.method public checkDrmRight()Z
    .locals 1

    .prologue
    .line 1323
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mHasDrmRight:Z

    return v0
.end method

.method public checkMessageSize(I)V
    .locals 3
    .parameter "increaseSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1146
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 1148
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentSlideshowSize:I

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    .line 1149
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 915
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 916
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 917
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3, p0}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 918
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 919
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {v3, v2}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 923
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->resetSlideshowSize()V

    .line 924
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 925
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 927
    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseSlideshowSize(I)V
    .locals 1
    .parameter "decreaseSize"

    .prologue
    .line 880
    if-lez p1, :cond_0

    .line 881
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentSlideshowSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentSlideshowSize:I

    .line 883
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .locals 1
    .parameter "location"

    .prologue
    .line 1002
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public getAllMediaNames(Lcom/android/mms/model/SlideshowModel$MediaType;)[Ljava/lang/String;
    .locals 7
    .parameter "mediaType"

    .prologue
    const/4 v4, 0x0

    .line 1281
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2

    :cond_0
    move-object v2, v4

    .line 1312
    :cond_1
    :goto_0
    return-object v2

    .line 1284
    :cond_2
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 1285
    .local v2, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1286
    .local v1, mIndex:I
    sget-object v5, Lcom/android/mms/model/SlideshowModel$2;->$SwitchMap$com$android$mms$model$SlideshowModel$MediaType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move-object v2, v4

    .line 1312
    goto :goto_0

    .line 1288
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1289
    .local v3, sm:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1290
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1291
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1296
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #sm:Lcom/android/mms/model/SlideModel;
    :pswitch_1
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1297
    .restart local v3       #sm:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1298
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1299
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1304
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #sm:Lcom/android/mms/model/SlideModel;
    :pswitch_2
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1305
    .restart local v3       #sm:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1306
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1307
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAttachFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/FileAttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrentSlideshowSize()I
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentSlideshowSize:I

    return v0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public increaseSlideshowSize(I)V
    .locals 1
    .parameter "increaseSize"

    .prologue
    .line 873
    if-lez p1, :cond_0

    .line 874
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentSlideshowSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentSlideshowSize:I

    .line 876
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isRemovedModel()Z
    .locals 1

    .prologue
    .line 1418
    iget-boolean v0, p0, Lcom/android/mms/model/SlideshowModel;->mRemovedModel:Z

    return v0
.end method

.method public isSimple()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1161
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 1162
    const-string v2, "Mms/slideshow"

    const-string v3, "size() != 1, isSimple return false"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :goto_0
    return v1

    .line 1166
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1169
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 1170
    const-string v2, "Mms/slideshow"

    const-string v3, "isSimple return false"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1173
    :cond_1
    const-string v1, "Mms/slideshow"

    const-string v3, "isSimple return true"

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1182
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 831
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public needUpdate()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1427
    iget-boolean v6, p0, Lcom/android/mms/model/SlideshowModel;->mRemovedModel:Z

    if-eqz v6, :cond_1

    .line 1452
    :cond_0
    :goto_0
    return v5

    .line 1430
    :cond_1
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v6}, Lcom/android/mms/model/Model;->needUpdate()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1434
    iget-boolean v6, p0, Lcom/android/mms/model/Model;->mNeedUpdate:Z

    if-nez v6, :cond_0

    .line 1438
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1439
    .local v4, smSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 1440
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1441
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->needUpdate()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1439
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1445
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1446
    .local v0, atSize:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 1447
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/FileAttachmentModel;

    .line 1448
    .local v1, fileModel:Lcom/android/mms/model/FileAttachmentModel;
    invoke-virtual {v1}, Lcom/android/mms/model/Model;->needUpdate()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1446
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1452
    .end local v1           #fileModel:Lcom/android/mms/model/FileAttachmentModel;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    const/4 v0, 0x0

    .line 1101
    if-eqz p2, :cond_0

    .line 1102
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 1103
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 1105
    :cond_0
    return-void
.end method

.method public prepareForSend()V
    .locals 3

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1192
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 1193
    .local v0, text:Lcom/android/mms/model/TextModel;
    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->cloneText()V

    .line 1197
    .end local v0           #text:Lcom/android/mms/model/TextModel;
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 1074
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1076
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1077
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1079
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/SlideModel;
    .locals 3
    .parameter "location"

    .prologue
    const/4 v2, 0x1

    .line 1022
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1023
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseSlideshowSize(I)V

    .line 1026
    invoke-virtual {v0}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 1027
    invoke-virtual {p0, v2}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 1028
    iput-boolean v2, p0, Lcom/android/mms/model/SlideshowModel;->mRemovedModel:Z

    .line 1030
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    .line 946
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 947
    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 949
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseSlideshowSize(I)V

    .line 950
    invoke-virtual {v0}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 951
    invoke-virtual {p0, v1}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 952
    iput-boolean v1, p0, Lcom/android/mms/model/SlideshowModel;->mRemovedModel:Z

    .line 955
    .end local v0           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 959
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllAttachFiles()V
    .locals 3

    .prologue
    .line 1227
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1228
    .local v1, size:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1229
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->removeAttachFile(I)Lcom/android/mms/model/FileAttachmentModel;

    .line 1228
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1231
    :cond_0
    if-lez v1, :cond_1

    .line 1232
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/model/SlideshowModel;->mRemovedModel:Z

    .line 1234
    :cond_1
    return-void
.end method

.method public removeAttachFile(I)Lcom/android/mms/model/FileAttachmentModel;
    .locals 6
    .parameter "location"

    .prologue
    const/4 v5, 0x1

    .line 1201
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/FileAttachmentModel;

    .line 1202
    .local v0, attach:Lcom/android/mms/model/FileAttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v1

    .line 1203
    .local v1, attachSize:I
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v2

    .line 1204
    .local v2, currentSlideshowSize:I
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 1205
    .local v3, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v3, :cond_0

    .line 1206
    invoke-interface {v3}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v4

    if-ne v4, v5, :cond_0

    .line 1207
    if-lt v2, v1, :cond_0

    .line 1208
    sub-int v4, v2, v1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->setCurrentSlideshowSize(I)V

    .line 1212
    :cond_0
    if-eqz v0, :cond_1

    .line 1217
    invoke-virtual {v0}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 1218
    invoke-virtual {p0, v5}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 1219
    iput-boolean v5, p0, Lcom/android/mms/model/SlideshowModel;->mRemovedModel:Z

    .line 1221
    :cond_1
    return-object v0
.end method

.method public removeAttachFile(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    .line 1258
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1259
    check-cast v0, Lcom/android/mms/model/FileAttachmentModel;

    .line 1264
    .local v0, attach:Lcom/android/mms/model/FileAttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 1265
    invoke-virtual {p0, v1}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 1266
    iput-boolean v1, p0, Lcom/android/mms/model/SlideshowModel;->mRemovedModel:Z

    .line 1269
    .end local v0           #attach:Lcom/android/mms/model/FileAttachmentModel;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetSlideshowSize()V
    .locals 1

    .prologue
    .line 1337
    const/16 v0, 0x580

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentSlideshowSize:I

    .line 1339
    return-void
.end method

.method public resetUpdateState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1456
    iput-boolean v5, p0, Lcom/android/mms/model/SlideshowModel;->mRemovedModel:Z

    .line 1457
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v4, v5}, Lcom/android/mms/model/Model;->setNeedUpdate(Z)V

    .line 1458
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1459
    .local v3, smSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1460
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 1461
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->resetUpdateState()V

    .line 1459
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1463
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1464
    .local v0, atSize:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1465
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v4, v5}, Lcom/android/mms/model/Model;->setNeedUpdate(Z)V

    .line 1464
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1467
    :cond_1
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 963
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 6
    .parameter "location"
    .parameter "object"

    .prologue
    .line 1034
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 1035
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    if-eqz p2, :cond_1

    .line 1036
    const/4 v3, 0x0

    .line 1037
    .local v3, removeSize:I
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1038
    .local v0, addSize:I
    if-eqz v4, :cond_0

    .line 1039
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    .line 1041
    :cond_0
    if-le v0, v3, :cond_3

    .line 1042
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1044
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->increaseSlideshowSize(I)V

    .line 1051
    .end local v0           #addSize:I
    .end local v3           #removeSize:I
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 1052
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    if-eqz v4, :cond_2

    .line 1053
    invoke-virtual {v4}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 1056
    :cond_2
    if-eqz p2, :cond_4

    .line 1057
    invoke-virtual {p2, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1058
    iget-object v5, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 1059
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1

    .line 1047
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    .restart local v0       #addSize:I
    .restart local v3       #removeSize:I
    :cond_3
    sub-int v5, v3, v0

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->decreaseSlideshowSize(I)V

    goto :goto_0

    .line 1063
    .end local v0           #addSize:I
    .end local v3           #removeSize:I
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 1064
    return-object v4
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentSlideshowSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 856
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentSlideshowSize:I

    .line 857
    return-void
.end method

.method public setDrmContentFlag(Z)V
    .locals 0
    .parameter "hasDrmContent"

    .prologue
    .line 1327
    sput-boolean p1, Lcom/android/mms/model/SlideshowModel;->mHasDrmContent:Z

    .line 1328
    return-void
.end method

.method public setDrmRightFlag(Z)V
    .locals 0
    .parameter "hasDrmRight"

    .prologue
    .line 1331
    sput-boolean p1, Lcom/android/mms/model/SlideshowModel;->mHasDrmRight:Z

    .line 1332
    return-void
.end method

.method public setRemovedModel(Z)V
    .locals 0
    .parameter "removedModel"

    .prologue
    .line 1422
    iput-boolean p1, p0, Lcom/android/mms/model/SlideshowModel;->mRemovedModel:Z

    .line 1423
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public sizeOfFilesAttach()I
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 12
    .parameter "pb"

    .prologue
    const/4 v11, 0x0

    .line 1108
    iget-object v8, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/SlideModel;

    .line 1109
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/MediaModel;

    .line 1110
    .local v3, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 1111
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v5, :cond_1

    .line 1112
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 1117
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v6           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    iget-object v8, p0, Lcom/android/mms/model/SlideshowModel;->mAttachFiles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/FileAttachmentModel;

    .line 1118
    .local v0, fileAttach:Lcom/android/mms/model/FileAttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 1119
    .restart local v5       #part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v5, :cond_3

    .line 1120
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/mms/model/FileAttachmentModel;->setUri(Landroid/net/Uri;)V

    .line 1121
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/mms/model/FileAttachmentModel;->setData([B)V

    goto :goto_1

    .line 1127
    .end local v0           #fileAttach:Lcom/android/mms/model/FileAttachmentModel;
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_4
    iget-object v8, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 1128
    iget-object v8, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/MediaModel;

    .line 1129
    .restart local v3       #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1132
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v7

    .line 1133
    .local v7, thumbnailManager:Lcom/android/mms/util/ThumbnailManager;
    invoke-static {v3}, Lcom/android/mms/util/ThumbnailManager;->getThumbnailUri(Lcom/android/mms/model/MediaModel;)Landroid/net/Uri;

    move-result-object v4

    .line 1134
    .local v4, newUri:Landroid/net/Uri;
    const-string v8, "Mms/slideshow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SlideshowModel AsyncUpdate Uri thumbnail = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1136
    invoke-virtual {v7, v4, v11}, Lcom/android/mms/util/ThumbnailManager;->getThumbnail(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    goto :goto_2

    .line 1137
    :cond_6
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1138
    invoke-virtual {v7, v4, v11}, Lcom/android/mms/util/ThumbnailManager;->getVideoThumbnail(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    goto :goto_2

    .line 1143
    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    .end local v4           #newUri:Landroid/net/Uri;
    .end local v7           #thumbnailManager:Lcom/android/mms/util/ThumbnailManager;
    :cond_7
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 976
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-nez v0, :cond_0

    .line 676
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 677
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method public toSmilDocument()Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    if-nez v0, :cond_0

    .line 836
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 1093
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 1095
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1096
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 1098
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 1084
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1086
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1087
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1089
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method
