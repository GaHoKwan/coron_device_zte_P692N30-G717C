.class public Lcom/mediatek/omacp/message/OmacpReceiverService;
.super Landroid/app/Service;
.source "OmacpReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/omacp/message/OmacpReceiverService$1;,
        Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;,
        Lcom/mediatek/omacp/message/OmacpReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "Omacp/OmacpReceiverService"


# instance fields
.field private mServiceHandler:Lcom/mediatek/omacp/message/OmacpReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/omacp/message/OmacpReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/mediatek/omacp/message/OmacpReceiverService;->handleOmacpReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method private getApplicationSummary(Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "application"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    .line 338
    .local v0, appId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 339
    .local v1, validAppId:Ljava/lang/String;
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v3, "25"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v3, "110"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v3, "143"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 342
    :cond_0
    const-string v1, "25"

    .line 357
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_1
    return-void

    .line 343
    :cond_2
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v3, "w4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mCm:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 347
    const-string v1, "w4"

    goto :goto_0

    .line 348
    :cond_3
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v3, "ap0005"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mCm:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mRm:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMs:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mPcAddr:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMa:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 353
    :cond_4
    const-string v1, "w4"

    goto :goto_0

    .line 355
    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method private getParser(Landroid/content/Intent;Lcom/mediatek/omacp/parser/OmacpParser;[B)V
    .locals 2
    .parameter "intent"
    .parameter "parser"
    .parameter "intentData"

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, mimeType:Ljava/lang/String;
    const-string v1, "text/vnd.wap.connectivity-xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    invoke-static {}, Lcom/mediatek/omacp/parser/OmacpParser;->getTextParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mediatek/omacp/parser/OmacpParser;->setParser(Ljava/lang/Object;)V

    .line 304
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 305
    invoke-virtual {p2, p3}, Lcom/mediatek/omacp/parser/OmacpParser;->parse([B)V

    .line 307
    :cond_1
    return-void

    .line 301
    :cond_2
    const-string v1, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    invoke-static {}, Lcom/mediatek/omacp/parser/OmacpParser;->getWbxmlParser()Lorg/kxml2/wap/WbxmlParser;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mediatek/omacp/parser/OmacpParser;->setParser(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getSavedSummary(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/NapdefClass;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, apList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass;>;"
    .local p2, napList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/NapdefClass;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v1, buf:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 317
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 318
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass;

    .line 319
    .local v0, application:Lcom/mediatek/omacp/parser/ApplicationClass;
    invoke-direct {p0, v0, v3}, Lcom/mediatek/omacp/message/OmacpReceiverService;->getApplicationSummary(Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/util/ArrayList;)V

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v0           #application:Lcom/mediatek/omacp/parser/ApplicationClass;
    .end local v2           #i:I
    .end local v4           #size:I
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 324
    const-string v5, "apn"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 328
    .restart local v4       #size:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 329
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private handleOmacpReceived(Landroid/content/Intent;I)V
    .locals 11
    .parameter "intent"
    .parameter "error"

    .prologue
    .line 159
    const-string v8, "Omacp/OmacpReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OmacpReceiverService handleOmacpReceived: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v8, "data"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 165
    .local v2, intentData:[B
    const/4 v3, 0x0

    .line 166
    .local v3, isCorrect:Z
    new-instance v4, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;

    const/4 v8, 0x0

    invoke-direct {v4, p0, v8}, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;-><init>(Lcom/mediatek/omacp/message/OmacpReceiverService;Lcom/mediatek/omacp/message/OmacpReceiverService$1;)V

    .line 167
    .local v4, pinData:Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;
    invoke-direct {p0, p1, v2, v4}, Lcom/mediatek/omacp/message/OmacpReceiverService;->handlePinVerify(Landroid/content/Intent;[BLcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;)Z

    move-result v3

    .line 168
    if-nez v3, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v7, value:Landroid/content/ContentValues;
    :try_start_0
    invoke-direct {p0, p1, v2, v7, v4}, Lcom/mediatek/omacp/message/OmacpReceiverService;->parseOmacpMessage(Landroid/content/Intent;[BLandroid/content/ContentValues;Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;)V

    .line 176
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/mediatek/omacp/provider/OmacpProviderDatabase;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 177
    .local v6, uri:Landroid/net/Uri;
    if-eqz v6, :cond_0

    .line 178
    const/4 v8, 0x1

    invoke-static {p0, v8}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 181
    const-string v8, "omacp"

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 182
    .local v5, sh:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 183
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "configuration_msg_exist"

    const/4 v9, 0x1

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #sh:Landroid/content/SharedPreferences;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "Omacp/OmacpReceiverService"

    const-string v9, "intentData START_TAG type is null."

    invoke-static {v8, v9}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePinVerify(Landroid/content/Intent;[BLcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;)Z
    .locals 11
    .parameter "intent"
    .parameter "intentData"
    .parameter "pinData"

    .prologue
    const/4 v8, 0x0

    .line 199
    const-string v7, "contentTypeParameters"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 201
    .local v0, contentTypeParamaters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 202
    .local v5, sec:Ljava/lang/String;
    const/4 v4, 0x0

    .line 203
    .local v4, mac:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 204
    const-string v7, "Omacp/OmacpReceiverService"

    const-string v9, "OmacpReceiverService contentTypeParamaters is null."

    invoke-static {v7, v9}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    if-eqz v5, :cond_2

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 219
    const-string v7, "simId"

    const/4 v9, -0x1

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 220
    .local v6, simId:I
    invoke-static {v6}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->getSimImsi(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, imsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->imsiToKey(Ljava/lang/String;)[B

    move-result-object v3

    .line 222
    .local v3, key:[B
    if-nez v3, :cond_1

    move v7, v8

    .line 233
    .end local v2           #imsi:Ljava/lang/String;
    .end local v3           #key:[B
    .end local v6           #simId:I
    :goto_1
    return v7

    .line 206
    :cond_0
    const-string v7, "MAC"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    #setter for: Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->mMac:Ljava/lang/String;
    invoke-static {p3, v7}, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->access$202(Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    const-string v7, "SEC"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    #setter for: Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->mSec:Ljava/lang/String;
    invoke-static {p3, v7}, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->access$302(Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    #getter for: Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->mSec:Ljava/lang/String;
    invoke-static {p3}, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->access$300(Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;)Ljava/lang/String;

    move-result-object v5

    .line 209
    #getter for: Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->mMac:Ljava/lang/String;
    invoke-static {p3}, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->access$200(Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;)Ljava/lang/String;

    move-result-object v4

    .line 211
    const-string v7, "Omacp/OmacpReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OmacpReceiverService handleOmacpReceived: MAC is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "SEC is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .restart local v2       #imsi:Ljava/lang/String;
    .restart local v3       #key:[B
    .restart local v6       #simId:I
    :cond_1
    invoke-static {v3, v8, p2, v4}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->verifyPin([BI[BLjava/lang/String;)Z

    move-result v1

    .line 227
    .local v1, correct:Z
    if-nez v1, :cond_2

    .line 228
    const-string v7, "Omacp/OmacpReceiverService"

    const-string v9, "OmacpReceiverService Network PIN IMSI verify failed. Will ignore this message."

    invoke-static {v7, v9}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 230
    goto :goto_1

    .line 233
    .end local v1           #correct:Z
    .end local v2           #imsi:Ljava/lang/String;
    .end local v3           #key:[B
    .end local v6           #simId:I
    :cond_2
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private parseOmacpMessage(Landroid/content/Intent;[BLandroid/content/ContentValues;Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;)V
    .locals 20
    .parameter "intent"
    .parameter "intentData"
    .parameter "value"
    .parameter "pinData"

    .prologue
    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, apList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass;>;"
    const/4 v8, 0x0

    .line 239
    .local v8, napList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/NapdefClass;>;"
    const/4 v10, 0x0

    .line 240
    .local v10, pxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ProxyClass;>;"
    const/4 v5, 0x0

    .line 242
    .local v5, contextName:Ljava/lang/String;
    new-instance v9, Lcom/mediatek/omacp/parser/OmacpParser;

    invoke-direct {v9}, Lcom/mediatek/omacp/parser/OmacpParser;-><init>()V

    .line 243
    .local v9, parser:Lcom/mediatek/omacp/parser/OmacpParser;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v9, v2}, Lcom/mediatek/omacp/message/OmacpReceiverService;->getParser(Landroid/content/Intent;Lcom/mediatek/omacp/parser/OmacpParser;[B)V

    .line 244
    invoke-virtual {v9}, Lcom/mediatek/omacp/parser/OmacpParser;->getApSectionList()Ljava/util/ArrayList;

    move-result-object v3

    .line 245
    invoke-virtual {v9}, Lcom/mediatek/omacp/parser/OmacpParser;->getNapList()Ljava/util/ArrayList;

    move-result-object v8

    .line 246
    invoke-virtual {v9}, Lcom/mediatek/omacp/parser/OmacpParser;->getPxList()Ljava/util/ArrayList;

    move-result-object v10

    .line 247
    invoke-virtual {v9}, Lcom/mediatek/omacp/parser/OmacpParser;->getContextName()Ljava/lang/String;

    move-result-object v5

    .line 250
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3

    :cond_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3

    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 252
    :cond_2
    const-string v16, "Omacp/OmacpReceiverService"

    const-string v17, "OmacpReceiverService handleOmacpReceived parser error."

    invoke-static/range {v16 .. v17}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 256
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v6, v0

    .line 257
    .local v6, currentTime:I
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/mediatek/omacp/message/OmacpReceiverService;->getSavedSummary(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    .line 259
    .local v15, summary:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 260
    .local v4, bundle:Landroid/os/Bundle;
    const-string v16, "address"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 261
    .local v12, sender:Ljava/lang/String;
    const-string v16, "service_center"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 263
    .local v13, serviceCenter:Ljava/lang/String;
    const-string v16, "simId"

    const/16 v17, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 265
    .local v14, simId:I
    const-string v16, "Omacp/OmacpReceiverService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "OmacpReceiverService handleOmacpReceived from : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "service center is : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "simId is : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    if-eqz v12, :cond_4

    if-nez v13, :cond_5

    .line 270
    :cond_4
    const-string v16, "Omacp/OmacpReceiverService"

    const-string v17, "OmacpReceiverService handleOmacpReceived: sender or service center is null!"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_5
    const-string v16, "sim_id"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string v16, "sender"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v16, "service_center"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v16, "seen"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    const-string v16, "read"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v16, "date"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string v16, "installed"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    #getter for: Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->mSec:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->access$300(Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;)Ljava/lang/String;

    move-result-object v11

    .line 282
    .local v11, sec:Ljava/lang/String;
    #getter for: Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->mMac:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;->access$200(Lcom/mediatek/omacp/message/OmacpReceiverService$NetWorkPinData;)Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, mac:Ljava/lang/String;
    if-eqz v11, :cond_6

    if-eqz v7, :cond_6

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_6

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 284
    :cond_6
    const-string v16, "pin_unlock"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    :goto_1
    const-string v16, "sec"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v16, "mac"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v16, "title"

    const v17, 0x7f050001

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v16, "summary"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v16, "body"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 293
    const-string v16, "context"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v16, "mime_type"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :cond_7
    const-string v16, "pin_unlock"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 90
    const-string v1, "Omacp/OmacpReceiverService"

    const-string v2, "OmacpReceiverService onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Omacp"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 97
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/omacp/message/OmacpReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 100
    new-instance v1, Lcom/mediatek/omacp/message/OmacpReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/omacp/message/OmacpReceiverService$ServiceHandler;-><init>(Lcom/mediatek/omacp/message/OmacpReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/omacp/message/OmacpReceiverService;->mServiceHandler:Lcom/mediatek/omacp/message/OmacpReceiverService$ServiceHandler;

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "Omacp/OmacpReceiverService"

    const-string v1, "OmacpReceiverService onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 123
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 106
    const-string v1, "Omacp/OmacpReceiverService"

    const-string v2, "OmacpReceiverService onStartCommand"

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpReceiverService;->mServiceHandler:Lcom/mediatek/omacp/message/OmacpReceiverService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 110
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 111
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpReceiverService;->mServiceHandler:Lcom/mediatek/omacp/message/OmacpReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    const/4 v1, 0x2

    return v1
.end method
