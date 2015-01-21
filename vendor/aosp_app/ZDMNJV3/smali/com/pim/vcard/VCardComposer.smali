.class public Lcom/pim/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;,
        Lcom/pim/vcard/VCardComposer$OneEntryHandler;
    }
.end annotation


# static fields
.field public static final CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri; = null

.field public static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field public static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field public static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field public static final FAILURE_REASON_UNSUPPORTED_URI:Ljava/lang/String; = "The Uri vCard composer received is not supported by the composer."

.field private static final LOG_TAG:Ljava/lang/String; = "VCardComposer"

.field public static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final VCARD_TEST_AUTHORITY:Ljava/lang/String; = "com.android.unit_tests.vcard"

.field public static final VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final VCARD_TYPE_STRING_DOCOMO:Ljava/lang/String; = "docomo"

.field private static final sContactsProjection:[Ljava/lang/String;

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCareHandlerErrors:Z

.field private final mCharset:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private final mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pim/vcard/VCardComposer$OneEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIdColumn:I

.field private final mIsDoCoMo:Z

.field private mTerminateIsCalled:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    const-string v0, "content://com.android.unit_tests.vcard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 136
    sput-object v0, Lcom/pim/vcard/VCardComposer;->VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri;

    .line 139
    sget-object v0, Lcom/pim/vcard/VCardComposer;->VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 138
    sput-object v0, Lcom/pim/vcard/VCardComposer;->CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    .line 145
    sget-object v0, Lcom/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-array v0, v4, [Ljava/lang/String;

    .line 294
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 293
    sput-object v0, Lcom/pim/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 298
    sget v0, Lcom/pim/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "vcardType"

    .prologue
    .line 305
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"

    .prologue
    .line 309
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 5
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "careHandlerErrors"

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const-string v2, "No error"

    iput-object v2, p0, Lcom/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 336
    iput-object p1, p0, Lcom/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    .line 337
    iput p2, p0, Lcom/pim/vcard/VCardComposer;->mVCardType:I

    .line 338
    iput-boolean p4, p0, Lcom/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 341
    invoke-static {p2}, Lcom/pim/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    .line 342
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    .line 344
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p3, "UTF-8"

    .line 346
    :cond_0
    invoke-static {p2}, Lcom/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "UTF-8"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 345
    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 348
    .local v1, shouldAppendCharsetParam:Z
    :goto_0
    iget-boolean v2, p0, Lcom/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_6

    .line 349
    :cond_1
    const-string v2, "SHIFT_JIS"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 350
    iget-boolean v2, p0, Lcom/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    if-eqz v2, :cond_3

    .line 352
    :try_start_0
    const-string v2, "SHIFT_JIS"

    const-string v3, "docomo"

    invoke-static {v2, v3}, Lcom/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 369
    :goto_1
    iput-object p3, p0, Lcom/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    .line 402
    :goto_2
    const-string v2, "VCardComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Use the charset \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void

    .line 345
    .end local v1           #shouldAppendCharsetParam:Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 353
    .restart local v1       #shouldAppendCharsetParam:Z
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    .line 355
    const-string v3, "DoCoMo-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    .line 354
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string p3, "SHIFT_JIS"

    goto :goto_1

    .line 361
    .end local v0           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_3
    :try_start_1
    const-string v2, "SHIFT_JIS"

    invoke-static {v2}, Lcom/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p3

    goto :goto_1

    .line 362
    :catch_1
    move-exception v0

    .line 363
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    .line 364
    const-string v3, "Career-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    .line 363
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string p3, "SHIFT_JIS"

    goto :goto_1

    .line 371
    .end local v0           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_4
    const-string v2, "VCardComposer"

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The charset \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is used while "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 373
    const-string v4, "SHIFT_JIS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is needed to be used."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 372
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 375
    const-string v2, "SHIFT_JIS"

    iput-object v2, p0, Lcom/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 378
    :cond_5
    :try_start_2
    invoke-static {p3}, Lcom/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_2
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p3

    .line 384
    :goto_3
    iput-object p3, p0, Lcom/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 379
    :catch_2
    move-exception v0

    .line 380
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Career-specific \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" was not found (as usual). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 382
    const-string v4, "Use it as is."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 381
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 388
    .end local v0           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 389
    const-string v2, "UTF-8"

    iput-object v2, p0, Lcom/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_2

    .line 392
    :cond_7
    :try_start_3
    invoke-static {p3}, Lcom/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_3
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object p3

    .line 398
    :goto_4
    iput-object p3, p0, Lcom/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_2

    .line 393
    :catch_3
    move-exception v0

    .line 394
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Career-specific \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" was not found (as usual). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 396
    const-string v4, "Use it as is."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 395
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 322
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "vcardTypeStr"
    .parameter "careHandlerErrors"

    .prologue
    .line 313
    invoke-static {p2}, Lcom/pim/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    .line 314
    return-void
.end method

.method static synthetic access$0(Lcom/pim/vcard/VCardComposer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pim/vcard/VCardComposer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/pim/vcard/VCardComposer;)Z
    .locals 1
    .parameter

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    return v0
.end method

.method static synthetic access$3(Lcom/pim/vcard/VCardComposer;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 546
    invoke-direct {p0, p1, p2}, Lcom/pim/vcard/VCardComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 20
    .parameter "contactId"
    .parameter "getEntityIteratorMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 549
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 553
    .local v10, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v14, 0x0

    .line 555
    .local v14, entityIterator:Landroid/content/EntityIterator;
    :try_start_0
    sget-object v2, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 557
    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 558
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 559
    .local v3, uri:Landroid/net/Uri;
    const-string v17, "contact_id=?"

    .line 560
    .local v17, selection:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    .local v6, selectionArgs:[Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 564
    const/4 v2, 0x0

    const/4 v4, 0x5

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 565
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v5, 0x2

    const-string v7, "contact_id=?"

    aput-object v7, v4, v5

    const/4 v5, 0x3

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v7, 0x0

    aput-object v7, v4, v5

    .line 564
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/EntityIterator;

    move-object v14, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 586
    :goto_0
    if-nez v14, :cond_4

    .line 587
    :try_start_2
    const-string v2, "VCardComposer"

    const-string v4, "EntityIterator is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    :goto_1
    if-eqz v14, :cond_0

    .line 614
    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    .line 588
    :cond_0
    const-string v2, ""

    .line 618
    :goto_2
    return-object v2

    .line 566
    :catch_0
    move-exception v11

    .line 567
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v2, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IllegalArgumentException has been thrown: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 567
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 612
    .end local v3           #uri:Landroid/net/Uri;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .end local v17           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 613
    if-eqz v14, :cond_1

    .line 614
    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    .line 616
    :cond_1
    throw v2

    .line 569
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v17       #selection:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 570
    .local v11, e:Ljava/lang/IllegalAccessException;
    :try_start_4
    const-string v2, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IllegalAccessException has been thrown: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v11}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 570
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 572
    .end local v11           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v11

    .line 573
    .local v11, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "VCardComposer"

    const-string v4, "InvocationTargetException has been thrown: "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {v11}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v18

    .line 575
    .local v18, stackTraceElements:[Ljava/lang/StackTraceElement;
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v2, 0x0

    :goto_3
    if-lt v2, v4, :cond_2

    .line 578
    new-instance v2, Lcom/pim/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "InvocationTargetException has been thrown: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v11}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 578
    invoke-direct {v2, v4}, Lcom/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 575
    :cond_2
    aget-object v12, v18, v2

    .line 576
    .local v12, element:Ljava/lang/StackTraceElement;
    const-string v5, "VCardComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v19, "    at "

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 582
    .end local v11           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v12           #element:Ljava/lang/StackTraceElement;
    .end local v18           #stackTraceElements:[Ljava/lang/StackTraceElement;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 583
    const/4 v4, 0x0

    const-string v5, "contact_id=?"

    const/4 v7, 0x0

    .line 582
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v14

    goto/16 :goto_0

    .line 591
    :cond_4
    invoke-interface {v14}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 592
    const-string v2, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Data does not exist. contactId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 597
    :cond_5
    invoke-interface {v14}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Entity;

    .line 598
    .local v13, entity:Landroid/content/Entity;
    invoke-virtual {v13}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 596
    .end local v13           #entity:Landroid/content/Entity;
    :cond_7
    invoke-interface {v14}, Landroid/content/EntityIterator;->hasNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    .line 613
    if-eqz v14, :cond_8

    .line 614
    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    .line 618
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v1}, Lcom/pim/vcard/VCardComposer;->buildVCard(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 598
    .restart local v13       #entity:Landroid/content/Entity;
    :cond_9
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity$NamedContentValues;

    .line 599
    .local v16, namedContentValues:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 600
    .local v8, contentValues:Landroid/content/ContentValues;
    const-string v4, "mimetype"

    invoke-virtual {v8, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 601
    .local v15, key:Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 603
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 604
    .local v9, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v9, :cond_a

    .line 605
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .restart local v9       #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v10, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_a
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method


# virtual methods
.method public addHandler(Lcom/pim/vcard/VCardComposer$OneEntryHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    return-void
.end method

.method public buildVCard(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 626
    .local p1, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    if-nez p1, :cond_0

    .line 627
    const-string v1, "VCardComposer"

    const-string v2, "The given map is null. Ignore and return empty String"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v1, ""

    .line 646
    :goto_0
    return-object v1

    .line 630
    :cond_0
    new-instance v0, Lcom/pim/vcard/VCardBuilder;

    iget v1, p0, Lcom/pim/vcard/VCardComposer;->mVCardType:I

    iget-object v2, p0, Lcom/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/pim/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 631
    .local v0, builder:Lcom/pim/vcard/VCardBuilder;
    const-string v1, "vnd.android.cursor.item/name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/pim/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/pim/vcard/VCardBuilder;

    move-result-object v2

    .line 632
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/pim/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Lcom/pim/vcard/VCardBuilder;

    move-result-object v2

    .line 633
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/pim/vcard/VCardBuilder;->appendPhones(Ljava/util/List;)Lcom/pim/vcard/VCardBuilder;

    move-result-object v2

    .line 634
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/pim/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Lcom/pim/vcard/VCardBuilder;

    move-result-object v2

    .line 635
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/pim/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Lcom/pim/vcard/VCardBuilder;

    move-result-object v2

    .line 636
    const-string v1, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/pim/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Lcom/pim/vcard/VCardBuilder;

    move-result-object v2

    .line 637
    const-string v1, "vnd.android.cursor.item/website"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/pim/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Lcom/pim/vcard/VCardBuilder;

    .line 638
    iget v1, p0, Lcom/pim/vcard/VCardComposer;->mVCardType:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 639
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/pim/vcard/VCardBuilder;->appendPhotos(Ljava/util/List;)Lcom/pim/vcard/VCardBuilder;

    .line 641
    :cond_1
    const-string v1, "vnd.android.cursor.item/note"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/pim/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Lcom/pim/vcard/VCardBuilder;

    move-result-object v2

    .line 642
    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/pim/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Lcom/pim/vcard/VCardBuilder;

    move-result-object v2

    .line 643
    const-string v1, "vnd.android.cursor.item/im"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/pim/vcard/VCardBuilder;->appendIms(Ljava/util/List;)Lcom/pim/vcard/VCardBuilder;

    move-result-object v2

    .line 644
    const-string v1, "vnd.android.cursor.item/relation"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/pim/vcard/VCardBuilder;->appendRelation(Ljava/util/List;)Lcom/pim/vcard/VCardBuilder;

    move-result-object v1

    .line 645
    invoke-virtual {v1, p2}, Lcom/pim/vcard/VCardBuilder;->appendGroup(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v0}, Lcom/pim/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public createOneEntry()Z
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pim/vcard/VCardComposer;->createOneEntry(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public createOneEntry(Ljava/lang/reflect/Method;)Z
    .locals 12
    .parameter "getEntityIteratorMethod"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 496
    iget-object v9, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 497
    :cond_0
    const-string v8, "The vCard composer object is not correctly initialized"

    iput-object v8, p0, Lcom/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 543
    :goto_0
    return v7

    .line 502
    :cond_1
    :try_start_0
    iget v9, p0, Lcom/pim/vcard/VCardComposer;->mIdColumn:I

    if-ltz v9, :cond_4

    .line 503
    invoke-static {}, Lcom/util/TimeCount;->getInstance()Lcom/util/TimeCount;

    move-result-object v9

    invoke-virtual {v9}, Lcom/util/TimeCount;->getCurTime()J

    move-result-wide v0

    .line 505
    .local v0, costTime:J
    iget-object v9, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v10, p0, Lcom/pim/vcard/VCardComposer;->mIdColumn:I

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p1}, Lcom/pim/vcard/VCardComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    .line 508
    .local v6, vcard:Ljava/lang/String;
    invoke-static {}, Lcom/util/TimeCount;->getInstance()Lcom/util/TimeCount;

    move-result-object v9

    invoke-virtual {v9}, Lcom/util/TimeCount;->getCurTime()J

    move-result-wide v9

    sub-long v0, v9, v0

    .line 509
    invoke-static {}, Lcom/util/TimeCount;->getInstance()Lcom/util/TimeCount;

    move-result-object v9

    const-string v10, "bulid vcf str cost time"

    invoke-virtual {v9, v10, v0, v1}, Lcom/util/TimeCount;->addDurTimeByTitle(Ljava/lang/String;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/pim/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 525
    iget-object v9, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 529
    iget-boolean v9, p0, Lcom/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    if-eqz v9, :cond_6

    .line 530
    new-instance v4, Ljava/util/ArrayList;

    .line 531
    iget-object v9, p0, Lcom/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 530
    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 532
    .local v4, finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardComposer$OneEntryHandler;>;"
    iget-object v9, p0, Lcom/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .end local v4           #finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardComposer$OneEntryHandler;>;"
    :cond_3
    move v7, v8

    .line 543
    goto :goto_0

    .line 511
    .end local v0           #costTime:J
    .end local v6           #vcard:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v9, "VCardComposer"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Incorrect mIdColumn: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/pim/vcard/VCardComposer;->mIdColumn:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/pim/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 525
    iget-object v7, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move v7, v8

    .line 512
    goto :goto_0

    .line 514
    :catch_0
    move-exception v2

    .line 515
    .local v2, e:Lcom/pim/vcard/exception/VCardException;
    :try_start_2
    const-string v8, "VCardComposer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "VCardException has been thrown: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/pim/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 525
    iget-object v8, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 517
    .end local v2           #e:Lcom/pim/vcard/exception/VCardException;
    :catch_1
    move-exception v3

    .line 520
    .local v3, error:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v7, "VCardComposer"

    const-string v9, "OutOfMemoryError occured. Ignore the entry."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 525
    iget-object v7, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move v7, v8

    .line 523
    goto/16 :goto_0

    .line 524
    .end local v3           #error:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    .line 525
    iget-object v8, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 526
    throw v7

    .line 532
    .restart local v0       #costTime:J
    .restart local v4       #finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardComposer$OneEntryHandler;>;"
    .restart local v6       #vcard:Ljava/lang/String;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pim/vcard/VCardComposer$OneEntryHandler;

    .line 533
    .local v5, handler:Lcom/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v5, v6}, Lcom/pim/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_0

    .line 538
    .end local v4           #finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardComposer$OneEntryHandler;>;"
    .end local v5           #handler:Lcom/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_6
    iget-object v7, p0, Lcom/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pim/vcard/VCardComposer$OneEntryHandler;

    .line 539
    .restart local v5       #handler:Lcom/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v5, v6}, Lcom/pim/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/pim/vcard/VCardComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 670
    const-string v0, "VCardComposer"

    const-string v1, "terminate() is not called yet. We call it in finalize() step."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p0}, Lcom/pim/vcard/VCardComposer;->terminate()V

    .line 673
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 682
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v0, 0x0

    .line 685
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0, v0, v0}, Lcom/pim/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "contentUri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 432
    const/4 v0, 0x0

    .line 484
    :goto_0
    return v0

    .line 435
    :cond_0
    iget-boolean v0, p0, Lcom/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    if-eqz v0, :cond_6

    .line 436
    new-instance v8, Ljava/util/ArrayList;

    .line 437
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 436
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    .local v8, finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardComposer$OneEntryHandler;>;"
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 454
    .end local v8           #finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardComposer$OneEntryHandler;>;"
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 455
    sget-object v0, Lcom/pim/vcard/VCardComposer;->CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 456
    :cond_3
    sget-object v2, Lcom/pim/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    .line 463
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 465
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_8

    .line 466
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 467
    const/4 v0, 0x0

    goto :goto_0

    .line 438
    .end local v2           #projection:[Ljava/lang/String;
    .restart local v8       #finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardComposer$OneEntryHandler;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pim/vcard/VCardComposer$OneEntryHandler;

    .line 439
    .local v9, handler:Lcom/pim/vcard/VCardComposer$OneEntryHandler;
    iget-object v1, p0, Lcom/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v1}, Lcom/pim/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 443
    const/4 v0, 0x0

    goto :goto_0

    .line 440
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pim/vcard/VCardComposer$OneEntryHandler;

    .line 441
    .local v7, finished:Lcom/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v7}, Lcom/pim/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_1

    .line 448
    .end local v7           #finished:Lcom/pim/vcard/VCardComposer$OneEntryHandler;
    .end local v8           #finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardComposer$OneEntryHandler;>;"
    .end local v9           #handler:Lcom/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_6
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pim/vcard/VCardComposer$OneEntryHandler;

    .line 449
    .restart local v9       #handler:Lcom/pim/vcard/VCardComposer$OneEntryHandler;
    iget-object v1, p0, Lcom/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v1}, Lcom/pim/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    goto :goto_2

    .line 458
    .end local v9           #handler:Lcom/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_7
    const-string v0, "The Uri vCard composer received is not supported by the composer."

    iput-object v0, p0, Lcom/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 459
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 470
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/pim/vcard/VCardComposer;->getCount()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_a

    .line 472
    :cond_9
    :try_start_0
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 477
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 479
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 473
    :catch_0
    move-exception v6

    .line 474
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "VCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SQLiteException on Cursor#close(): "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 477
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_3

    .line 475
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 476
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 477
    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcom/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 478
    throw v0

    .line 482
    :cond_a
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pim/vcard/VCardComposer;->mIdColumn:I

    .line 484
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 423
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/pim/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 694
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v0, 0x0

    .line 697
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public terminate()V
    .locals 5

    .prologue
    .line 651
    iget-object v2, p0, Lcom/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 655
    iget-object v2, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 657
    :try_start_0
    iget-object v2, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 664
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pim/vcard/VCardComposer;->mTerminateIsCalled:Z

    .line 665
    return-void

    .line 651
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pim/vcard/VCardComposer$OneEntryHandler;

    .line 652
    .local v1, handler:Lcom/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v1}, Lcom/pim/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_0

    .line 658
    .end local v1           #handler:Lcom/pim/vcard/VCardComposer$OneEntryHandler;
    :catch_0
    move-exception v0

    .line 659
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "VCardComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SQLiteException on Cursor#close(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
