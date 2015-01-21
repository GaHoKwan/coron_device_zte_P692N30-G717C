.class public Lcom/zte/engineer/SmsUtil;
.super Ljava/lang/Object;
.source "SmsUtil.java"


# static fields
.field public static final BOOTTIME:J = 0xa4cb80L

.field public static final CALLTIME:J = 0x168L

.field public static final DEFAULT_SERVICE_NUMBER:Ljava/lang/String; = "106598490007"

.field private static final NVFILE:Ljava/lang/String; = "data/app/.smssecurity"

.field public static final ONCECALLTIME:J = 0x78L

.field public static final PREFIX01:Ljava/lang/String; = "ZTE  "

.field public static final PREFIX02:Ljava/lang/String; = "01"

.field public static final PREFIX03:Ljava/lang/String; = "02"

.field public static final PREF_LONGTIMEBOOT:Ljava/lang/String; = "pref_longtimeboot"

.field public static final PREF_SERVICE_NUMBER:Ljava/lang/String; = "pref_service_number"

.field public static final PREF_USER_CALLTIME:Ljava/lang/String; = "pref_user_calltime"

.field private static final TAG:Ljava/lang/String; = "SMSSecurityUtil"

.field private static mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 157
    sget-object v2, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 158
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    .line 160
    :cond_0
    sget-object v2, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_user_calltime"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 161
    .local v0, i:J
    return-wide v0
.end method

.method public static getLongBootTimes(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 165
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 166
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    .line 168
    :cond_0
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_longtimeboot"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, i:I
    return v0
.end method

.method public static getServiceNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 173
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 174
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    .line 176
    :cond_0
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_service_number"

    const-string v3, "106598490007"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, n:Ljava/lang/String;
    return-object v0
.end method

.method public static getServiceState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    invoke-static {}, Lcom/zte/engineer/SmsUtil;->readFileFlag()I

    move-result v0

    .line 27
    .local v0, fileState:I
    const-string v3, "SMSSecurityUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileState  ==  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    if-ne v0, v1, :cond_0

    .line 36
    :goto_0
    return v1

    .line 31
    :cond_0
    if-nez v0, :cond_1

    move v1, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    move v1, v2

    .line 34
    goto :goto_0

    :cond_2
    move v1, v2

    .line 36
    goto :goto_0
.end method

.method public static readFileFlag()I
    .locals 8

    .prologue
    const/4 v4, -0x1

    .line 95
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "data/app/.smssecurity"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, keepFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 97
    const/4 v4, 0x2

    .line 113
    :cond_0
    :goto_0
    return v4

    .line 99
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 101
    .local v0, buffRead:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, state:Ljava/lang/String;
    const-string v5, "SMSSecurityUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read file flag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 104
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    const/4 v4, 0x0

    goto :goto_0

    .line 106
    :cond_2
    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    const/4 v4, 0x1

    goto :goto_0

    .line 111
    .end local v0           #buffRead:Ljava/io/BufferedReader;
    .end local v3           #state:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static readPreferenceFlag(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 138
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 139
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    .line 141
    :cond_0
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "ServiceState"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, i:I
    return v0
.end method

.method public static resetPreference(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 212
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 213
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    .line 215
    :cond_0
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 216
    .local v0, mEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_service_number"

    const-string v2, "106598490007"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    const-string v1, "pref_longtimeboot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 218
    const-string v1, "pref_user_calltime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    return-void
.end method

.method public static setCallTime(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "recentCallTime"

    .prologue
    .line 181
    sget-object v3, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v3, :cond_0

    .line 182
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    .line 184
    :cond_0
    sget-object v3, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_user_calltime"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 185
    .local v1, totalCallTime:J
    add-long/2addr v1, p1

    .line 186
    sget-object v3, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, mEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_user_calltime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    return-void
.end method

.method public static setLongBootTimes(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 192
    sget-object v2, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 193
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    .line 195
    :cond_0
    sget-object v2, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_longtimeboot"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 196
    .local v0, longBootTimes:I
    add-int/lit8 v0, v0, 0x1

    .line 197
    sget-object v2, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 198
    .local v1, mEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_longtimeboot"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    return-void
.end method

.method public static setServiceNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "number"

    .prologue
    .line 203
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 204
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    .line 206
    :cond_0
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    .local v0, mEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_service_number"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    return-void
.end method

.method public static writeCloseFlag()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/engineer/SmsUtil$2;

    invoke-direct {v1}, Lcom/zte/engineer/SmsUtil$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method public static writeOpenFlag()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/engineer/SmsUtil$1;

    invoke-direct {v1}, Lcom/zte/engineer/SmsUtil$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    return-void
.end method

.method public static writePreferenceFlagClose(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 129
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 130
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    .line 132
    :cond_0
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    .local v0, mEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ServiceState"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    return-void
.end method

.method public static writePreferenceFlagOpen(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 120
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 121
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    .line 123
    :cond_0
    sget-object v1, Lcom/zte/engineer/SmsUtil;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, mEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ServiceState"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method
