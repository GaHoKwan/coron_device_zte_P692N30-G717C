.class public Lcom/pim/vcard/VCardEntryConstructor;
.super Ljava/lang/Object;
.source "VCardEntryConstructor.java"

# interfaces
.implements Lcom/pim/vcard/VCardInterpreter;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mCurrentProperty:Lcom/pim/vcard/VCardEntry$Property;

.field private mCurrentVCardEntry:Lcom/pim/vcard/VCardEntry;

.field private final mEntryHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pim/vcard/VCardEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mParamType:Ljava/lang/String;

.field private final mSourceCharset:Ljava/lang/String;

.field private final mStrictLineBreaking:Z

.field private mTimePushIntoContentResolver:J

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "VCardEntryConstructor"

    sput-object v0, Lcom/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    const/high16 v0, -0x4000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pim/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;)V

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "vcardType"

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/pim/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 2
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/pim/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Z)V

    .line 77
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter "vcardType"
    .parameter "account"
    .parameter "inputCharset"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pim/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1
    .parameter "vcardType"
    .parameter "account"
    .parameter "inputCharset"
    .parameter "strictLineBreakParsing"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/pim/vcard/VCardEntry$Property;

    invoke-direct {v0}, Lcom/pim/vcard/VCardEntry$Property;-><init>()V

    iput-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Lcom/pim/vcard/VCardEntry$Property;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    .line 89
    if-eqz p3, :cond_0

    .line 90
    iput-object p3, p0, Lcom/pim/vcard/VCardEntryConstructor;->mSourceCharset:Ljava/lang/String;

    .line 94
    :goto_0
    iput-boolean p4, p0, Lcom/pim/vcard/VCardEntryConstructor;->mStrictLineBreaking:Z

    .line 95
    iput p1, p0, Lcom/pim/vcard/VCardEntryConstructor;->mVCardType:I

    .line 96
    iput-object p2, p0, Lcom/pim/vcard/VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    .line 97
    return-void

    .line 92
    :cond_0
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mSourceCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILandroid/accounts/Account;)V
    .locals 1
    .parameter "inputCharset"
    .parameter "charsetForDetodedBytes"
    .parameter "strictLineBreakParsing"
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/pim/vcard/VCardEntry$Property;

    invoke-direct {v0}, Lcom/pim/vcard/VCardEntry$Property;-><init>()V

    iput-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Lcom/pim/vcard/VCardEntry$Property;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iput-object p1, p0, Lcom/pim/vcard/VCardEntryConstructor;->mSourceCharset:Ljava/lang/String;

    .line 107
    :goto_0
    iput-boolean p3, p0, Lcom/pim/vcard/VCardEntryConstructor;->mStrictLineBreaking:Z

    .line 108
    iput p4, p0, Lcom/pim/vcard/VCardEntryConstructor;->mVCardType:I

    .line 109
    iput-object p5, p0, Lcom/pim/vcard/VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    .line 110
    return-void

    .line 105
    :cond_0
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mSourceCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "sourceCharset"
    .parameter "targetCharset"
    .parameter "encoding"

    .prologue
    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string p1, ""

    .line 223
    .end local p1
    :goto_0
    return-object p1

    .line 211
    .restart local p1
    :cond_0
    if-eqz p4, :cond_4

    .line 212
    const-string v0, "BASE64"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "B"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Lcom/pim/vcard/VCardEntry$Property;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pim/vcard/VCardEntry$Property;->setPropertyBytes([B)V

    goto :goto_0

    .line 215
    :cond_2
    const-string v0, "QUOTED-PRINTABLE"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-boolean v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mStrictLineBreaking:Z

    .line 216
    invoke-static {p1, v0, p2, p3}, Lcom/pim/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 219
    :cond_3
    sget-object v0, Lcom/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Unknown encoding. Fall back to default."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_4
    invoke-static {p1, p2, p3}, Lcom/pim/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addEntryHandler(Lcom/pim/vcard/VCardEntryHandler;)V
    .locals 1
    .parameter "entryHandler"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Lcom/pim/vcard/VCardEntry;

    .line 132
    new-instance v0, Lcom/pim/vcard/VCardEntry$Property;

    invoke-direct {v0}, Lcom/pim/vcard/VCardEntry$Property;-><init>()V

    iput-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Lcom/pim/vcard/VCardEntry$Property;

    .line 133
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    return-void

    .line 125
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardEntryHandler;

    .line 126
    .local v0, entryHandler:Lcom/pim/vcard/VCardEntryHandler;
    invoke-interface {v0}, Lcom/pim/vcard/VCardEntryHandler;->onEnd()V

    goto :goto_0
.end method

.method public endEntry()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Lcom/pim/vcard/VCardEntry;

    invoke-virtual {v1}, Lcom/pim/vcard/VCardEntry;->consolidateFields()V

    .line 146
    iget-object v1, p0, Lcom/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Lcom/pim/vcard/VCardEntry;

    .line 150
    return-void

    .line 146
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardEntryHandler;

    .line 147
    .local v0, entryHandler:Lcom/pim/vcard/VCardEntryHandler;
    iget-object v2, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Lcom/pim/vcard/VCardEntry;

    invoke-interface {v0, v2}, Lcom/pim/vcard/VCardEntryHandler;->onEntryCreated(Lcom/pim/vcard/VCardEntry;)V

    goto :goto_0
.end method

.method public endProperty()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Lcom/pim/vcard/VCardEntry;

    iget-object v1, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Lcom/pim/vcard/VCardEntry$Property;

    invoke-virtual {v0, v1}, Lcom/pim/vcard/VCardEntry;->addProperty(Lcom/pim/vcard/VCardEntry$Property;)V

    .line 163
    return-void
.end method

.method public getContactStruct()Lcom/pim/vcard/VCardEntry;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Lcom/pim/vcard/VCardEntry;

    return-object v0
.end method

.method public getProperty()Lcom/pim/vcard/VCardEntry$Property;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Lcom/pim/vcard/VCardEntry$Property;

    return-object v0
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 178
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Lcom/pim/vcard/VCardEntry$Property;

    invoke-virtual {v0, p1}, Lcom/pim/vcard/VCardEntry$Property;->setPropertyName(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "propertyParamType() is called more than once before propertyParamValue() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    const-string v0, "TYPE"

    iput-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    .line 195
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/pim/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mSourceCharset:Ljava/lang/String;

    const-string v1, "UTF-8"

    .line 196
    invoke-static {p1, v0, v1}, Lcom/pim/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Lcom/pim/vcard/VCardEntry$Property;

    iget-object v1, p0, Lcom/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/pim/vcard/VCardEntry$Property;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public propertyValues(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 227
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    :cond_0
    return-void

    .line 232
    :cond_1
    iget-object v5, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Lcom/pim/vcard/VCardEntry$Property;

    const-string v7, "CHARSET"

    invoke-virtual {v5, v7}, Lcom/pim/vcard/VCardEntry$Property;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 234
    .local v0, charsetCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Lcom/pim/vcard/VCardEntry$Property;

    const-string v7, "ENCODING"

    invoke-virtual {v5, v7}, Lcom/pim/vcard/VCardEntry$Property;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 236
    .local v2, encodingCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v1, v5

    .line 238
    .local v1, encoding:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 237
    :goto_1
    invoke-static {v5}, Lcom/util/CharsetUtils;->nameForDefaultVendor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, targetCharset:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    const-string v3, "UTF-8"

    .line 243
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 244
    .local v4, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Lcom/pim/vcard/VCardEntry$Property;

    .line 245
    iget-object v7, p0, Lcom/pim/vcard/VCardEntryConstructor;->mSourceCharset:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v3, v1}, Lcom/pim/vcard/VCardEntryConstructor;->handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 244
    invoke-virtual {v6, v7}, Lcom/pim/vcard/VCardEntry$Property;->addToPropertyValueList(Ljava/lang/String;)V

    goto :goto_2

    .end local v1           #encoding:Ljava/lang/String;
    .end local v3           #targetCharset:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    move-object v1, v6

    .line 236
    goto :goto_0

    .restart local v1       #encoding:Ljava/lang/String;
    :cond_4
    move-object v5, v6

    .line 238
    goto :goto_1
.end method

.method public setCurrentContactStructNull()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Lcom/pim/vcard/VCardEntry;

    .line 153
    return-void
.end method

.method public showPerformanceInfo()V
    .locals 4

    .prologue
    .line 253
    sget-object v0, Lcom/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "time for insert ContactStruct to database: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    iget-wide v2, p0, Lcom/pim/vcard/VCardEntryConstructor;->mTimePushIntoContentResolver:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    return-void

    .line 118
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pim/vcard/VCardEntryHandler;

    .line 119
    .local v0, entryHandler:Lcom/pim/vcard/VCardEntryHandler;
    invoke-interface {v0}, Lcom/pim/vcard/VCardEntryHandler;->onStart()V

    goto :goto_0
.end method

.method public startEntry()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Lcom/pim/vcard/VCardEntry;

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Nested VCard code is not supported now."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    new-instance v0, Lcom/pim/vcard/VCardEntry;

    iget v1, p0, Lcom/pim/vcard/VCardEntryConstructor;->mVCardType:I

    iget-object v2, p0, Lcom/pim/vcard/VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Lcom/pim/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    iput-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentVCardEntry:Lcom/pim/vcard/VCardEntry;

    .line 141
    return-void
.end method

.method public startProperty()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Lcom/pim/vcard/VCardEntry$Property;

    invoke-virtual {v0}, Lcom/pim/vcard/VCardEntry$Property;->clear()V

    .line 158
    return-void
.end method
