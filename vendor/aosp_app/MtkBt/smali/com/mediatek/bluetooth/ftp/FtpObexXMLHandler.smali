.class Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLParsingThread.java"


# static fields
.field private static final ATTR_FS_ACCESSED:Ljava/lang/String; = "accessed"

.field private static final ATTR_FS_CREATED:Ljava/lang/String; = "created"

.field private static final ATTR_FS_GROUP:Ljava/lang/String; = "group"

.field private static final ATTR_FS_GROUP_PERM:Ljava/lang/String; = "group-perm"

.field private static final ATTR_FS_MODIFIED:Ljava/lang/String; = "modified"

.field private static final ATTR_FS_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_FS_OTHER_PERM:Ljava/lang/String; = "other-perm"

.field private static final ATTR_FS_OWNER:Ljava/lang/String; = "owner"

.field private static final ATTR_FS_SIZE:Ljava/lang/String; = "size"

.field private static final ATTR_FS_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_FS_USER_PERM:Ljava/lang/String; = "user-perm"

.field private static final ATTR_FS_XML_LANG:Ljava/lang/String; = "xml:lang"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DATE_ERE:Ljava/lang/String; = "(19|20)[0-9]{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])T([01][0-9]|2[0-3])([0-5][0-9]){2}Z"

.field private static final ELEM_FILE:Ljava/lang/String; = "file"

.field private static final ELEM_FOLDER:Ljava/lang/String; = "folder"

.field private static final ELEM_FOLDER_LISTING:Ljava/lang/String; = "folder-listing"

.field private static final ELEM_PARENT_FOLDER:Ljava/lang/String; = "parent-folder"

.field protected static final INVALID_NAME:Ljava/lang/String; = "invalid_name"

.field private static final MIME:Ljava/lang/String; = "x-obex/folder-listing"

.field private static final TAG:Ljava/lang/String; = "FtpObexXMLHandler"

.field private static final UNKNOWN_DATE:Ljava/lang/String; = "unknown"

.field private static final UNKNOWN_SIZE:I = -0x1


# instance fields
.field private bErrorDetect:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mParsingDepth:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "uri"
    .parameter "resolver"

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mUri:Landroid/net/Uri;

    .line 211
    iput-object p2, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 213
    iput v0, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mParsingDepth:I

    .line 214
    iput-boolean v0, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->bErrorDetect:Z

    .line 215
    return-void
.end method

.method private getFormattedDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "date"

    .prologue
    .line 376
    const-string v2, "unknown"

    .line 379
    .local v2, ret:Ljava/lang/String;
    :try_start_0
    const-string v3, "(19|20)[0-9]{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])T([01][0-9]|2[0-3])([0-5][0-9]){2}Z"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    const-string v3, "T"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 381
    .local v1, idx:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, -0x8

    add-int/lit8 v5, v1, -0x4

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x4

    add-int/lit8 v5, v1, -0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x2

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    .end local v1           #idx:I
    :goto_0
    return-object v2

    .line 386
    :cond_0
    const-string v3, "FtpObexXMLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Modification date in wrong format, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "FtpObexXMLHandler"

    const-string v4, "Modification date parsing failed. Set as default"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 355
    return-void
.end method

.method public endDocument()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->bErrorDetect:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mParsingDepth:I

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    const-string v0, "FtpObexXMLHandler"

    const-string v1, "Parsing failed, clear stored data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 372
    :cond_1
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "nsUri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 361
    const-string v0, "folder-listing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mParsingDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mParsingDepth:I

    .line 364
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .parameter "nsUri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 228
    iget-boolean v6, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->bErrorDetect:Z

    if-eqz v6, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    .line 233
    .local v4, len:I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 235
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "folder-listing"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 236
    iget v6, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mParsingDepth:I

    if-nez v6, :cond_2

    .line 237
    iget v6, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mParsingDepth:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mParsingDepth:I

    goto :goto_0

    .line 241
    :cond_2
    iput-boolean v7, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->bErrorDetect:Z

    goto :goto_0

    .line 245
    :cond_3
    const-string v6, "file"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 246
    iget v6, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mParsingDepth:I

    if-ne v6, v7, :cond_c

    .line 247
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 249
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_8

    .line 250
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, attr_name:Ljava/lang/String;
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, attr_value:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 254
    const-string v6, "name"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v6, "type"

    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->getTypeCode(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 257
    :cond_5
    const-string v6, "size"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 259
    :try_start_0
    const-string v6, "size"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "FtpObexXMLHandler"

    const-string v7, "File size parsing failed. Set to 0"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v6, "size"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 265
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    const-string v6, "created"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 266
    const-string v6, "modified"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 268
    const-string v6, "modified"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->getFormattedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 271
    :cond_7
    const-string v6, "modified"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 272
    const-string v6, "modified"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->getFormattedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 279
    .end local v0           #attr_name:Ljava/lang/String;
    .end local v1           #attr_value:Ljava/lang/String;
    :cond_8
    const-string v6, "name"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "type"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 282
    const-string v6, "modified"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 283
    const-string v6, "modified"

    const-string v7, "unknown"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_9
    const-string v6, "size"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 287
    const-string v6, "size"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    :cond_a
    iget-object v6, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 294
    :cond_b
    const-string v6, "FtpObexXMLHandler"

    const-string v7, "Defected file data, do not insert."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 298
    .end local v3           #i:I
    :cond_c
    iput-boolean v7, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->bErrorDetect:Z

    goto/16 :goto_0

    .line 302
    :cond_d
    const-string v6, "folder"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 303
    iget v6, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mParsingDepth:I

    if-ne v6, v7, :cond_14

    .line 305
    const-string v6, "type"

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v4, :cond_11

    .line 308
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .restart local v0       #attr_name:Ljava/lang/String;
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 311
    .restart local v1       #attr_value:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 312
    const-string v6, "name"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_e
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 314
    :cond_f
    const-string v6, "created"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 315
    const-string v6, "modified"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 317
    const-string v6, "modified"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->getFormattedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 320
    :cond_10
    const-string v6, "modified"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 321
    const-string v6, "modified"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->getFormattedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 328
    .end local v0           #attr_name:Ljava/lang/String;
    .end local v1           #attr_value:Ljava/lang/String;
    :cond_11
    const-string v6, "name"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "type"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 330
    const-string v6, "modified"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 331
    const-string v6, "modified"

    const-string v7, "unknown"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_12
    iget-object v6, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 338
    :cond_13
    const-string v6, "FtpObexXMLHandler"

    const-string v7, "Defected folder data, do not insert."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 342
    .end local v3           #i:I
    :cond_14
    iput-boolean v7, p0, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;->bErrorDetect:Z

    goto/16 :goto_0
.end method
