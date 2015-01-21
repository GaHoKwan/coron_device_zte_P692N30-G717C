.class Ltmsdkobf/iv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sk:[Ljava/lang/String;


# instance fields
.field private sh:Ljava/lang/String;

.field private si:Ljava/lang/String;

.field private sj:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    sput-object v0, Ltmsdkobf/iv;->sk:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "apnName"

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Ltmsdkobf/iv;->sj:I

    .line 60
    const/4 v6, 0x0

    .line 62
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, selection:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "current"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Ltmsdkobf/iv;->sk:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 66
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Ltmsdkobf/iv;->sh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-static {v0, v1}, Ltmsdkobf/iv;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/iv;->sh:Ljava/lang/String;

    .line 71
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/iv;->si:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Ltmsdkobf/iv;->dE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 75
    .local v9, portString:Ljava/lang/String;
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltmsdkobf/iv;->sj:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    .end local v9           #portString:Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 85
    .end local v3           #selection:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 86
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    if-eqz v6, :cond_2

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 92
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v0, p0, Ltmsdkobf/iv;->sh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-static {p2}, Ltmsdkobf/it;->bm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/iv;->sh:Ljava/lang/String;

    .line 94
    invoke-static {p2}, Ltmsdkobf/it;->bn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/iv;->si:Ljava/lang/String;

    .line 95
    invoke-static {p2}, Ltmsdkobf/it;->bo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltmsdkobf/iv;->sj:I

    .line 98
    :cond_3
    iget-object v0, p0, Ltmsdkobf/iv;->sh:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 99
    invoke-static {p1}, Ltmsdk/common/utils/PhoneInfoUtil;->getNetworkOperatorCode(Landroid/content/Context;)I

    move-result v8

    .line 100
    .local v8, operator:I
    packed-switch v8, :pswitch_data_0

    .line 114
    const-string v0, "http://mmsc.monternet.com"

    iput-object v0, p0, Ltmsdkobf/iv;->sh:Ljava/lang/String;

    .line 115
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Ltmsdkobf/iv;->si:Ljava/lang/String;

    .line 118
    :goto_3
    const/16 v0, 0x50

    iput v0, p0, Ltmsdkobf/iv;->sj:I

    .line 121
    .end local v8           #operator:I
    :cond_4
    return-void

    .line 76
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v9       #portString:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 77
    .local v7, e:Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 88
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .end local v9           #portString:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 88
    .restart local v3       #selection:Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_2

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 102
    .end local v3           #selection:Ljava/lang/String;
    .restart local v8       #operator:I
    :pswitch_0
    const-string v0, "http://mmsc.monternet.com"

    iput-object v0, p0, Ltmsdkobf/iv;->sh:Ljava/lang/String;

    .line 103
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Ltmsdkobf/iv;->si:Ljava/lang/String;

    goto :goto_3

    .line 106
    :pswitch_1
    const-string v0, "http://mmsc.vnet.mobi"

    iput-object v0, p0, Ltmsdkobf/iv;->sh:Ljava/lang/String;

    .line 107
    const-string v0, "10.0.0.200"

    iput-object v0, p0, Ltmsdkobf/iv;->si:Ljava/lang/String;

    goto :goto_3

    .line 110
    :pswitch_2
    const-string v0, "http://mmsc.myuni.com.cn"

    iput-object v0, p0, Ltmsdkobf/iv;->sh:Ljava/lang/String;

    .line 111
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Ltmsdkobf/iv;->si:Ljava/lang/String;

    goto :goto_3

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "types"
    .parameter "requestType"

    .prologue
    const/4 v4, 0x1

    .line 141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v4

    .line 145
    :cond_1
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 146
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    .end local v3           #t:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ltmsdkobf/iv;->sh:Ljava/lang/String;

    return-object v0
.end method

.method public dD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ltmsdkobf/iv;->si:Ljava/lang/String;

    return-object v0
.end method

.method public dE()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ltmsdkobf/iv;->si:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/iv;->si:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Ltmsdkobf/iv;->sj:I

    return v0
.end method
