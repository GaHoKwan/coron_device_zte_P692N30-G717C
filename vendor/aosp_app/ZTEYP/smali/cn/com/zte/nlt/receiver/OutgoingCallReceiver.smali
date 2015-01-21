.class public Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCallReceiver.java"


# static fields
.field private static final IP_ENABLED_ARRAY:[Ljava/lang/String; = null

.field private static final IP_LOCALNUM_ARRAY:[Ljava/lang/String; = null

.field private static final IP_NUMBER_ARRAY1:[Ljava/lang/String; = null

.field private static final IP_NUMBER_ARRAY2:[Ljava/lang/String; = null

.field private static final IP_NUMBER_ARRAY3:[Ljava/lang/String; = null

.field private static final IP_NUMBER_ARRAY4:[Ljava/lang/String; = null

.field private static final IP_NUMBER_ARRAY5:[Ljava/lang/String; = null

.field private static final IP_SELECT_ARRAY:[Ljava/lang/String; = null

.field private static final IP_SELECT_KEY_ARRAY:[Ljava/lang/String; = null

.field private static final LOCAL_NUMBER:[Ljava/lang/String; = null

.field private static final MTK_CALL_SUB_KEY:Ljava/lang/String; = "com.android.phone.extra.slot"

.field private static final SUB1:I = 0x0

.field private static final SUB2:I = 0x1

.field private static final SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field private static final TAG:Ljava/lang/String; = "NumberLocator"

.field private static final mCountryCode:[Ljava/lang/String;


# instance fields
.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "+86"

    aput-object v1, v0, v2

    const-string v1, "0086"

    aput-object v1, v0, v3

    const-string v1, "086"

    aput-object v1, v0, v4

    sput-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->mCountryCode:[Ljava/lang/String;

    .line 22
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_enabled"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_enabled"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->IP_ENABLED_ARRAY:[Ljava/lang/String;

    .line 23
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_localnum"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_localnum"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->IP_LOCALNUM_ARRAY:[Ljava/lang/String;

    .line 24
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Cardone_select"

    aput-object v1, v0, v2

    const-string v1, "Cardtwo_select"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->IP_SELECT_ARRAY:[Ljava/lang/String;

    .line 25
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_number1"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_number1"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->IP_NUMBER_ARRAY1:[Ljava/lang/String;

    .line 26
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_number2"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_number2"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->IP_NUMBER_ARRAY2:[Ljava/lang/String;

    .line 27
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_number3"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_number3"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->IP_NUMBER_ARRAY3:[Ljava/lang/String;

    .line 28
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_number4"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_number4"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->IP_NUMBER_ARRAY4:[Ljava/lang/String;

    .line 29
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_number5"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_number5"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->IP_NUMBER_ARRAY5:[Ljava/lang/String;

    .line 30
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_number"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_number"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->IP_SELECT_KEY_ARRAY:[Ljava/lang/String;

    .line 31
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "location_number1"

    aput-object v1, v0, v2

    const-string v1, "location_number2"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->LOCAL_NUMBER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->mSubscription:I

    return-void
.end method

.method private dealWithCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 40
    move-object v4, p1

    .line 42
    .local v4, resultNumber:Ljava/lang/String;
    const-string v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    :cond_0
    sget-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->mCountryCode:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 44
    .local v1, c:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 50
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #c:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-object v4

    .line 43
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #c:Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getLocalAreaCodeAndIpDialer(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "subscription"

    .prologue
    .line 61
    const/4 v8, 0x0

    .line 62
    .local v8, cr:Landroid/database/Cursor;
    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, ""

    aput-object v1, v6, v0

    const/4 v0, 0x2

    const-string v1, ""

    aput-object v1, v6, v0

    .line 64
    .local v6, areaCodeAndIpDialer:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/com/zte/nlt/NltConst;->URI_GET_VALUE:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 65
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->LOCAL_NUMBER:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 68
    .local v7, areaIndex:I
    const/4 v0, 0x0

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocalAreaCodeAndIpDialer, areaCodeAndIpDialer[0] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->IP_SELECT_ARRAY:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 72
    .local v13, selectKeyIndex:I
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 73
    .local v12, ipDialerKey:Ljava/lang/String;
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 74
    .local v11, ipDialerIndex:I
    const/4 v0, 0x1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocalAreaCodeAndIpDialer, areaCodeAndIpDialer[1] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->IP_ENABLED_ARRAY:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 78
    .local v10, enableIndex:I
    const/4 v0, 0x2

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocalAreaCodeAndIpDialer, areaCodeAndIpDialer[2] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v7           #areaIndex:I
    .end local v10           #enableIndex:I
    .end local v11           #ipDialerIndex:I
    .end local v12           #ipDialerKey:Ljava/lang/String;
    .end local v13           #selectKeyIndex:I
    :cond_0
    if-eqz v8, :cond_1

    .line 86
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_1
    :goto_0
    return-object v6

    .line 81
    :catch_0
    move-exception v9

    .line 82
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    if-eqz v8, :cond_1

    .line 86
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 85
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 86
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private isCanIpDial(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "ipDialEnabled"
    .parameter "ipDialNumber"
    .parameter "localNumber"

    .prologue
    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNotISODigit(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 36
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "broadcastIntent"

    .prologue
    .line 94
    const-string v1, "NumberLocatorReceiver onReceive!"

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v14

    .line 96
    .local v14, number:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v1, " "

    const-string v3, ""

    invoke-virtual {v14, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 101
    const-string v1, "subscription"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->mSubscription:I

    .line 102
    iget v1, p0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->mSubscription:I

    if-nez v1, :cond_2

    .line 103
    const-string v1, "com.android.phone.extra.slot"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->mSubscription:I

    .line 105
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSubscription="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->mSubscription:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 106
    const-string v12, ""

    .line 107
    .local v12, finalNumber:Ljava/lang/String;
    iget v1, p0, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->mSubscription:I

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->getLocalAreaCodeAndIpDialer(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v13

    .line 108
    .local v13, localAreaAndIpNumber:[Ljava/lang/String;
    const-string v1, "1"

    const/4 v3, 0x2

    aget-object v3, v13, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    aget-object v3, v13, v3

    const/4 v4, 0x0

    aget-object v4, v13, v4

    invoke-direct {p0, v14, v1, v3, v4}, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->isCanIpDial(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 109
    const-string v1, "isCanIpDial return false ."

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_3
    const/4 v10, 0x0

    .line 114
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "query begin"

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcn/com/zte/nlt/NltConst;->URI_LOCATION:Landroid/net/Uri;

    invoke-static {v1, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 116
    .local v2, numlocatorUri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 117
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_6

    .line 118
    :cond_4
    if-eqz v10, :cond_5

    .line 119
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_5
    const-string v1, "cursor =null"

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    if-eqz v10, :cond_0

    .line 156
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 124
    :cond_6
    :try_start_1
    const-string v1, "areacode"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 125
    .local v8, areaCodeColumn:I
    const-string v1, "cardtype"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, cardtype:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cardtype="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 127
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, areaCode:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_7

    .line 155
    if-eqz v10, :cond_0

    .line 156
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 131
    :cond_7
    :try_start_2
    const-string v1, "fixedphone"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 138
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areaCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 139
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 140
    const/4 v1, 0x0

    aget-object v1, v13, v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_a

    .line 155
    if-eqz v10, :cond_0

    .line 156
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 133
    :cond_8
    :try_start_3
    const-string v1, "intlphone"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "00"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 136
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 143
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v3, v13, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v14}, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->dealWithCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResultData.finalNumber="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v12}, Lcn/com/zte/nlt/receiver/OutgoingCallReceiver;->setResultData(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 155
    if-eqz v10, :cond_0

    .line 156
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 155
    :cond_b
    if-eqz v10, :cond_0

    .line 156
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 150
    .end local v2           #numlocatorUri:Landroid/net/Uri;
    .end local v7           #areaCode:Ljava/lang/String;
    .end local v8           #areaCodeColumn:I
    .end local v9           #cardtype:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 151
    .local v11, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    if-eqz v10, :cond_0

    .line 156
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 155
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_c

    .line 156
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v1
.end method
