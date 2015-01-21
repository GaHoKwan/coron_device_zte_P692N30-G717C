.class public Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;
.super Ljava/lang/Object;
.source "MimeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/mime/MimeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MimeAttachment"
.end annotation


# instance fields
.field public mCharset:Ljava/lang/String;

.field public mContent:Ljava/lang/String;

.field public mContentBytes:[B

.field public mContentId:Ljava/lang/String;

.field public mContentLocation:Ljava/lang/String;

.field public mContentUri:Landroid/net/Uri;

.field public mEncoding:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFlags:I

.field public mLocation:Ljava/lang/String;

.field public mMessageKey:J

.field public mMimeType:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mSize:J

.field final synthetic this$0:Lcom/mediatek/bluetooth/map/mime/MimeBase;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/mime/MimeBase;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->this$0:Lcom/mediatek/bluetooth/map/mime/MimeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 129
    const/4 v3, 0x0

    .line 133
    .local v3, inStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentBytes:[B

    if-eqz v8, :cond_2

    .line 134
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentBytes:[B

    invoke-direct {v4, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v3           #inStream:Ljava/io/InputStream;
    .local v4, inStream:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #inStream:Ljava/io/InputStream;
    .restart local v3       #inStream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    move-object v7, v3

    .line 158
    :cond_1
    :goto_1
    return-object v7

    .line 137
    :cond_2
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentUri:Landroid/net/Uri;

    .line 138
    .local v2, fileUri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 141
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->this$0:Lcom/mediatek/bluetooth/map/mime/MimeBase;

    iget-object v8, v8, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "rw"

    invoke-virtual {v8, v2, v9}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 142
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    if-nez v1, :cond_3

    .line 144
    const-string v8, "MimeBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no file found for the Uri:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 154
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v2           #fileUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 148
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #fd:Landroid/content/res/AssetFileDescriptor;
    .restart local v2       #fileUri:Landroid/net/Uri;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 149
    .local v5, size:J
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    .line 150
    iget-wide v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mSize:J

    cmp-long v8, v5, v8

    if-eqz v8, :cond_0

    .line 151
    iput-wide v5, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mSize:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
