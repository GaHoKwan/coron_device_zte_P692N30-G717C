.class public Lcom/mediatek/bluetooth/map/mime/MimeBase;
.super Ljava/lang/Object;
.source "MimeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;,
        Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;,
        Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;
    }
.end annotation


# static fields
.field public static final FLAG_ICS_ALTERNATIVE_PART:I = 0x1

.field public static MSG_TYPE_EMAIL:I = 0x0

.field public static MSG_TYPE_MMS:I = 0x0

.field public static MULTIPART_ALTERNATIVE:Ljava/lang/String; = null

.field public static MULTIPART_MIX:Ljava/lang/String; = null

.field public static MULTIPART_RELATED:Ljava/lang/String; = null

.field protected static final TAG:Ljava/lang/String; = "MimeBase"


# instance fields
.field protected mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

.field protected mBody:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

.field protected mMsgType:I

.field protected mMultipartType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x4

    sput v0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->MSG_TYPE_EMAIL:I

    .line 60
    const/16 v0, 0x8

    sput v0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->MSG_TYPE_MMS:I

    .line 62
    const-string v0, "multipart/mixed"

    sput-object v0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->MULTIPART_MIX:Ljava/lang/String;

    .line 63
    const-string v0, "multipart/alternative"

    sput-object v0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->MULTIPART_ALTERNATIVE:Ljava/lang/String;

    .line 64
    const-string v0, "multipart/related"

    sput-object v0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->MULTIPART_RELATED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter "resolver"
    .parameter "type"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mContentResolver:Landroid/content/ContentResolver;

    .line 78
    iput p2, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mMsgType:I

    .line 79
    new-instance v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;-><init>(Lcom/mediatek/bluetooth/map/mime/MimeBase;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    .line 80
    new-instance v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;-><init>(Lcom/mediatek/bluetooth/map/mime/MimeBase;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mBody:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;

    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    .line 82
    return-void
.end method


# virtual methods
.method public getAttachment(I)Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;
    .locals 1
    .parameter "index"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    aget-object v0, v0, p1

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttachment()[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    return-object v0
.end method

.method public getBody()Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mBody:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;

    return-object v0
.end method

.method public getHeader()Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mMsgType:I

    return v0
.end method

.method public getMultipartType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mMsgType:I

    sget v1, Lcom/mediatek/bluetooth/map/mime/MimeBase;->MSG_TYPE_EMAIL:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->MULTIPART_ALTERNATIVE:Ljava/lang/String;

    .line 200
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->MULTIPART_MIX:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasMultipart()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttachMent([Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;)V
    .locals 0
    .parameter "attachments"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    .line 187
    return-void
.end method
