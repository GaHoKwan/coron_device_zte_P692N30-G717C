.class public Lcom/mediatek/mms/op09/OP09MmsManageSimMessageExt;
.super Lcom/mediatek/mms/ext/MmsManageSimMessageImpl;
.source "OP09MmsManageSimMessageExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OP09/OP09MmsManageSimMessageExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MmsManageSimMessageImpl;-><init>(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private isUnactivatedMessage(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 69
    and-int/lit16 v0, p1, 0x400

    .line 70
    .local v0, temp:I
    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canBeOperated(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 90
    if-nez p1, :cond_1

    move v2, v3

    .line 100
    :cond_0
    :goto_0
    return v2

    .line 94
    :cond_1
    :try_start_0
    const-string v4, "index_on_icc"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 95
    .local v1, index:I
    const-string v4, "OP09/OP09MmsManageSimMessageExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canBeOperated: index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, v1}, Lcom/mediatek/mms/op09/OP09MmsManageSimMessageExt;->isUnactivatedMessage(I)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 97
    .end local v1           #index:I
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "OP09/OP09MmsManageSimMessageExt"

    const-string v4, "error to canBeOperated"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public filterUnoperatedMsgs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "simMsgIndex"

    .prologue
    .line 121
    if-eqz p1, :cond_0

    array-length v6, p1

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    :cond_0
    move-object v5, p1

    .line 132
    :cond_1
    return-object v5

    .line 124
    :cond_2
    array-length v6, p1

    new-array v5, v6, [Ljava/lang/String;

    .line 125
    .local v5, temp:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 126
    .local v2, index:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 127
    .local v4, msgIndex:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/mediatek/mms/op09/OP09MmsManageSimMessageExt;->isUnactivatedMessage(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 128
    aput-object v4, v5, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    .line 126
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAllContentUriForInternationalCard(I)Landroid/net/Uri;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    const-string v0, "content://sms/icc_international"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 139
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 140
    const-string v0, "content://sms/icc2_international"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIncludeUnoperatedMessage(Ljava/util/Iterator;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    const/4 v2, 0x0

    .line 105
    if-nez p1, :cond_0

    move v1, v2

    .line 116
    :goto_0
    return v1

    .line 108
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/mms/op09/OP09MmsManageSimMessageExt;->isUnactivatedMessage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x1

    goto :goto_0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    move v1, v2

    .line 116
    goto :goto_0
.end method

.method public isInternationalCard(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v3, 0x1

    .line 75
    const-string v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    .line 77
    .local v2, telephony:Lcom/mediatek/common/telephony/ITelephonyEx;
    if-eqz v2, :cond_0

    .line 78
    :try_start_0
    invoke-interface {v2, p1}, Lcom/mediatek/common/telephony/ITelephonyEx;->getInternationalCardType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 79
    .local v0, cardType:I
    if-ne v0, v3, :cond_0

    .line 86
    .end local v0           #cardType:I
    :goto_0
    return v3

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "OP09/OP09MmsManageSimMessageExt"

    const-string v4, "Error to getInternationalCardType"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
