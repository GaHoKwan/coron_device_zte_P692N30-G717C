.class public Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;
.super Ljava/lang/Object;
.source "InterceptProviderAPI.java"

# interfaces
.implements Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;


# static fields
.field private static final INTERCEPT_ALL:I = 0x0

.field private static final INTERCEPT_UNREAD_CALLLOG:I = 0x2

.field private static final INTERCEPT_UNREAD_SMS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InterceptProviderAPI"

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

.field private mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

.field private mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->sURLMatcher:Landroid/content/UriMatcher;

    .line 36
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.zte.heartyservice.intercept"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.zte.heartyservice.intercept"

    const-string v2, "unread_sms"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.zte.heartyservice.intercept"

    const-string v2, "unread_calllog"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private insertAllType(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 132
    const-string v1, "type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 136
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->insertContact(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->insertKeyword(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private insertContact(Landroid/content/ContentValues;)V
    .locals 7
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 84
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/Contact;-><init>()V

    .line 85
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    .line 86
    const-string v2, "detail"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 87
    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 88
    const-string v2, "intercept_type"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 89
    .local v1, intercept_type:I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    .line 90
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    .line 91
    const-string v2, "type"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    :goto_2
    iput v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 94
    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    if-nez v2, :cond_5

    .line 95
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    iput v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 97
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteByPhoneAndType(Ljava/lang/String;I)Z

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v2, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->insert(Lcom/zte/heartyservice/intercept/Tencent/Contact;)J

    .line 115
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v2, v4

    .line 89
    goto :goto_0

    :cond_3
    move v2, v4

    .line 90
    goto :goto_1

    :cond_4
    move v2, v3

    .line 91
    goto :goto_2

    .line 104
    :cond_5
    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    if-ne v2, v3, :cond_1

    .line 105
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 106
    iput v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 107
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteByPhoneAndType(Ljava/lang/String;I)Z

    .line 111
    :cond_6
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v2, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->insert(Lcom/zte/heartyservice/intercept/Tencent/Contact;)J

    goto :goto_3
.end method

.method private insertKeyword(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "initialValues"

    .prologue
    .line 118
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, keyword:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

    invoke-interface {v2, v0}, Ltmsdk/common/module/aresengine/IKeyWordDao;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v1, keywordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 123
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

    invoke-interface {v2}, Ltmsdk/common/module/aresengine/IKeyWordDao;->getAll()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

    invoke-interface {v2, v1}, Ltmsdk/common/module/aresengine/IKeyWordDao;->setAll(Ljava/util/List;)V

    .line 129
    .end local v1           #keywordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private queryAll(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 210
    iget-object v8, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v8}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getAll()Ljava/util/List;

    move-result-object v7

    .line 211
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/Contact;>;"
    iget-object v8, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v8}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getAll()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "name"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string v9, "detail"

    aput-object v9, v0, v8

    const/4 v8, 0x2

    const-string v9, "type"

    aput-object v9, v0, v8

    const/4 v8, 0x3

    const-string v9, "intercept_type"

    aput-object v9, v0, v8

    .line 216
    .local v0, column:[Ljava/lang/String;
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v3, v0, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 218
    .local v3, cursor:Landroid/database/MatrixCursor;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    .line 219
    .local v1, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    const/4 v8, 0x4

    new-array v2, v8, [Ljava/lang/Object;

    .line 220
    .local v2, contactArray:[Ljava/lang/Object;
    const/4 v8, 0x0

    iget-object v9, v1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    aput-object v9, v2, v8

    .line 221
    const/4 v8, 0x1

    iget-object v9, v1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    aput-object v9, v2, v8

    .line 222
    const/4 v9, 0x2

    iget v8, v1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v9

    .line 224
    const/4 v10, 0x3

    iget-boolean v8, v1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_2
    iget-boolean v9, v1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    :goto_3
    or-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v10

    .line 227
    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    :cond_0
    const/4 v8, 0x1

    goto :goto_1

    .line 224
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    .line 230
    .end local v1           #contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    .end local v2           #contactArray:[Ljava/lang/Object;
    :cond_3
    iget-object v8, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

    invoke-interface {v8}, Ltmsdk/common/module/aresengine/IKeyWordDao;->getAll()Ljava/util/ArrayList;

    move-result-object v6

    .line 231
    .local v6, keywordlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 232
    .local v5, keyword:Ljava/lang/String;
    const/4 v8, 0x4

    new-array v2, v8, [Ljava/lang/Object;

    .line 233
    .restart local v2       #contactArray:[Ljava/lang/Object;
    const/4 v8, 0x0

    aput-object v5, v2, v8

    .line 234
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v2, v8

    .line 235
    const/4 v8, 0x2

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    .line 236
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    .line 237
    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4

    .line 240
    .end local v2           #contactArray:[Ljava/lang/Object;
    .end local v5           #keyword:Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method private queryUnread(I)Landroid/database/Cursor;
    .locals 9
    .parameter "type"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 189
    new-array v0, v8, [Ljava/lang/String;

    const-string v6, "number"

    aput-object v6, v0, v7

    .line 190
    .local v0, column:[Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 192
    .local v2, cursor:Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getInterceptedPhoneAndMsgList()Ljava/util/List;

    move-result-object v4

    .line 194
    .local v4, interceptList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/InterceptResult;>;"
    if-eqz v4, :cond_1

    .line 195
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/InterceptResult;

    .line 196
    .local v5, result:Lcom/zte/heartyservice/common/datatype/InterceptResult;
    iget v6, v5, Lcom/zte/heartyservice/common/datatype/InterceptResult;->type:I

    if-ne v6, p1, :cond_0

    .line 197
    new-array v1, v8, [Ljava/lang/Object;

    .line 198
    .local v1, contactArray:[Ljava/lang/Object;
    iget-object v6, v5, Lcom/zte/heartyservice/common/datatype/InterceptResult;->number:Ljava/lang/String;

    aput-object v6, v1, v7

    .line 199
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    .end local v1           #contactArray:[Ljava/lang/Object;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #result:Lcom/zte/heartyservice/common/datatype/InterceptResult;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 58
    array-length v1, p3

    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v2

    .line 62
    :cond_1
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/Contact;-><init>()V

    .line 63
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    aget-object v1, p3, v2

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 64
    const-string v1, "0"

    aget-object v4, p3, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 68
    iget v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    if-ne v1, v3, :cond_4

    .line 69
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 70
    iput v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 71
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteByPhoneAndType(Ljava/lang/String;I)Z

    :cond_2
    move v2, v3

    .line 73
    goto :goto_0

    :cond_3
    move v1, v3

    .line 64
    goto :goto_1

    .line 74
    :cond_4
    iget v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 76
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteByPhoneAndType(Ljava/lang/String;I)Z

    :cond_5
    move v2, v3

    .line 78
    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createBlackListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    .line 47
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createWhiteListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    .line 48
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/KeyWordDao;->getInstance(Landroid/content/Context;)Ltmsdk/common/module/aresengine/IKeyWordDao;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 147
    sget-object v2, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 148
    .local v1, match:I
    const-string v2, "InterceptProviderAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", match="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    packed-switch v1, :pswitch_data_0

    .line 157
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/Contact;-><init>()V

    .line 158
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    .line 159
    const-string v2, "phone_number"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 160
    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 161
    const-string v2, "enable_calling"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    .line 162
    const-string v2, "enable_sms"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    .line 163
    const-string v2, "type"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    iput v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 166
    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    if-nez v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 168
    iput v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 169
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteByPhoneAndType(Ljava/lang/String;I)Z

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v2, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->insert(Lcom/zte/heartyservice/intercept/Tencent/Contact;)J

    .line 185
    .end local v0           #contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    :cond_1
    :goto_1
    return-object p1

    .line 151
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->insertAllType(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_1

    .restart local v0       #contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    :cond_2
    move v2, v4

    .line 163
    goto :goto_0

    .line 175
    :cond_3
    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    if-ne v2, v4, :cond_1

    .line 176
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 177
    iput v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 178
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteByPhoneAndType(Ljava/lang/String;I)Z

    .line 181
    :cond_4
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v2, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->insert(Lcom/zte/heartyservice/intercept/Tencent/Contact;)J

    goto :goto_1

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 246
    sget-object v7, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 247
    .local v6, match:I
    const-string v7, "InterceptProviderAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query uri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", match="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    packed-switch v6, :pswitch_data_0

    .line 260
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v7}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getAll()Ljava/util/List;

    move-result-object v5

    .line 261
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/Contact;>;"
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v7}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getAll()Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    const/4 v7, 0x5

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "name"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "phone_number"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "type"

    aput-object v8, v0, v7

    const/4 v7, 0x3

    const-string v8, "enable_calling"

    aput-object v8, v0, v7

    const/4 v7, 0x4

    const-string v8, "enable_sms"

    aput-object v8, v0, v7

    .line 271
    .local v0, column:[Ljava/lang/String;
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v3, v0, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 273
    .local v3, cursor:Landroid/database/MatrixCursor;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    .line 274
    .local v1, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    const/4 v7, 0x5

    new-array v2, v7, [Ljava/lang/Object;

    .line 275
    .local v2, contactArray:[Ljava/lang/Object;
    const/4 v7, 0x0

    iget-object v8, v1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    aput-object v8, v2, v7

    .line 276
    const/4 v7, 0x1

    iget-object v8, v1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    aput-object v8, v2, v7

    .line 277
    const/4 v7, 0x2

    iget v8, v1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    .line 278
    const/4 v8, 0x3

    iget-boolean v7, v1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v8

    .line 279
    const/4 v8, 0x4

    iget-boolean v7, v1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v8

    .line 280
    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 250
    .end local v0           #column:[Ljava/lang/String;
    .end local v1           #contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    .end local v2           #contactArray:[Ljava/lang/Object;
    .end local v3           #cursor:Landroid/database/MatrixCursor;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/Contact;>;"
    :pswitch_0
    invoke-direct/range {p0 .. p5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->queryAll(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 282
    :cond_0
    :goto_3
    return-object v3

    .line 252
    :pswitch_1
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->queryUnread(I)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_3

    .line 254
    :pswitch_2
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->queryUnread(I)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_3

    .line 278
    .restart local v0       #column:[Ljava/lang/String;
    .restart local v1       #contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    .restart local v2       #contactArray:[Ljava/lang/Object;
    .restart local v3       #cursor:Landroid/database/MatrixCursor;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/Contact;>;"
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 279
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 287
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/Contact;-><init>()V

    .line 288
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    .line 289
    const-string v1, "phone_number"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 290
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 291
    const-string v1, "enable_calling"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    .line 292
    const-string v1, "enable_sms"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    .line 293
    const-string v1, "type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 296
    iget v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    if-nez v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 298
    iput v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 299
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteByPhoneAndType(Ljava/lang/String;I)Z

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 303
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->insert(Lcom/zte/heartyservice/intercept/Tencent/Contact;)J

    .line 317
    :goto_1
    return v3

    :cond_1
    move v1, v3

    .line 293
    goto :goto_0

    .line 306
    :cond_2
    iget v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    if-ne v1, v3, :cond_4

    .line 307
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 308
    iput v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 309
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteByPhoneAndType(Ljava/lang/String;I)Z

    .line 312
    :cond_3
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 313
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptProviderAPI;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->insert(Lcom/zte/heartyservice/intercept/Tencent/Contact;)J

    goto :goto_1

    :cond_4
    move v3, v2

    .line 317
    goto :goto_1
.end method
