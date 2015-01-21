.class public Ltmsdk/common/utils/WifiUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/utils/WifiUtil$IWifiApproveCheckCallBack;
    }
.end annotation


# static fields
.field public static sRedirectLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method

.method private static c(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 7
    .parameter "httpConn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/WifiApproveException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, location:Ljava/lang/String;
    const/4 v1, 0x0

    .line 130
    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const-string v6, "http://tools.3g.qq.com/cw.html"

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    .line 133
    :cond_0
    if-nez v3, :cond_1

    const-string v5, "Location"

    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 134
    const-string v5, "Location"

    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    :cond_1
    if-nez v3, :cond_2

    const-string v5, "Refresh"

    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 137
    const-string v5, "Refresh"

    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, items:[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 139
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 142
    .end local v2           #items:[Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 143
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_3

    .line 145
    invoke-static {v1}, Ltmsdk/common/utils/WifiUtil;->d(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltmsdk/common/exception/WifiApproveException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 146
    .local v4, url:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 147
    move-object v3, v4

    .line 158
    .end local v4           #url:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 160
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 166
    :cond_4
    :goto_0
    return-object v3

    .line 151
    :catch_0
    move-exception v5

    .line 158
    if-eqz v1, :cond_4

    .line 160
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 161
    :catch_1
    move-exception v5

    goto :goto_0

    .line 153
    :catch_2
    move-exception v0

    .line 154
    .local v0, e:Ltmsdk/common/exception/WifiApproveException;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    .end local v0           #e:Ltmsdk/common/exception/WifiApproveException;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_5

    .line 160
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 163
    :cond_5
    :goto_1
    throw v5

    .line 155
    :catch_3
    move-exception v5

    .line 158
    if-eqz v1, :cond_4

    .line 160
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 161
    :catch_4
    move-exception v5

    goto :goto_0

    :catch_5
    move-exception v5

    goto :goto_0

    :catch_6
    move-exception v6

    goto :goto_1
.end method

.method public static calculateSignalLevel(I)I
    .locals 3
    .parameter "numLevels"

    .prologue
    .line 69
    invoke-static {}, Ltmsdk/common/utils/WifiUtil;->isWifiNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const/4 v1, -0x1

    .line 73
    :goto_0
    return v1

    .line 72
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 73
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-static {v1, p0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    goto :goto_0
.end method

.method private static d(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/WifiApproveException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, location:Ljava/lang/String;
    invoke-static {p0}, Ltmsdk/common/utils/WifiUtil;->e(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, pageContent:Ljava/lang/String;
    const/4 v6, 0x5

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "http-equiv\\s*=\\s*[\"\']*refresh[\"\']*\\s*content\\s*=\\s*[\"\']*[^;]*;\\s*url\\s*=\\s*[\"\']*([^\"\'\\s>]+)"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "[^\\w](?:location.href\\s*=|location\\s*=|location.replace\\s*\\()\\s*[\"\']*([^\"\'>]+)"

    aput-object v7, v4, v6

    const-string v6, "<NextURL>([^<]+)"

    aput-object v6, v4, v8

    const/4 v6, 0x3

    const-string v7, "\\s+action\\s*=\\s*[\"\']*([^\"\'>]+)[\"\'>\\s]*.*submit"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "<LoginURL>([^<]+)"

    aput-object v7, v4, v6

    .line 180
    .local v4, patterns:[Ljava/lang/String;
    array-length v5, v4

    .line 182
    .local v5, patternsLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_2

    if-nez v1, :cond_2

    .line 183
    aget-object v6, v4, v0

    invoke-static {v6, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 184
    .local v2, matcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v1, :cond_1

    .line 185
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    const/4 v1, 0x0

    goto :goto_1

    .line 182
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    :cond_2
    if-nez v1, :cond_3

    .line 193
    new-instance v6, Ltmsdk/common/exception/WifiApproveException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0725SSID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ltmsdk/common/utils/WifiUtil;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " page head content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ltmsdk/common/exception/WifiApproveException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 195
    :cond_3
    return-object v1
.end method

.method private static e(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "is"

    .prologue
    .line 199
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 200
    .local v3, reader:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 203
    .local v2, line:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 215
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 210
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 211
    :catch_1
    move-exception v1

    .line 212
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 211
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v0       #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 212
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 209
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 210
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 213
    :goto_2
    throw v5

    .line 211
    :catch_3
    move-exception v1

    .line 212
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getSSID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 55
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 57
    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 61
    .end local v0           #info:Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static isWifiNetwork()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 40
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 41
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 45
    :cond_1
    return v2
.end method

.method public static needWifiApprove(Ltmsdk/common/utils/WifiUtil$IWifiApproveCheckCallBack;)Ljava/lang/String;
    .locals 10
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/WifiApproveException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 82
    const/4 v4, 0x0

    .line 83
    .local v4, location:Ljava/lang/String;
    const/4 v5, 0x0

    .line 84
    .local v5, networkError:Z
    const/4 v3, 0x0

    .line 86
    .local v3, httpConn:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string v8, "http://tools.3g.qq.com/cw.html"

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 87
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v7

    const/16 v8, 0x8

    if-ge v7, v8, :cond_0

    .line 88
    const-string v7, "http.keepAlive"

    const-string v8, "false"

    invoke-static {v7, v8}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 91
    const-string v7, "Pragma"

    const-string v8, "no-cache"

    invoke-virtual {v3, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v7, "Cache-Control"

    const-string v8, "no-cache"

    invoke-virtual {v3, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 94
    const-string v7, "GET"

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 95
    const/16 v7, 0x1388

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 96
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 97
    .local v6, responseCode:I
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_1

    const/16 v7, 0x12d

    if-lt v6, v7, :cond_5

    const/16 v7, 0x131

    if-gt v6, v7, :cond_5

    .line 99
    :cond_1
    const-string v7, "Meri"

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, customHeader:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v7, "Meri"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 101
    :cond_2
    invoke-static {v3}, Ltmsdk/common/utils/WifiUtil;->c(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltmsdk/common/exception/WifiApproveException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 113
    .end local v1           #customHeader:Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 114
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 117
    .end local v6           #responseCode:I
    :cond_4
    :goto_1
    if-nez v4, :cond_7

    .line 118
    invoke-interface {p0, v9, v5}, Ltmsdk/common/utils/WifiUtil$IWifiApproveCheckCallBack;->onWifiApproveCheckFinished(ZZ)V

    .line 123
    :goto_2
    return-object v4

    .line 104
    .restart local v6       #responseCode:I
    :cond_5
    const/4 v5, 0x1

    goto :goto_0

    .line 106
    .end local v6           #responseCode:I
    :catch_0
    move-exception v7

    .line 113
    if-eqz v3, :cond_4

    .line 114
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 108
    :catch_1
    move-exception v2

    .line 109
    .local v2, e:Ltmsdk/common/exception/WifiApproveException;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v2           #e:Ltmsdk/common/exception/WifiApproveException;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_6

    .line 114
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v7

    .line 110
    :catch_2
    move-exception v7

    .line 113
    if-eqz v3, :cond_4

    .line 114
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 120
    :cond_7
    sput-object v4, Ltmsdk/common/utils/WifiUtil;->sRedirectLocation:Ljava/lang/String;

    .line 121
    const/4 v7, 0x1

    invoke-interface {p0, v7, v5}, Ltmsdk/common/utils/WifiUtil$IWifiApproveCheckCallBack;->onWifiApproveCheckFinished(ZZ)V

    goto :goto_2
.end method
