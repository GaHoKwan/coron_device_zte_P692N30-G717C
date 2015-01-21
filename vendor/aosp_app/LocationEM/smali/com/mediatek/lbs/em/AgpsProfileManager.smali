.class public Lcom/mediatek/lbs/em/AgpsProfileManager;
.super Ljava/lang/Object;
.source "AgpsProfileManager.java"


# instance fields
.field private mAgpsEnable:Z

.field private mAgpsProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/lbs/em/AgpsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mCpGeminiPrefSim:I

.field private mDefaultProfileName:Ljava/lang/String;

.field private mDisableAfterReboot:Z

.field private mLogFileMaxNum:I

.field private mNetworkUsed:I

.field private mNiRequest:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    .line 21
    iput-boolean v2, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mDisableAfterReboot:Z

    .line 22
    iput-boolean v1, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mNiRequest:Z

    .line 23
    iput-boolean v1, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mAgpsEnable:Z

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mLogFileMaxNum:I

    .line 25
    iput v1, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mCpGeminiPrefSim:I

    .line 26
    iput v2, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mNetworkUsed:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mDefaultProfileName:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 183
    const-string v0, "LocationEM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method


# virtual methods
.method public dumpFile(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 58
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==== dumpFile path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/em/AgpsProfileManager;->log(Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/em/AgpsProfileManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 63
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 64
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    if-eqz v2, :cond_0

    .line 70
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 75
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 69
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_1
    if-eqz v3, :cond_2

    .line 70
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v2, v3

    .line 73
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 71
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 74
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 71
    .end local v1           #line:Ljava/lang/String;
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 65
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 66
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 69
    if-eqz v2, :cond_0

    .line 70
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 71
    :catch_4
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 68
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 69
    :goto_4
    if-eqz v2, :cond_3

    .line 70
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 73
    :cond_3
    :goto_5
    throw v4

    .line 71
    :catch_5
    move-exception v0

    .line 72
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 68
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 65
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 63
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method public getAllProfile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/lbs/em/AgpsProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    return-object v0
.end method

.method public getCpPreferSim()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mCpGeminiPrefSim:I

    return v0
.end method

.method public getDefaultProfile()Lcom/mediatek/lbs/em/AgpsProfile;
    .locals 4

    .prologue
    .line 30
    iget-object v2, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/lbs/em/AgpsProfile;

    .line 31
    .local v1, profile:Lcom/mediatek/lbs/em/AgpsProfile;
    invoke-virtual {v1}, Lcom/mediatek/lbs/em/AgpsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mDefaultProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    .end local v1           #profile:Lcom/mediatek/lbs/em/AgpsProfile;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDisableAfterRebootStatus()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mDisableAfterReboot:Z

    return v0
.end method

.method public getNiStatus()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mNiRequest:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 170
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 171
    .local v2, tmp:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDisableAfterReboot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mDisableAfterReboot:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNiRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mNiRequest:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAgpsEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mAgpsEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLogFileMaxNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mLogFileMaxNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCpGeminiPrefSim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mCpGeminiPrefSim:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNetworkUsed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mNetworkUsed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDefaultProfileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mDefaultProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/lbs/em/AgpsProfile;

    .line 176
    .local v1, profile:Lcom/mediatek/lbs/em/AgpsProfile;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 178
    .end local v1           #profile:Lcom/mediatek/lbs/em/AgpsProfile;
    :cond_0
    return-object v2
.end method

.method public updateAgpsProfile(Ljava/lang/String;)V
    .locals 14
    .parameter "path"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 78
    const/4 v10, 0x0

    .line 79
    .local v10, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    .line 86
    .local v7, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 87
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 89
    .end local v7           #is:Ljava/io/InputStream;
    .local v8, is:Ljava/io/InputStream;
    :try_start_1
    const-string v11, "utf-8"

    invoke-interface {v10, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 92
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 93
    .local v5, eventType:I
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, name:Ljava/lang/String;
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v3

    .line 96
    .local v3, count:I
    const/4 v11, 0x2

    if-eq v5, v11, :cond_4

    .line 145
    :cond_1
    :goto_0
    if-ne v5, v12, :cond_0

    .line 161
    if-eqz v8, :cond_2

    .line 162
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    :cond_2
    move-object v7, v8

    .line 167
    .end local v3           #count:I
    .end local v5           #eventType:I
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #name:Ljava/lang/String;
    .restart local v7       #is:Ljava/io/InputStream;
    :cond_3
    :goto_1
    return-void

    .line 98
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v3       #count:I
    .restart local v5       #eventType:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #name:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v11, "agps_profile"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 99
    new-instance v0, Lcom/mediatek/lbs/em/AgpsProfile;

    invoke-direct {v0}, Lcom/mediatek/lbs/em/AgpsProfile;-><init>()V

    .line 100
    .local v0, agpsProfile:Lcom/mediatek/lbs/em/AgpsProfile;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v3, :cond_d

    .line 101
    invoke-interface {v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, attrValue:Ljava/lang/String;
    const-string v11, "address"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 106
    invoke-virtual {v0, v2}, Lcom/mediatek/lbs/em/AgpsProfile;->setAddr(Ljava/lang/String;)V

    .line 100
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 107
    :cond_6
    const-string v11, "slp_name"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 108
    invoke-virtual {v0, v2}, Lcom/mediatek/lbs/em/AgpsProfile;->setName(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_3

    .line 147
    .end local v0           #agpsProfile:Lcom/mediatek/lbs/em/AgpsProfile;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v3           #count:I
    .end local v5           #eventType:I
    .end local v6           #i:I
    .end local v9           #name:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v7, v8

    .line 148
    .end local v8           #is:Ljava/io/InputStream;
    .local v4, e:Ljava/io/FileNotFoundException;
    .restart local v7       #is:Ljava/io/InputStream;
    :goto_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/mediatek/lbs/em/AgpsProfileManager;->dumpFile(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 161
    if-eqz v7, :cond_3

    .line 162
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 163
    :catch_1
    move-exception v4

    .line 164
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 109
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v0       #agpsProfile:Lcom/mediatek/lbs/em/AgpsProfile;
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrValue:Ljava/lang/String;
    .restart local v3       #count:I
    .restart local v5       #eventType:I
    .restart local v6       #i:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #name:Ljava/lang/String;
    :cond_7
    :try_start_6
    const-string v11, "port"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/mediatek/lbs/em/AgpsProfile;->setPort(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    .line 150
    .end local v0           #agpsProfile:Lcom/mediatek/lbs/em/AgpsProfile;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v3           #count:I
    .end local v5           #eventType:I
    .end local v6           #i:I
    .end local v9           #name:Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v7, v8

    .line 151
    .end local v8           #is:Ljava/io/InputStream;
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #is:Ljava/io/InputStream;
    :goto_5
    :try_start_7
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 152
    invoke-virtual {p0, p1}, Lcom/mediatek/lbs/em/AgpsProfileManager;->dumpFile(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 161
    if-eqz v7, :cond_3

    .line 162
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 163
    :catch_3
    move-exception v4

    .line 164
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 111
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v0       #agpsProfile:Lcom/mediatek/lbs/em/AgpsProfile;
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrValue:Ljava/lang/String;
    .restart local v3       #count:I
    .restart local v5       #eventType:I
    .restart local v6       #i:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #name:Ljava/lang/String;
    :cond_8
    :try_start_9
    const-string v11, "ttl"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/mediatek/lbs/em/AgpsProfile;->setTls(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 153
    .end local v0           #agpsProfile:Lcom/mediatek/lbs/em/AgpsProfile;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v3           #count:I
    .end local v5           #eventType:I
    .end local v6           #i:I
    .end local v9           #name:Ljava/lang/String;
    :catch_4
    move-exception v4

    move-object v7, v8

    .line 154
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v4       #e:Ljava/io/IOException;
    .restart local v7       #is:Ljava/io/InputStream;
    :goto_6
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    invoke-virtual {p0, p1}, Lcom/mediatek/lbs/em/AgpsProfileManager;->dumpFile(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 161
    if-eqz v7, :cond_3

    .line 162
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    .line 163
    :catch_5
    move-exception v4

    .line 164
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 113
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v0       #agpsProfile:Lcom/mediatek/lbs/em/AgpsProfile;
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrValue:Ljava/lang/String;
    .restart local v3       #count:I
    .restart local v5       #eventType:I
    .restart local v6       #i:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #name:Ljava/lang/String;
    :cond_9
    :try_start_c
    const-string v11, "show_type"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/mediatek/lbs/em/AgpsProfile;->setShowType(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_3

    .line 156
    .end local v0           #agpsProfile:Lcom/mediatek/lbs/em/AgpsProfile;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v3           #count:I
    .end local v5           #eventType:I
    .end local v6           #i:I
    .end local v9           #name:Ljava/lang/String;
    :catch_6
    move-exception v4

    move-object v7, v8

    .line 157
    .end local v8           #is:Ljava/io/InputStream;
    .local v4, e:Ljava/lang/Exception;
    .restart local v7       #is:Ljava/io/InputStream;
    :goto_7
    :try_start_d
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    invoke-virtual {p0, p1}, Lcom/mediatek/lbs/em/AgpsProfileManager;->dumpFile(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 161
    if-eqz v7, :cond_3

    .line 162
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_1

    .line 163
    :catch_7
    move-exception v4

    .line 164
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 115
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v0       #agpsProfile:Lcom/mediatek/lbs/em/AgpsProfile;
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrValue:Ljava/lang/String;
    .restart local v3       #count:I
    .restart local v5       #eventType:I
    .restart local v6       #i:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #name:Ljava/lang/String;
    :cond_a
    :try_start_f
    const-string v11, "code"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 116
    invoke-virtual {v0, v2}, Lcom/mediatek/lbs/em/AgpsProfile;->setCode(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_3

    .line 160
    .end local v0           #agpsProfile:Lcom/mediatek/lbs/em/AgpsProfile;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v3           #count:I
    .end local v5           #eventType:I
    .end local v6           #i:I
    .end local v9           #name:Ljava/lang/String;
    :catchall_0
    move-exception v11

    move-object v7, v8

    .line 161
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    :goto_8
    if-eqz v7, :cond_b

    .line 162
    :try_start_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 165
    :cond_b
    :goto_9
    throw v11

    .line 117
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v0       #agpsProfile:Lcom/mediatek/lbs/em/AgpsProfile;
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrValue:Ljava/lang/String;
    .restart local v3       #count:I
    .restart local v5       #eventType:I
    .restart local v6       #i:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #name:Ljava/lang/String;
    :cond_c
    :try_start_11
    const-string v11, "backup_slp_name_var"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 118
    invoke-virtual {v0, v2}, Lcom/mediatek/lbs/em/AgpsProfile;->setBackupSlp(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 121
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    :cond_d
    iget-object v11, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 122
    .end local v0           #agpsProfile:Lcom/mediatek/lbs/em/AgpsProfile;
    .end local v6           #i:I
    :cond_e
    const-string v11, "agps_conf_para"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 123
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_a
    if-ge v6, v3, :cond_1

    .line 124
    invoke-interface {v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1       #attrName:Ljava/lang/String;
    invoke-interface {v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    .restart local v2       #attrValue:Ljava/lang/String;
    const-string v11, "disable_after_reboot"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 128
    const-string v11, "yes"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    move v11, v12

    :goto_b
    iput-boolean v11, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mDisableAfterReboot:Z

    .line 123
    :cond_f
    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_10
    move v11, v13

    .line 128
    goto :goto_b

    .line 129
    :cond_11
    const-string v11, "ni_request"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 130
    const-string v11, "yes"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    move v11, v12

    :goto_d
    iput-boolean v11, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mNiRequest:Z

    goto :goto_c

    :cond_12
    move v11, v13

    goto :goto_d

    .line 131
    :cond_13
    const-string v11, "agps_enable"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 132
    const-string v11, "yes"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    move v11, v12

    :goto_e
    iput-boolean v11, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mAgpsEnable:Z

    goto :goto_c

    :cond_14
    move v11, v13

    goto :goto_e

    .line 133
    :cond_15
    const-string v11, "log_file_max_num"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mLogFileMaxNum:I

    goto :goto_c

    .line 135
    :cond_16
    const-string v11, "cp_gemini_pref_sim"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mCpGeminiPrefSim:I

    goto :goto_c

    .line 137
    :cond_17
    const-string v11, "network_used"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mNetworkUsed:I

    goto :goto_c

    .line 139
    :cond_18
    const-string v11, "default_profile"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 140
    iput-object v2, p0, Lcom/mediatek/lbs/em/AgpsProfileManager;->mDefaultProfileName:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_c

    .line 163
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :catch_8
    move-exception v4

    .line 164
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 166
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    goto/16 :goto_1

    .line 163
    .end local v3           #count:I
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #eventType:I
    .end local v9           #name:Ljava/lang/String;
    :catch_9
    move-exception v4

    .line 164
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 160
    .end local v4           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v11

    goto/16 :goto_8

    .line 156
    :catch_a
    move-exception v4

    goto/16 :goto_7

    .line 153
    :catch_b
    move-exception v4

    goto/16 :goto_6

    .line 150
    :catch_c
    move-exception v4

    goto/16 :goto_5

    .line 147
    :catch_d
    move-exception v4

    goto/16 :goto_4
.end method
