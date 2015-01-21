.class public Lcom/mediatek/bluetooth/map/mime/MimeContent;
.super Ljava/lang/Object;
.source "MimeContent.java"


# static fields
.field public static final BCC:Ljava/lang/String; = "Bcc"

.field public static final BOUNDARY:Ljava/lang/String; = "boundary"

.field public static final CC:Ljava/lang/String; = "Cc"

.field public static final CHARSET:Ljava/lang/String; = "charset"

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final CONTENT_ID:Ljava/lang/String; = "Content-ID"

.field public static final CONTENT_LOCATION:Ljava/lang/String; = "Content-Location"

.field public static final CONTENT_TRANSFER_ENCONDING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field public static final CONTENT_TRANSFER_ENCONDING_8_BIT:Ljava/lang/String; = "8bit"

.field public static final CONTENT_TRANSFER_ENCONDING_BASE_64:Ljava/lang/String; = "base64"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final CONTNET_DISPOSITION_INLINE:Ljava/lang/String; = "inline"

.field public static final DATE:Ljava/lang/String; = "Date"

.field public static final FILE_NAME:Ljava/lang/String; = "filename"

.field public static final FROM:Ljava/lang/String; = "From"

.field public static final MESSAGE_ID:Ljava/lang/String; = "Message-ID"

.field public static final MIME_VERSION:Ljava/lang/String; = "MIME-Version"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final REPLY_TO:Ljava/lang/String; = "Reply-To"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final SUBJECT:Ljava/lang/String; = "Subject"

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final TO:Ljava/lang/String; = "To"

.field private static mHeaderField:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/map/mime/MimeContent;->mHeaderField:Ljava/util/HashSet;

    .line 76
    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeContent;->mHeaderField:Ljava/util/HashSet;

    const-string v1, "Date"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeContent;->mHeaderField:Ljava/util/HashSet;

    const-string v1, "Subject"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeContent;->mHeaderField:Ljava/util/HashSet;

    const-string v1, "Message-ID"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeContent;->mHeaderField:Ljava/util/HashSet;

    const-string v1, "From"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeContent;->mHeaderField:Ljava/util/HashSet;

    const-string v1, "To"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeContent;->mHeaderField:Ljava/util/HashSet;

    const-string v1, "Cc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeContent;->mHeaderField:Ljava/util/HashSet;

    const-string v1, "Bcc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeContent;->mHeaderField:Ljava/util/HashSet;

    const-string v1, "Reply-To"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeContent;->mHeaderField:Ljava/util/HashSet;

    const-string v1, "MIME-Version"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeContent;->mHeaderField:Ljava/util/HashSet;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeContent;->mHeaderField:Ljava/util/HashSet;

    const-string v1, "boundary"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHeaderField(Ljava/lang/String;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 90
    if-eqz p0, :cond_0

    sget-object v0, Lcom/mediatek/bluetooth/map/mime/MimeContent;->mHeaderField:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
